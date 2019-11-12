# Scalable image processing techniques for quantitative analysis of volumetric biological images from light-sheet microscopy

\slshape

**Justin Swaney**\*, Lee Kamentsky\*, Nicholas Evans, Katherine Xie, Young-Gyun
Park, Gabrielle Drummond, Dae Hee Yun, Kwanghun Chung [^1]

[^1]: \* indicates co-first authorship.

\upshape

\footnotesize
*Reproduced from DOI: https://doi.org/10.1101/576595*
\normalsize

## Abstract

Here we describe an image processing pipeline for quantitative analysis of
terabyte-scale volumetric images of SHIELD-processed mouse brains imaged with
light-sheet microscopy. The pipeline utilizes open-source packages for
destriping, stitching, and atlas alignment that are optimized for parallel
processing. The destriping step removes stripe artifacts, corrects uneven
illumination, and offers over 100x speed improvements compared to previously
reported algorithms. The stitching module builds upon Terastitcher to create a
single volumetric image quickly from individual image stacks with parallel
processing enabled by default. The atlas alignment module provides an
interactive web-based interface that automatically calculates an initial
alignment to a reference image which can be manually refined. The atlas
alignment module also provides summary statistics of fluorescence for each brain
region as well as region segmentations for visualization. The expected runtime
of our pipeline on a whole mouse brain hemisphere is 1-2 d depending on the
available computational resources and the dataset size.

## Introduction

Light-sheet fluorescence microscopy (LSFM) is an optical sectioning technique
that provides high-speed acquisition of high resolution images. Affordable
open-access systems have promoted adoption of LSFM [@Pitrone2013]. As a result,
LSFM has become commonplace in the study of complex biological systems
[@Tomer2012; @Stefaniuk2016; @Murakami2018; @Power2017]. However, the
high-throughput acquisition offered by LSFM can quickly generate terabytes of
image data, posing challenges in data storage, processing, and visualization.
These challenges must be addressed in order to perform the quantitative analyses
needed to answer the complex biological question at hand.

SHIELD is a tissue transformation technique that preserves endogenous
biomolecules for imaging within intact biological systems [@Park2018]. SHIELD
retains fluorescent protein signals through the clearing process and is
compatible with stochastic electrotransport staining, allowing visualization and
quantification of fluorescence signals throughout the entire brain [@Kim2015].
When SHIELD-processed tissues are imaged using LSFM, entire organs such as the
mouse brain can be imaged at single-cell resolution in just 2 hours, offering
more data than was previously available to answer new biological questions. 

Here we present detailed protocols for quantifying fluorescence signals in each
brain region of SHIELD-processed mouse brain LSFM datasets. The pipeline is
composed of modules for image destriping, stitching, and atlas alignment. Each
module can either be used independently or in combination to perform
region-based statistical analyses of fluorescence within intact mouse
brainsamples. The pipeline and all its dependencies have been packaged into a
single Docker container, allowing for simple installation and cross-platform
use. The ease of deployment offered by Docker makes our image processing
pipeline more accessible to researchers without much programming experience. We
also provide a dataset of a whole mouse brain hemisphere for users to test our
pipeline.

### Development of the protocol

In order to analyze large-scale volumetric images acquired using LSFM, research
labs typically create their own image processing pipelines [@Amat2015;
@Stegmaier2016; @Vogelstein2018]. These image processing pipelines are designed
to solve specific problems in applying LSFM to the study of complex biological
systems. Real-time cell tracking systems  have been reported to study the
dynamics of embryogenesis in *D. melanogaster*. The cell tracking pipeline
relies on optimized CUDA programming to  achieve real-time performance. Several
computational pipelines geared toward processing time-lapse images of *D.
melanogaster* assume that each time point  image is smaller than the amount of
available memory. In contrast, LSFM of whole mammalian organs often generates
individual volumetric images that are larger than the amount of available
memory.

Recently, LSFM images of a whole mouse brain have been used to create a
single-cell mouse brain atlas (Murakami et al. 2018). The pipeline consisted of
a heterogeneous mix of  MATLAB, Python, and C++ software as well as expensive
computer hardware, including a dedicated image processing server equipped with
four NVIDIA graphics processing units (GPU). In order to handle individual
volumetric images that are larger than the amount of available memory, images
were processed slice-by-slice for cell detection and rescaled to a manageable
size for atlas alignment. Although computationally impressive, such tools often
require a  great deal of programming expertise or access to proprietary
software. As a result, the current large-scale image processing pipelines may be
inaccessible to non-experts, and there is a need for large-scale image
processing tools for researchers focused on biological questions rather than
computational challenges.

