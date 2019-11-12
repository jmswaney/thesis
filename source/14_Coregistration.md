# Nuclei-based 3D coregistration for multiplexed whole-brain imaging at single-cell resolution

\slshape

**Justin Swaney**, Dae Hee Yun, Nicholas Evans, Katherine Xie, Lee Kamentsky, Kwanghun Chung

\upshape

## Abstract

Fluorescence imaging is a workhorse technology for several experimental studies
in biology. However, confocal and light-sheet microscopy are limited in the
number of channels that can be imaged simultaneously due to spectral and optical
constraints from conventional fluorophores. To address this issue, we propose a
multiround imaging strategy in which a single tissue sample is stained for
multiple targets in each round. In order to align these multiple rounds of
imaging into single coordinate system, we present an efficient 3D coregistration
algorithm that identifies corresponding nuclei between imaging rounds to achieve
a nonrigid alignment that is accurate at the single-cell level. We demonstrate
our coregristation algorithm on a mouse brain hemisphere and a large block of
marmoset visual cortex. The resulting image alignment contains an average
displacement of 4 µm between corresponding nuclei. Using GPU-accelerated
computation, we demonstrate that warping the entire volumetric images from a
mouse brain hemisphere and marmoset visual cortex is possible within 6 hours on
an NVIDIA P100 GPU. Future work may use this nuclei-based 3D coregistration
algorithm to achieve multiplexed fluorescence microscopy and perform more
exploratory image analysis at the single-cell level.

## Introduction

Fluorescence imaging techniques such as confocal microscopy and light-sheet
fluorescence microscopy (LSFM) are commonly used in neuroscience and biology
[@Power2017]. In combination with immunohistochemistry (IHC), fluorescence
microscopy can provide spatial protein expression information using antibodies
that specifically bind to proteins of interest. In combination with in situ
hybridization, fluorescence microscopy can provide spatial transcription
information using complimentary oligonucleotide probes that bind to RNA
sequences of interest [@Edsgard2018]. Recent advances in clearing and staining
such as SWITCH, MAP, and eFLASH have extended these valuable applications of
fluorescence microscopy to large intact tissues such as the mouse, marmoset, and
human brain [@Murray2015; @Ku2016; @Yun2019].

Although these breakthrough technological advances have scaled up the effective
tissue size that can be studied using conventional antibodies and fluorescence
imaging, they are still inherently limited by the number of target proteins that
can be imaged simultaneously. In contrast, single-cell RNA sequencing techniques
allow for highly multiplexed quantification of transcripts, which is useful in
exploratory analyses and for hypothesis generation [@Hwang2018]. This difference
in the number of target molecules that can be quantified in fluorescence
microscopy and RNA sequencing is not due to a lack of antibodies for protein
targets; many more antibodies are available than can be imaged simultaneously.
Instead, the limiting factor is the number of imaging channels available in the
microscope, which is typically limited to between 3 and 6.

The channel limitation of fluorescence microscopy is intimately linked to the
fluorophores used in IHC. The mostly commonly used fluorophores are Alexa Fluor
dyes, which all have spectral widths of approximately 70 nm as measured by the
full-width at half maximum (FWHM) of the emission spectra
[@Panchuk-Voloshina1999]. Given that the typical range of detectors used in
confocal microscopy is between 400 and 800 nm, only 3 to 6 Alexa Fluor dyes
would be resolvable without specialized spectral overlap compensation. Without
similar breakthroughs in optics or fluorophore chemistry, this limitation is
inevitable for simultaneous multicolor fluorescence imaging.

Another approach to multiplexed fluorescence imaging is to image different
proteins in multiple rounds of staining. Staining different proteins in separate
mouse brains is a common strategy to study population averages given a reference
atlas such as the Allen Brain Atlas [@Lein2007]. In the Allen Brain Atlas,
multiple brains are aligned to a common coordinate system to allow aggregation
of protein expression information across many brain samples for each brain
region. Although powerful for enabling neuroscience research, these atlas-based
approaches do not provide multiplexed protein expression information for a
single brain sample. Extracting expression patterns for more proteins in a
single sample becomes more important when dealing with precious samples from
non-human primates or human clinical samples.