The protocols presented here are designed to be easy to setup and applicable to
users without much experience in setting up complex development environments.
Since some users may only want to use part of our pipeline, the protocols are
partitioned into three computational modules: first, our image destriping for
removing streaks and performing flat-field correction in raw LSFM images;
second, stitching for creating a single 3D image from the individual 2D images;
and third, semi-automatic atlas alignment for segmenting brain regions and
quantifying fluorescence (Fig. \ref{NP-1}). Our protocols have been tested on
images of SHIELD-processed mouse brain hemispheres acquired with an
axially-swept light-sheet microscope.

![Overall image processing pipeline for whole brain analysis. Raw images from LSFM of a SHIELD-processed mouse hemisphere are destriped and corrected for uneven illumination. Destriped images are then stitched into a multichannel volumetric image, which is resampled to match a reference atlas. Point correspondences from an automatic alignment procedure are manually refined to obtain a region segmentation for the full-resolution, stitched image. The region segmentation is then used to quantify mean fluorescence in each brain region. \label{NP-1}](source/figures/Protocol/figure1.jpg){ width=100% }

#### Development of the destriping module

Stripe artifacts are commonplace in images acquired with LSFM due to
irregularities in the refractive index (RI) of the sample [@Salili2018]. This RI
mismatch can be compensated for using an immersion medium that has a similar RI
to that of the sample [@Murray2015]. However, the material properties of
biological tissues, including the RI, are generally not uniform throughout,
making some degree of RI mismatch inevitable. RI mismatch usually results in
uneven illumination patterns due to optical aberrations that disrupt the
incident light.

Current strategies for image destriping are either based on optical filtering or
digital filtering [@Fehrenbach2012; @Munch2009; @Liang2016]. Optical filtering
strategies attempt to compensate for RI mismatch during imaging, effectively
removing the stripe artifacts from the source. However, these methods may
disrupt the axial resolution of the LSFM system in the process and may not be
applicable to large biological samples. In contrast, digital filtering
strategies attempt to remove the stripe artifacts after acquisition by
exploiting the noise characteristics induced by the optical aberrations. Since
digital destriping methods are implemented as image filters, they can be applied
more generally to any images with stripe artifacts. 

Previous digital destriping methods have included hybrid wavelet-FFT filters,
variational removal of stationary noise (VSNR), and multidirectional filters
using the contourlet transform (MDSR). Although VSNR and MDSR have shown
superior destriping performance, they are prohibitively slow for applying to
whole-brain datasets. The hybrid wavelet-FFT filter is the fastest destriping
method of these, but its implementation requires a MATLAB license to use and is
single-threaded.

In order to provide a fast, open-source destriping solution, we implemented a
new digital destriping tool called pystripe. Pystripe is a Python
implementation of the previously reported hybrid wavelet-FFT destriping method
with parallel processing support and other improvements. Pystripe uses
open-source tools instead of proprietary software such as MATLAB. As in the
hybrid wavelet-FFT approach, the amount of filtering in pystripe can be tuned
using a bandwidth parameter. Pystripe also adds support for a dual-band
filtering mode where the background and foreground of the images can be filtered
with separate bandwidths. 

#### Development of the stitching module 

Imaging large samples with LSFM involves acquiring partially overlapping image
stacks which can be stitched together into a single image stack. Several
open-source stitching packages are available [@Schindelin2012; @Bria2012].
Terastitcher has been widely adopted for stitching large volumetric images
acquired with LSFM. However, the Terastitcher merging step executes within a
single thread by default, resulting in longer execution times than necessary. It
should be noted that the Terastitcher team provides a parallelized version of
Terastitcher based on message passing interface (MPI) upon request, but we found
implementing our own merging step based on the multiprocessing module in Python
to be more straightforward than managing MPI.

To address these shortcomings, we created the TSV (Terastitcher Volume) module,
which implements the Terastitcher merging step in Python with support for
lossless TIFF compression and parallel processing. TSV uses the stack
displacements computed from Terastitcher to create a memory-mapped array
representing the entire image volume. Multiple workers use this memory-mapped
array to convert individual images into a single stack, providing faster overall
execution. Each worker merges images together and then saves the result using
lossless TIFF compression, resulting in lower overall dataset sizes. 

#### Development of the atlas alignment module

In order to segment whole-brain LSFM images into different brain regions, the
stitched dataset must be registered to a reference atlas, such as the Allen
Mouse Brain Atlas (ABA) [@Lein2007]. The ABA consists of an averaged anatomical reference
image of autofluorescence and the corresponding region segmentation image. The
ABA also contains tools for registering 3D reconstructions from histological
sections to the atlas. However, research labs have resorted to custom atlas
alignment methods for LFSM images of intact brain samples (Murakami et al.
2018). 

Elastix is an open-source medical image registration library that is widely used
for non-rigid atlas alignment [@Klein2010]. Elastix performs non-rigid atlas
alignment by maximizing the mutual information between source and reference
images. Elastix was found to have the highest mutual-information benchmark
scores in image registration of cleared brain samples among five
freely-available software packages [@Nazib2018]. The global optimization of
mutual information is difficult to scale to whole-brain LSFM datasets since the
entire dataset cannot be stored in memory. Following previous work on atlas
alignment, we address this issue by rescaling the source image to be a similar
size compared to the reference atlas, which is a more manageable size. We use
the alignment computed from Elastix to generate a set of approximate point
correspondences which can manually refined.

To visualize the atlas alignment and edit the approximate point correspondences,
we created an interactive web-based registration tool called nuggt (NeUroGlancer
Ground Truth). Nuggt is built on an open-source visualization package called
Neuroglancer. Nuggt does not modify the underlying Neuroglancer code but rather
wraps it into a convenient package for interactive LSFM visualization and atlas
alignment. Nuggt displays the source and reference images side-by-side along
with the point correspondences overlaid on each image. Using nuggt, the point
correspondences can be edited and adjusted to improve the atlas alignment. The
source image can also be warped while editing the point correspondences,
providing rapid visual feedback of the atlas alignment accuracy.

#### Development of the Docker image

One of the main challenges in adopting a new computational pipeline is obtaining
the dependencies and recreating the runtime environment that was intended by the
developers. In order to simplify the installation of our pipeline, we packaged
our pipeline and all of its dependencies into a single Docker container by
creating a Dockerfile describing our runtime environment. Docker provides a
consistent, light-weight virtual Linux environment on all major operating
systems, and our container has been successfully tested on Windows, Mac, and
Linux. Docker can be installed from the Docker website, and our container can be
downloaded from Docker Hub. By containerizing our pipeline and using web-based
visualization, our modules can either be run locally or on dedicated image
processing servers which can be accessed from other clients.

### Applications of the method

The overall image processing pipeline described in this protocol is designed to
calculate fluorescence summary statistics from whole-mouse brain images acquired
with LSFM on a per-region basis. Our pipeline has been used to quantify mRuby2
and EGFP fluorescence of virally labeled neurons and presynaptic terminals in
SHIELD-processed mouse brain hemispheres 6. Thus, the overall pipeline may be
applied in systems neuroscience to quantify fluorescent reporters in cleared
samples from mouse models. However, the individual modules that comprise the
overall pipeline can also be used independently.

Pystripe can be applied to any images corrupted with horizontal or vertical
stripe artifacts. We restricted pystripe to filtering horizontal or vertical
stripes because the illumination beam path in most LSFM systems is aligned with
the camera detector. Pystripe can, therefore, also be used with multi-view LSFM
systems that rotate the sample rather than change the orientation of the
illumination beam path [@Preibisch2014]. Pystripe also includes the ability to
provide a reference flat-field image for illumination correction of vignetting
and other stationary artifacts.

TSV can be used to merge an array of partially overlapping image stacks saved in
Terastitcher hierarchal format into a single image stack. The memory-mapped
array used for stitching is also useful for retrieving sub-volumes of image
data. TSV also includes optional utilities for partitioning the stitched image
into smaller, uniformly shaped chunks for custom parallel processing. The
stitched images can be stored in Neuroglancer precomputed format and served via
HTTP, allowing for efficient visualization of whole-brain LSFM datasets at full
resolution either locally or over the web.