Multiround staining and imaging of a single brain sample has been demonstrated
using tissue clearing techniques for over 20 rounds (Murray et al. 2015).
Multiple staining rounds of a thin-section of human visual cortex was
coregistered using a nonrigid 3D SIFT keypoint matching procedure based on
vasculature staining in each round [@Lowe2004]. However, the 3D SIFT feature
extraction and thin-plate spline (TPS) calculations are not scalable to the
whole-brain scale [@Bookstein1989]. Here, we present an efficient algorithm for
3D nonrigid coregistration of multiround staining at single-cell resolution that
can be applied to whole mouse brains and large marmoset brain samples. Our
algorithm matches nuclei centroids across rounds so that the alignment quality
can be quantified in terms of single-cell correspondences. As a proof of
concept, we apply our algorithm to an intact mouse brain hemisphere as well as a
large section of a marmoset brain.


## Results

### Volumetric image preprocessing and compression

In order to develop an algorithm for single-cell coregistration, we first needed
to acquire two rounds of imaging for a single mouse brain hemisphere. We
SHIELD-processed a mouse brain hemisphere and performed nuclear staining using
Syto16. Then, we imaged the entire hemisphere using LSFM before and after
remounting with manual tissue handling between imaging rounds.

![Volumetric image preprocessing and compression. (A) Schematic illustrating the image preprocessing for our pipeline. Volumetric images are acquired as stacks of raw 2D images each with multiple channels. Each image is first corrected for illumination variations across the field of view using local histogram equalization, and streaks are removed via a hybrid wavelet-FFT filter. The corrected images are broken into small chunks for downstream parallel processing, and a downsampling pyramid allows for efficient visualization over multiple length scales. (B) A representative slice of a whole mouse brain hemisphere stained with syto16 before and after preprocessing. Scale bar, 2 mm (C) The storage requirements for a whole hemisphere dataset with no compression, 2D Zlib, and 3D Zstandard lossless compression. \label{coregistration-1}](source/figures/Coregistration/figure1.jpg){ width=100% }

Multiround imaging of intact mouse brain hemispheres quickly generates terabytes
of data. To allow efficient access to the image data and parallel processing, we
used the Zarr Python package to partition the image data into more manageable
chunks each 64 voxels in width, height, and depth (Figure
\ref{coregistration-1}a). The Zarr package is open-source and provides lossless
compression using the Z-standard compression algorithm. We performed
illumination correction using Pystripe [@Swaney2019], stitching using
Terastitcher and TSV, and contrast-limited adaptive histogram equalization
(CLAHE) before converting to the chunked Zarr format (Figure
\ref{coregistration-1}a,b). Applying the Z-standard compression algorithm on 3D
chunks provided a 2.8x higher compression ratio than the more conventional Z-lib
compression on individual 2D TIFF images (Figure \ref{coregistration-1}c). After
removing the background by thresholding, the uncompressed data from a single
round of imaging that was originally 1.6 TB was effectively reduced to just 120
GB with no loss in image fidelity within the tissue.

### Coarse alignment of intact mouse hemisphere 

Given that the tissue sample may be oriented arbitrarily in each round of
imaging, matching any given nucleus to itself between rounds would require
searching through all nuclei in the hemisphere (approximately 30 million
nuclei). This "needle-in-a-haystack" problem may be sub-modularized if the
approximate locations of the matching nuclei are known *a priori*. If the tissue
sample can be roughly aligned between rounds, then the search for a matching
nucleus can be restricted to a much smaller set of nuclei within a search radius
(typically thousands of cells). 

To perform coarse alignment, we first downsampled the original image data 16x
isotropically. Downsampling the original resolution images makes iterative,
intensity-based image registration techniques computationally feasible. We then
sought to align the overall shape of the sample between rounds rather than match
similar image intensities directly due to differences in illumination and
stitching between rounds. Morphological alignment was performed based on a
binary mask outlining the overall tissue shape (Figure \ref{coregistration-2}
top). Assuming a rigid deformation model between rounds, we attempted to use
L-BFGS to minimize the squared error between the fixed image binary mask and the
moving image binary mask. However, the binary values in the image masks did not
provide a reliable gradient signal for the L-BFGS optimizer, and the coarse
alignment consistently failed in this case.

By performing the euclidean distance transform (EDT) on the binary masks, a more
reliable gradient signal can be provided to the L-BFGS optimizer (Figure
\ref{coregistration-2} middle). By minimizing the square error between the EDT
of the fixed and moving image binary masks, the parameters of a rigid
transformation that roughly align the two rounds can be obtained (Figure
\ref{coregistration-2} bottom). These parameters can be converted to the
original image resolution and then be applied to nuclei centroids in the fixed
image. The result is an approximate alignment between nuclei detections in the
fixed and moving images.