Nuggt has been used to register SHIELD-processed mouse brain hemisphere datasets
to the ABA. Our alignment protocol can be used to register a pair of 3D volumes
with mutual information between them and a gradient of mutual information in the
initial overlap that can be followed to modify the alignment. In our experience,
images that have 90% overlap and rotations of a few degrees can be aligned using
this method. The automatic alignment can be refined by adding  manually-placed
correspondences. The atlas alignment module also provides utilities for
calculating image statistics for each brain region given the aligned atlas
segmentation.

### Comparison with other methods

Many standard solutions exist for similar tasks addressed in our image
processing pipeline. In this section, we compare the methods used in our
protocol to existing methods in the context of whole brain LSFM image analysis.

#### Destriping

The previously reported digital destriping algorithm MDSR has achieved state of
the art destriping performance on LSFM images. MDSR relies on the contourlet
transform to perform energy compaction of striping artifacts in arbitrary
orientations, whereas pystripe uses the discrete wavelet transform to remove
either horizontal or vertical striping artifacts.

![Destriping of light-sheet microscopy images using pystripe. (a) Comparison of destriping results from MDSR and pystripe on LSFM images of a SHIELD-processed mouse hemisphere stained for Neuropeptide Y (NPY). Scale bars, 1 mm (white) and 200 μm (black). (b) Average single-core destriping speed for MDSR and pystripe on 2048 x 2048 images (n = 10, error bars indicate standard deviation). (c) Scaling of destriping speed using pystripe with parallel processing on 2048 x 2048 images. \label{NP-2}](source/figures/Protocol/figure2.jpg){ width=80% }

When comparing the resulting images from MDSR and pystripe, similar filtering
performances are observed from both methods on our test images (Fig.
\ref{NP-2}a). This suggests that the contourlet transform does not drastically
improve energy compaction of the stripe artifacts compared to the discrete
wavelet transform when the stripes are oriented horizontally. When comparing the
average execution speed for destriping using MDSR and pystripe on a single core,
MDSR takes over 30 min per frame, while pystripe takes only 5 seconds (Fig.
\ref{NP-2}b). Using multiple cores, the destriping frame rate for pystripe
increases linearly with the number of cores, reaching 8 frames per second with
48 cores (Fig. \ref{NP-2}c, Supplementary Video 1).

Pystripe also allows the user to provide an optional reference image for
flat-field correction. Ideally, the reference flat would be calculated
retroactively from the imaging data, but in practice a single flat for each
channel of a particular imaging system still provides significant improvement.
The example  dataset includes a reference flat for illumination correction
during the destriping step. By performing the illumination correction in
pystripe, reading and writing the whole dataset multiple times can be avoided.

![Stitching and illumination correction of light-sheet microscopy images using TSV. (a) Comparison of stitching results with and without destriping and illumination correction (IC) performed with pystripe on LSFM images of a SHIELD-processed mouse hemisphere. Scale bar, 2 mm. (b) Comparison of a region of interest with and without IC. Without IC, both uneven illumination (cyan arrow) and stripe artifacts (white arrow) corrupt the images. (c) Scaling of stitching speed using TSV with parallel processing on 2048 x 2048 images. \label{NP-3}](source/figures/Protocol/figure3.jpg){ width=85% }

#### Stitching

Building on Terastitcher, TSV allows fast merging of stacks saved in
Terastitcher hierarchal format. TSV obtains similar stitching quality as
Terastitcher since it uses the same stack displacements and blending functions.
Using TSV, a whole mouse hemisphere dataset was stitched with and without
illumination correction and destriping using pystripe (Fig. \ref{NP-3}a).
Moderate vignetting effects were visible in the stitched original images at the
intersections between adjacent stacks. These tiling artifacts were effectively
reduced using flat-field correction in pystripe. Together, pystripe and TSV
generate volumetric  images that are ready for quantification by removing shadow
and tiling artifacts before stitching (Fig. \ref{NP-3}b, Supplementary Video
2). When comparing the  stitching speed of TSV using multiple cores, the
stitching frame rate increases linearly, reaching 2.6 frames per second with 48
cores (Fig. \ref{NP-3}c).

![Atlas alignment and region-based fluorescence quantification using nuggt. (a) Comparison of atlas alignment of a syto 16 LSFM image to the reference image in the ABA before alignment, after automatic alignment, and after manual refinement. Scale bar, 2 mm. (b) Overlay of NPY and SST in the whole hemisphere example dataset (c) Mean fluorescence for the top 10 regions for both NPY and SST calculated after manual refinement. All other regions from the ABA are omitted for clarity. \label{NP-4}](source/figures/Protocol/figure4.jpg){ width=100% }

#### Atlas Alignment

Our hybrid automated atlas alignment method with manual refinement differs from
wholly automated methods in that the alignment can be improved to the desired
degree of accuracy via addition and modification of correspondences between the
two volumes to be aligned (Fig. \ref{NP-4}a). Tools for manual refinement are  generally
not used in combination with Elastix because integrating the transformations
across multiple registration tools can be challenging. To the best of our
knowledge, there are no web-based tools for interactive atlas alignment
currently available.

After aligning a source autofluorescence or nuclear stain image to the reference
image, other channels can be aligned to the atlas using the same calculated
alignment. For example, neuropeptide Y (NPY) and somatostatin (SST) expression
are included with syto 16 in separate channels of the provided example data
(Fig. \ref{NP-4}b). Using the alignment calculated by registering the syto 16
channel and the reference from the ABA, the mean fluorescence intensity of NPY
and SST in each brain region can be calculated (Fig. \ref{NP-4}c). 

### Experimental design

All software modules are available from Github at

> <http://www.github.com/chunglabmit/shield-2018>

as well as from Docker hub at

> <https://hub.docker.com/r/chunglabmit/shield-2018>

We also provide example LSFM images of a SHIELD-processed mouse hemisphere
dataset, which is available from

> <http://leviathan-chunglab.mit.edu/nature-protocols-2019>

In order to adapt our image processing pipeline to other experimental
situations, users should first complete our protocol using theprovided example
dataset. This dataset includes raw LSFM images as well as our intermediate
results for users to compare and checkpoint their results throughout the
pipeline. We also include a downsampled version of the full example dataset for
users that would like to try our protocol on more modest computational hardware.

Young adult (2–4 months; median age 3 months) C57BL/6 mice were housed in a 12 h
light/dark cycle with unrestricted access to food and water. To generate the
example dataset, a single mouse brain was SHIELD-processed and stained with syto
16 and antibodies targeting NPY and SST using stochastic electrotransport. The
mouse brain sample was cut along the mid-sagittal plane and includes the
olfactory bulb and the cerebellum. The stained hemisphere was then incubated in
a RI-matching solution and imaged using a custom axially-swept LSFM system
equipped with a 3.6x/0.2 objective (Special Optics). The resulting voxel width
and depth are 1.8 μm and 2.0 μm, respectively. Although only one animal was
involved in preparing the example dataset, our image processing protocol has
been tested on over 15 intact mouse brain hemispheres from separate animals. All
experimental protocols were approved by the MIT Institutional Animal Care and
Use Committee and the Division of Comparative Medicine and were in accordance
with guidelines from the National Institute of Health. All experiments using
mice were conducted in strict adherence to the ethical regulations of MIT
Institutional Animal Care and Use Committee and the Division of Comparative
Medicine.

Our protocols have been developed for images of SHIELD-processed mouse brain
tissues sectioned along the midsagittal plane with or without the olfactory bulb
and cerebellum excised. The images must be acquired in a geometry that allows a
transformation of axes (flipping, transposition) and cropping that bring the
images into rough alignment with the atlas. In our experience, acquisition of
either autofluorescence or a nuclear stain such as syto 16 provides enough
mutual information for alignment with the reference volume for the ABA. Images
were processed using only the techniques described in the protocol, and figures
were prepared using linear lookup tables with adjustment of the minimum and
maximum display range.

### Expertise needed to implement the protocol 

Some minimal computer skills are needed to install Docker and navigate using the
command line. If you are unfamiliar with Docker, important introductory
information about Docker can be found at <https://docs.docker.com/get-started/>.
Our protocol relies on several Docker features for volume sharing and network
access, so a basic understanding of Docker is a prerequisite. Since Docker and
most of our software is used from the command line, a basic understanding of how
to use a terminal on the host operating system is also required. 