![Coarse registration based on morphological alignment. Coarse registration using a rigid transformation to align the euclidean distance transform (EDT) of brain masks. Performing coarse registration prior to nuclei matching allows for more robust nuclei matching and faster execution times. The EDT provides a gradient signal for intensity-based alignment by minimizing the squared error between the fixed and moving images. \label{coregistration-2}](source/figures/Coregistration/figure2.jpg){ width=50% }


### Matching nuclei based on geometric features

After estimation of the a rigid transformation for coarse alignment, we detected
all nuclei in the mouse brain hemisphere using a blob detection strategy. We
first performed gaussian blurring to remove noise from the nuclear stain images,
and then we detected all local maxima in the smoothed images. This nuclei
detection strategy was applied to both rounds of imaging running in parallel on
each image chunk. After extracting nuclei centroids from each image, the
single-cell coregistration is reduced to a massive point cloud registration
problem. By applying the rigid transformation to the nuclei in the fixed image,
the nuclei can be brought into approximate alignment. 

In order to match approximately aligned nuclei, each nucleus is described by a
translation and rotation invariant feature vector that is constructed using
geometrical hashing of the nuclei point cloud [@Preibisch2010]. Briefly, each
point cloud is represented as a KD-tree and stored in shared memory for access
by multiple CPU workers. Each worker queries the KD-tree for the three nearest
nuclei in the same image and computes the vectors between the query point and
its neighbors (Figure \ref{coregistration-3}a). These vectors are used in a
Gram-Schmidt process to construct an orthonormal basis that is defined based on
the local arrangement of nuclei and is, therefore, invariant to sample rotations
and translations. The coordinates of the three nearest nuclei in this new basis
are computed using QR decomposition. The nonzero entries of the upper triangular
matrix $R$ are flattened into a final feature vector describing each nucleus.

Given these geometrical features, each nucleus is then putatively matched to the
nearest neighbor in feature-space within a small search radius in the
coarsely-aligned point cloud. These putative matches are only considered correct
if the second nearest-neighbor is clearly not a match as judged by the distance
in feature-space (Lowe, D. 2004). After matching nuclei, an affine alignment is
estimated using RANSAC that serves as the baseline transformation for the
non-rigid coregistration (Figure \ref{coregistration-3}b). That is, the overall
deformation model is the sum of an affine transformation and a non-linear TPS
transformation. The TPS transformation is estimated using the remaining
correspondences that are not rejected by RANSAC. Specifically, three separate
TPS interpolators are fit to the x, y, and z displacements of the
affine-transformed correspondences. The average displacement between
correspondences drops dramatically from the affine transformation to the TPS
transformation (Figure \ref{coregistration-3}c). This shows that there is
significant non-linear deformations present between imaging rounds.

![Nuclei matching and thin-plane spline warping. (A) Illustration of the nuclei-based 3D nonrigid registration procedure. Neighboring nuclei centroids are used to construct local nucleus features that are invariant to translation and rotation. Nuclei are matched to their nearest neighbor if the second nearest neighbor is sufficiently far away in feature space. Nuclei coordinates are warped using a thin-plate spline (TPS) interpolator fit to matching nuclei coordinates. (B, C) Distribution of distances and average distances between matching nuclei before and after affine and nonrigid registration. \label{coregistration-3}](source/figures/Coregistration/figure3.jpg){ width=100% }


### Single-cell 3D coregistration of intact mouse brain hemisphere

Since the full TPS transformation is computationally intractable when applied to
the full resolution image data, we instead approximate the TPS transformation by
linear interpolation of a warped grid of control points. The main motivation for
this is that there are readily available linear interpolation functions available
with GPU-acceleration in packages such as Pytorch [@Paszke2017]. By warping
a regular grid of 100 x 100 x 100 control points evenly spaced throughout the
fixed image domain using the full TPS transformation, the TPS transformation can
be approximated by linear interpolation of the result. By transforming the fixed
image domain onto the moving image, each voxel in the fixed image can be filled
in by interpolation of the moving image.

![Demonstration of 3D coregistration of a whole mouse hemisphere at single-cell resolution. Multiple regions are highlighted to show single-cell accuracy of the alignment globally. Regions with densely-packed nuclei such as the olfactory bulb and cerebellum show corresponding nuclei overlapping. Scale bar, 2 mm.  \label{coregistration-4}](source/figures/Coregistration/figure4.jpg){ width=100% }