### Limitations

Our overall image processing pipeline currently has been tested for analyzing
mouse brain hemisphere datasets using the ABA autofluorescence reference volume.
Therefore, we cannot guarantee that our overall pipeline will work in all cases
for other species and atlases.

As previously mentioned, pystripe cannot remove striping artifacts that are not
horizontally or vertically oriented within raw images. When processing images
with very bright signals, the hybrid wavelet-FFT filter may introduce some
ringing artifacts to the destriped images. The dual-band mode can mitigate these
ringing artifacts, but in some cases, these artifacts may be undesirable. The
user can elect to reduce the filter bandwidth or skip the destriping step in
such cases.

When analyzing mouse brain hemispheres, severe tissue deformation due to
improper sample preparation or handling may result in poor atlas alignment since
the initial non-rigid alignment may not converge to a global optimum in such
cases. Our atlas alignment protocol can be applied to mouse brain hemispheres
with the olfactory bulb and cerebellum excised; however, this excision must be
mirrored in the anatomical reference volume. This involves cropping the
anatomical reference volume to match the source image, which is somewhat ad hoc.
We provide referencevolumes from the ABA for use in our Docker container along
with reference volumes with the olfactory bulb, cerebellum, or both excised. 

Processing whole-brain LSFM datasets is computationally expensive. We provide
minimum system requirements that are recommended for processing our example
mouse hemisphere dataset. However, we also provide a downsampled version of the
original dataset for users without immediate access to computer hardware that
meet the minimum system requirements.

## Materials

### Equipment

#### Example Data