We successfully implemented this approximate TPS transformation using Pytorch.
The coregistration process takes approximately 6 hours on an NVIDIA Tesla P100
GPU for a whole mouse brain hemisphere (Figure \ref{coregistration-4}). The
resulting alignment shows that corresponding nuclei overlap across the whole
hemisphere, including regions with densely-packed nuclei. From a random sample
of 500 nuclei throughout the brain, our nuclei matching was 97% accurate,
resulting in an average distance of 4 µm between matches after alignment.
Although the images presented in Figure \ref{coregistration-4} do not make it
apparent, we emphasize that this coregistation is performed 3D space.

### Single-cell 3D coregistration of large marmoset brain block

In order to test how robust our coregistration algorithm was against the de-staining and re-staining process as well as in other tissue types, we performed multiround staining and imaging of a large tissue block from the visual cortex of a marmoset. A large block of marmoset brain tissue was SHIELD-processed and stained with Syto16 nuclear dye using eFLASH. After LSFM imaging, the marmoset tissue sample was de-stained using SDS detergent and heat treatment at 56C. The same tissue sample was then re-stained with Syto16 using eFLASH and imaged using LSFM in a second round. 

![Demonstration of 3D coregistration of a large block of marmoset visual cortex at single-cell resolution. After coarse registration based on morphological alignment, nuclei were successfully matched in marmoset visual cortex. \label{coregistration-5}](source/figures/Coregistration/figure5.jpg){ width=100% }

Using a similar strategy to the mouse brain hemisphere for coarse alignment,
nuclei detection and matching, and GPU-accelerated warping, we were able to
coregister the two rounds of staining and imaging of the marmoset brain sample
(Figure \ref{coregistration-5}). Before alignment, the tissue is not aligned
between imaging rounds. However, the Syto16 staining quality appeared similar
between rounds with the exception of some differences in illumination as
mentioned previously. The morpholoical coarse alignment was able to
approximately align the two rounds despite these illumination differences. After
alignment, the quality of alignment across the entire tissue sample is shown by
overlapping staining of corresponding nuclei. This demonstration shows that our
nuclei-based 3D coregistration is quite general, and it is not limited to mouse
brain hemispheres. 

## Discussion

To the best of our knowledge, these results mark the first demonstration of 3D
coregistration of whole-brain scale images at single-cell resolution. Although a
proof-of-concept, our results are promising given the resulting alignment
quality, speed of execution, and general applicability to multiple biological
models such as mouse and marmoset. However, more research is required to show
the limitations in the number of rounds that can be combined beyond just two
rounds of staining and imaging. Furthermore, the actual value of such 3D
coregistration is in aligning other channels than just the nuclear staining
channel. We do not anticipate that aligning other channels using the same
transformation estimated from the nuclear staining channel would be a problem
given the efficiency of our GPU-accelerated image warping. However, showing a
single volumetric image with dozens of protein channels remains an impressive
feat to be demonstrated in future research.

Several improvements to our current approach for single-cell 3D coregistration
are possible. For example, the nuclei matching and TPS warping estimation only
occur once, but the non-linear TPS warping would change the geometric features
that the nuclei matching is based on. Given that nuclei are much closer together
than the spacing of our regular grid, we are implicitly assuming that the tissue
deformations are locally linear. The success of our coregistration algorithm
suggests that this assumption is acceptable for slight tissue deformations
incurred during de-staining, re-staining, and manual handling. However, it is
unclear if reducing the search radius after a first-pass of nuclei matching and
TPS warping could increase the number of correspondences and the overall quality
of alignment by an appreciable amount. Another potential improvement would be to
allow for semi-automatic coarse alignment with the option for manual correction.
For example, the Nuggt tool, which draws on Neuroglancer, would be suitable for
manual refinement of the morpholohical coarse alignment described here (Swaney
et al. 2019). Integrating commonly used intensity-based alignment tools such as
Elastix into this workflow could make the overall coregistration pipeline more
robust [@Klein2010].

Once obtained, a high-dimensional volumetric image of multiple proteins within
a single brain sample could be used for more unbiased and exploratory analyses
and hypothesis generation. Rather then selecting a brain region and a handful of
markers to study in a given experiment, neuroscience researchers may be able to
visualize and quantify the expression of many proteins within their samples in a
more complete brain-wide manner. This powerful approach would be valuable for
studying complex neurological phenotypes which are poorly understood.
Multiplexed imaging at the whole-brain scale will also enable spatial analyses
that have never before been possible. Since each staining round comes from the
same tissue, intricate spatial analyses will be possible at the single-cell
level rather than just the region level.