All Example data is available from our laboratory servers[^2]
(<http://leviathan-chunglab.mit.edu/nature-protocols-2019>), including:

- Raw data, comprising the raw LSFM images and a flat reference image from the
  provided mouse brain dataset.
- Destriped data, comprising the destriped LSFM images from the provided
  dataset.
- Stitched data, comprising the stitched destriped LSFM images from the provided
  dataset.
- Alignment data, containing the mean fluorescence in each region and
  intermediate results obtained during atlas alignment.
- Downsampled data, comprising our whole brain raw data downsampled and zipped
  for testing our pipeline on more modest computer hardware.

[^2]: Visit www.chunglab.org and contact the Chung Lab directly in case of a 404 error

#### Computer Equipment

- For  benchmarks,  the  computational  pipeline  was  deployed  on  a
  workstation  (TWS-1686525, Exxact) running Ubuntu 16.04 LTS on a 1 TB
  solid-state drive (Samsung) with two 24-core processors (Intel Xeon Platinum
  8168), 768 GB of ECC memory,  and a single 16 GB NVIDIA GPU (Tesla P100).
- Recommended minimum system requirements for processing the full-resolution
  example LSFM dataset. A computer with enough hard drive space to store the raw
  image data as well as the intermediate processing results is required. Our
  total example data is approximately 3 TB, suggesting that at least 4 TB of
  extra space is required. We recommend the following minimum system
  requirements in this case:
  - 8-core processor
  - 64 GB of memory
  - 256 GB solid-state drive with at least 32 GB available
  - 4 TB HDD available for data storage
- Recommended minimum system requirements for the processing the downsampled
  example LSFM dataset:
  - 2-core processor
  - 16 GB of memory
  - 128 GB solid-state drive with at least 32 GB available
- Software requirements.
  - Docker is recommended to run our software, but expert users can also
    directly install our software using the pip Python package manager from
    GitHub. If using our preconfigured Docker image to run our pipeline, Docker
    must be installed locally. Docker offers a free version of their software
    called Docker Community Edition.
  - We recommend using FIJI for inspecting images throughout our pipeline. FIJI
    can be obtained from <https://fiji.sc/>

### Equipment Setup

#### Docker setup

1. Create a Docker ID to gain access to Docker software and Docker Hub using
   your preferred email address at <https://hub.docker.com/>. You may need to
   verify  your email address.
2. Download Docker Community Edition for your particular operating system at
   <https://www.docker.com/products/docker-engine>. 
3. Follow the installation instructions and the provided commands to verify that
   Docker has been installed correctly.
4. With the Docker deamon running, open a terminal and run the following command
    to install our preconfigured Docker image:

    `docker pull chunglabmit/shield-2018`

    This  command  will  download  our  software
    including  all  of  the  dependencies  as  well  as  commonly used resources
    needed for atlas alignment with the ABA. Note that we refer to the computer
    that is running Docker as the “host” and an instance of our Docker image as
    the “container”.

#### Downloading full resolution example data

This step requires 4 TB of available hard drive space if the whole dataset and
intermediate results are downloaded. The raw data is approximately for each
channel is approximately 560 GB. Proceed to *downloading downsampled example data* 
section if your computer does not have this much available space.

1. Create a folder named “data” to contain all of the example data on your
   machine and note its full path.
2. Start the Docker container with the data folder mounted by entering
   the following command into the command line: 
   
   `docker run -it -v  path_to_data:/data chunglabmit/shield-2018`
   
   where “path_to_data” should be replaced with the full path to the data folder
   on the host. The command prompt should indicate that you are now the root
   user inside a running Docker container (as opposed to your usual username on
   the host). We refer to the command prompt inside a running container as the
   “Docker terminal window”.
3. Download the example data needed for a particular stage in the protocol by
   entering the following command(s) into the Docker terminal window. The data
   should begin to appear in the data folder that was created. Note that each
   download may take several hours.
   - Raw data (needed for destriping)
   
   \small
   ```
   wget -P /data -r --no-parent –Nh --cut-dirs 1 -R “index.html*” \
   http://leviathan-chunglab.mit.edu/nature-protocols-2019/raw_data/
   ```
   \normalsize
   
   - Destriped data (needed for stitching)
   
   \small
   ```
   wget -P /data -r --no-parent -nH --cut-dirs 1 -R “index.html*” \
   http://leviathan-chunglab.mit.edu/nature-protocols-2019/destriped_data/
   ```
   \normalsize
   
   - Stitched data (needed for atlas alignment)
   
   \small
   ```
   wget -P /data -r --no-parent -nH --cut-dirs 1 -R “index.html*” \
   http://leviathan-chunglab.mit.edu/nature-protocols-2019/stitched_data/
   ```
   \normalsize
   
   - Alignment data (for comparison of results)
   
   \small
   ```
   wget -P /data -r --no-parent -nH --cut-dirs 1 -R “index.html*” \
   http://leviathan-chunglab.mit.edu/nature-protocols-2019/atlas/
   ```
   \normalsize


#### Downloading downsampled example data

1. Navigate to <http://leviathan-chunglab.mit.edu/nature-protocols-2019/> in
   your browser. 
2. Click the `downsampled_data.zip` link and choose to save the file instead of
   opening it. 
3. Unzip the `downsampled_data.zip` file to a new folder called “data” and make
   note of the full path of this folder on the host.

## Procedure

*See Appendix for step-by-step protocol*

## Anticipated Results

Upon successful completion of our image processing pipeline, our protocol will
yield corrected and stitched multichannel volumetric images of a whole mouse
brain hemisphere as well as an alignment with a provided atlas for brain region
segmentation. The atlas alignment is used to create spreadsheets in CSV format
containing the volume, total fluorescence, and mean fluorescence of each brain
region and each channel. These results can be used to create visualizations
summarizing the fluorescence in each brain region (Fig. 4c). The reported
regions volumes are in voxel units, so the physical volumes will depend on the
voxel dimensions used during imaging. 

## Acknowledgements

We thank the entire Chung laboratory for support and discussions. K.C. was
supported by the Burroughs Wellcome Fund Career Awards at the Scientific
Interface, Searle Scholars Program, Packard award in Science and Engineering,
NARSAD Young Investigator Award, and the McKight Foundation Technology Award.
This work was supported by the JPB Foundation (PIIF and PNDRF), the NCSOFT
Cultural Foundation, the Institute for Basic Science IBS-R026-D1, and theNIH
(1-DP2-ES027992, U01MH117072)

## Author Contributions

J.S. worked on pystripe and prepared the main figures. L.K. worked on TSV and
nuggt. K.X, Y.G.P. and D.H.Y prepared the example brain sample, and N.E.
acquired the example data. G.D., K.X. and N.E. tested the protocol and provided
feedback. J.S. and L.K. wrote the paper together, and all authors reviewed the
manuscript. K.C. supervised the project.

## Competing Interests

The authors declare no competing interests.

\newpage

## References