## Methods

### Tissue processing, staining, and imaging

Mouse and marmoset brain samples were prepared according to methods described in
the SHIELD and eFLASH papers (Park et al. 2019; Yun et al. 2019). The SHIELD
tissue preservation technique was used to fix and clear brain tissue samples,
and the eFLASH labeling technique was used to label tissue samples with Syto16
nuclear dye. Stained samples were then incubated in refractive index matching
solution (PROTOS), which has been described previously (Yun et al. 2019). 

After refractive index matching, stained samples were imaged using a
axially-swept light-sheet fluorescence microscope (LifeCanvas SmartSPIM). All
tissue samples were imaged using the custom 4x/0.3 NA long working-distance
objective (LifeCanvas). The images from the LSFM system were saved in raw binary
format.

### Image preprocessing

Raw images were first destriped and stitched according to previously published
methods (Swaney et al. 2019). The stitched images were contrast enhanced using
CLAHE from the scikit-image Python package on each optical section before
converting to Zarr format. The chunked Zarr format was used to construct a
multiscale representation by generating image pyramids down to 32x isotropic
downsampling.

### Coarse morphological alignment

Preprocessed images were downsampled 16x isotropically and then thresholded
below the nuclear stain auto-fluorescence to obtain a foreground binary mask.
The EDT was obtained using the *distance_transform_edt* function in the Scipy
package. An objective function for the L-BFGS optimizer was constructed given
the parameters to a rigid transformation of the fixed image onto the moving
image domain. The fixed image was transformed onto the moving image since the
final warping process involves interpolating the moving image data. L-BFGS
optimizer was iteratively attempted using the *basinhopping* global optimization
function in the Scipy package. The resulting rigid transormation parameters were
converted to the full image resolution by taking the downsampling factor into
account for the translation.

### Nuclei detection and geometric hashing

Nuclei were detected in each image by first gaussian blurring 3D image chunks to
remove noise. these image chunks were "ghosted" (including some voxels from
neighboring chunks) to avoid edge effected in applying the gaussian kernel.
After blurring, the *peak_local_max* function from scikit-image was used to
detect nuclei centroids.

After generating nuclei point clouds, a KD-tree was built for efficient querying
of nearest neighbors using the NearestNeighbor object in the scikit-learn
package. Geometric features for each nucleus were computed in parallel by
querying the 3 nearest nuclei in the point cloud. These neighbors were used to
construct and orthonormal basis through using the Gram-Schmidt process
considering the 3rd nearest neighbor as the z axis. QR decomposition was used to
compute the coordinates of the nearest nuclei in this new basis, and the upper
triangular portion of the matrix $R$ was flattened into a feature vector
containing 6 values describing the relative arrangement of nuclei around each
nucleus.

### Nuclei matching and RANSAC affine estimation

The nuclei point cloud from the fixed image was first transformed into
approximate alignment with the nuclei point cloud from the moving image using
the rigid transformation from the coarse morphological registration. The KD-tree
used to compute geometric features for the nuclei in the moving image was reused
to query all nuclei that fall within a 150 µm search radius. A candidate nucleus
in this search radius was considered a match if the euclidean distance between
the geometric features was less than a "similarity" threshold and the ratio
between that distance and the next nearest neighbor in feature space was less
than a "prominence" threshold, $T$.

After matching nuclei between fixed and moving images, an affine transformation
was estimated using the *RANSACRegressor* class in the scikit-learn package by
providing an affine transformation as the base model. The resulting affine
transformation was used as the basis for computing non-linear deformations from,
and any outlier identified by RANSAC were omitted from the list of corresponding
nuclei.

### GPU-accelerated warping of whole-brain volumetric images

A regular grid of 100 x 100 x 100 points was constructed over the fixed image
domain, and all points were transformed through the full affine-TPS
transformation. The resulting set of coordinates were linearly interpolated
using the GPU-accelerated *grid_sample* function from the Pytorch package. After
interpolating the exact affine-TPS displacements, a bounding box for the
projection of each chunk in the fixed images on the moving image was defined and
used to query the moving image data for only those voxel needed for
interpolation. Finally, the moving image data was interpolated at the
coordinates obtained from displacements.

\newpage

## References
