# Appendix 2: Image processing protocol {.unnumbered}

\newpage

## Part A: Destriping LSFM images using pystripe {.unnumbered}

*TIMING: 30 min setup (excluding download time), 1-4 h unattended computer time
(depending on data size)*

**Container setup**

i) Download the raw data (see ‘Downloading full resolution example data’ in the
MATERIALS section) or move pre-existing raw data to a new folder called “data”
and make note of the folder path on the host. Skip this step if using the
downsampled example data.

CRITICAL STEP Pystripe only accepts TIFF and RAW file formats. If using the
fullresolution example data, the data folder should be created on a device with
at least 4 TB of available space.  
? TROUBLESHOOTING

ii) Inspect the raw images using FIJI. ? TROUBLESHOOTING

iii) Open a terminal and start the Docker container with the data folder from
the host mounted inside the container using the following command:

\footnotesize
```
docker run -it -v path_to_data:/data chunglabmit/shield-2018
```
\normalsize

where “path_to_data” should be replaced with the full path of the data folder on
the host. Note that the command prompt will change to the root user indicating
that the prompt is now running interactively from within the container.

CRITICAL STEP The semantics for mounting a volume to share data with the
container are to specify a source path on the host and a target path inside the
container. The syntax for expressing this at the command line is “-v
path_on_host:path_in_container”. Note that path_in_container is a Unix-style
path since the container is a Linux virtual machine.

CRITICAL STEP Add quotes around the full path if it contains any spaces.
? TROUBLESHOOTING

iv) Verify that the data folder is mounted correctly by running the following
command from within the Docker terminal window.

\footnotesize
```
ls /data
```
\normalsize

This command should list the contents of the shared data folder mounted in the
container at the root path. ? TROUBLESHOOTING

**Destriping raw images from whole-brain LSFM**

v) Run the following command to get the latest version of pystripe:

\footnotesize
```
git -C /shield-2018/pystripe pull
```
\normalsize

Inspect the help message from pystripe by entering the following command from
within the container.

\footnotesize
```
pystripe --help
```
\normalsize

Instructions for using pystripe from the command line should print. Note from
the instructions that an input folder and filter bandwidth are required and that
pystripe will default to using all CPU cores available to the container.

vi) Destripe the raw data one channel at a time by entering the following
commands within the Docker terminal window for each channel:

\footnotesize
```
pystripe -i /data/raw_data/channel -o /data/destriped_data/channel -s1 sigma1 -s2
sigma2 -w wavelet -c compression -x crossover -f flat.tif -d dark
```
\normalsize

where “channel” represents the name of the folder containing images of the
current channel, “sigma1” and “sigma2” represent the dual-band filter bandwidths
in pixels (higher gives more filtering), “wavelet” is the mother wavelet name,
“compression” is the amount of lossless TIFF compression, and “crossover” is the
intensity range used to switch between filter bands. The arguments “flat” and
“dark” are optional inputs for applying illumination correction. Including
illumination correction in pystripe removes the need to load the images into
memory multiple times.

If using the full-resolution example data, then enter the following command.

\footnotesize
```
pystripe -i /data/raw_data/Ex_0_Em_0 -o /data/destriped_data/Ex_0_Em_0 -s1 256 -s2
256 -w db10 -c 3 -x 10 --flat flat.tif --dark 100
```
\normalsize

If using the downsampled example data, then enter the following command.

\footnotesize
```
pystripe -i /data/raw_data/Ex_0_Em_0 -o /data/destriped_data/Ex_0_Em_0 -s1 32 -s2
32 -w db10 -c 3 -x 10 --flat flat_downsampled.tif --dark 100
```
\normalsize

A progress bar showing the destriping progress for that channel will appear, and
the destriped images will appear in the data folder, which is also available
from the host machine.

Inspect some of the resulting destriped images and the corresponding raw images
in FIJI. Note that pystripe maintains the raw data folder structure in its
output.

vii) Repeat steps A) vi-vii for all other channels.

viii) Shutdown the Docker container by typing “exit” in the Docker terminal
window. The terminal will return to its original state before entering the
Docker container.

CRITICAL STEP Since Docker creates new containers each time they are started, no
files inside the Docker container will be saved when restarting the container
except for files in shared folders on the host, such as the mounted data folder.

PAUSE POINT The destriped data folder can be archived for processing at a later
date.

## Part B: Stitching LSFM stacks using TSV {.unnumbered}

*TIMING: 45 min setup (excluding download time), 4-12 h unattended computer time
(depending on data size)*

**Container setup**

i) Download the destriped data (see ‘Downloading full resolution example data’
in the MATERIALS section) or use the destriped data from the previous step. If
using the downsampled data, complete part A and use the resulting destriped data
for part B.

CRITICAL STEP TSV only accepts TIFF and RAW file formats saved in Terastitcher
hierarchical format. If using the full resolution example data, the data folder
should be on a device with at least 4 TB of available space.

ii) Open a terminal and start the Docker container with the data folder from the
host mounted inside the container using the following command:

\footnotesize
```
docker run -it -v path_to_data:/data chunglabmit/shield-2018
```
\normalsize

where “path_to_data” should be replaced with the full path of the data folder on
the host. Note that the command prompt will change to the root user indicating
that the prompt is now running interactively from within the container.

CRITICAL STEP The semantics for mounting a volume to share data with the
container are to specify a source path on the host and a target path inside the
container. The syntax for expressing this at the command line is “-v
path_on_host:path_in_container”. Note that path_in_container is a Unix-style
path since the container is a Linux virtual machine.

CRITICAL STEP Add quotes around the full path if it contains any spaces.
Stitching images from whole-brain LSFM

iii) Run the following command to get the latest version of TSV:

\footnotesize
```
git -C /shield-2018/tsv pull
```
\normalsize

iv) Use Terastitcher to create a stitching project file based on a single
channel by entering the following command in the Docker terminal window.

\footnotesize
```
terastitcher -1 --volin=/data/destriped_data/channel_master --ref1=H --ref2=V \
--ref3=D --vxl1=x --vxl2=y --vxl3=z --sparse_data \
--projout=/data/destriped_data/channel_master/xml_import.xml
```
\normalsize

where “channel_master” represents the name of the folder containing images of
the channel used for calculating stack displacements and x, y, and z are the
physical voxel dimensions in micron. If using the full-resolution example data,
then enter the following command:

\footnotesize
```
terastitcher -1 --volin=/data/destriped_data/Ex_1_Em_1 --ref1=H --ref2=V \
--ref3=D --vxl1=1.8 --vxl2=1.8 --vxl3=2 --sparse_data \
--projout=/data/destriped_data/Ex_1_Em_1/xml_import.xml
```
\normalsize

If using the downsampled example data, then enter the following command:

\footnotesize
```
terastitcher -1 --volin=/data/destriped_data/Ex_1_Em_1 --ref1=H --ref2=V \
--ref3=D --vxl1=14.4 --vxl2=14.4 --vxl3=16 --sparse_data \
--projout=/data/destriped_data/Ex_1_Em_1/xml_import.xml \
```
\normalsize

CRITICAL STEP The voxel dimensions must match the voxel dimensions for the LSFM
system in microns. ? TROUBLESHOOTING

v) Calculate the stack displacements using Terastitcher by entering the
following command in the Docker terminal window:

\footnotesize
```
terastitcher -2 --projin=/data/destriped_data/channel_master/xml_import.xml \
--projout=/data/destriped_data/channel_master/xml_displacement.xml
```
\normalsize

If using the example data, enter the following command:

\footnotesize
```
terastitcher -2 --projin=/data/destriped_data/Ex_1_Em_1/xml_import.xml \
--projout=/data/destriped_data/Ex_1_Em_1/xml_displacement.xml
```
\normalsize

? TROUBLESHOOTING

vi) Generate a Terastitcher project file by entering the following command in the Docker
terminal window:

\footnotesize
```
terastitcher -3 --projin=/data/destriped_data/channel_master/xml_displacement.xml \
--projout=/data/destriped_data/channel_master/xml_displproj.xml
```
\normalsize

If using the example data, enter the following command:

\footnotesize
```
terastitcher -3 --projin=/data/destriped_data/Ex_1_Em_1/xml_displacement.xml \
--projout=/data/destriped_data/Ex_1_Em_1/xml_displproj.xml
```
\normalsize

vii) Use TSV to generate stitched images by entering the following command in the Docker
terminal window:

\footnotesize
```
tsv-convert-2D-tif --xml-path /data/destriped_data/channel_master/xml_displproj.xml \
--output-pattern /data/stitched_data/channel_master/"{z:04d}.tiff" \
--compression compression --ignore-z-offsets
```
\normalsize

where “/data/stitched_data/channel_master” is a new folder that will be created for the
stitched images from the master channel, and “compression" is the amount of lossless
TIFF compression to use. If using the example data, enter the following command:

\footnotesize
```
tsv-convert-2D-tif --xml-path /data/destriped_data/Ex_1_Em_1/xml_displproj.xml \
--output-pattern /data/stitched_data/Ex_1_Em_1_master/"{z:04d}.tiff" \
--compression 4 --ignore-z-offsets
```
\normalsize

A progress bar will appear showing the stitching progress. Note that TSV will
default to using all processor cores available to the container.

viii) Inspect the stitched images in FIJI. TSV generates TIFF images which can
be imported directly into FIJI.

ix) If there are no more channels to stitched, then proceed to part C of the
protocol. If there are more channels to be stitched, then the following command
will stitch other channels using the displacements calculated from the master
channel:

\footnotesize
```
tsv-convert-2D-tif --xml-path /data/destriped_data/channel_master/xml_displproj.xml \
--output-pattern /data/stitched_data/channel/”{z:04d}.tiff” --compression compression \
--ignore-z-offsets --input /data/destriped_data/channel
```
\normalsize

Where “channel_master” represents the folder name of the channel used for calculating
stack displacements, “channel” represents folder of images from another channel to be
stitched using the previously computed displacements, and the other arguments are as
described before. Repeat this command for all other channels to be stitched.

If using the example data, then enter the following commands:

\footnotesize
```
tsv-convert-2D-tif --xml-path /data/destriped_data/Ex_1_Em_1/xml_displproj.xml \
--output-pattern /data/stitched_data/Ex_0_Em_0/“{z:04d}.tiff” --compression 4 \
--ignore-zoffsets --input /data/destriped_data/Ex_0_Em_0

tsv-convert-2D-tif --xml-path /data/destriped_data/Ex_1_Em_1/xml_displproj.xml \
--output-pattern /data/stitched_data/Ex_2_Em_2/“{z:04d}.tiff” --compression 4 \
--ignore-zoffsets --input /data/destriped_data/Ex_2_Em_2
```
\normalsize

x) Close the Docker container by typing “exit” into the Docker terminal window
and pressing “Enter”.

PAUSE POINT The stitched data folder can be archived for processing at a later
date.

## Part C: Atlas alignment with manual refinement using nuggt {.unnumbered}

*TIMING: 1-2 hr setup (excluding download time), 6-12 h unattended computer time
(depending on data set size)*

**Container setup and Neuroglancer basics**

i) Download the stitched data (see ‘Downloading full resolution example data’ in
the MATERIALS section) or use the stitched data from the previous step. If using
the downsampled data, complete part B and use the resulting stitched data for
part C.

ii) For Linux users, open a terminal and start the Docker container with the
data folder from the host mounted inside the container using the following
command:

\footnotesize
```
docker run -it --expose 8999 -p 8999:8999/tcp --network host \
-v path_to_data:/data --shmsize 1g chunglabmit/shield-2018
```
\normalsize

For Windows and Mac users, enter the following command:

\footnotesize
```
docker run -it --expose 8999 -p 8999:8999/tcp -v path_to_data:/data \
--shm-size 1g chunglabmit/shield-2018
```
\normalsize

CRITICAL STEP Add quotes around the full path if it contains any spaces.

iii) The following files are included in the "/allen-mouse-brain-atlas" folder
inside the Docker container:

- autofluorescence_25_half_sagittal.tif - a 3D image of the autofluorescence
  channel for the mid-sagittal sectioning of the Allen Mouse Brain atlas
  reference (to be used in place of "/reference/reference.tiff").

- annotation_25_half_sagittal.tif - a 3D segmentation of the Allen Mouse Brain
  reference (to be used in place of "/reference/segmentation.tiff").

- coords_25_half_sagittal.json - the coordinates of key points on the reference
  (to be used in place of "/reference/points.json")

- AllBrainRegions.csv - a mapping of region ID numbers in the segmentation to
  names of regions.

Use nuggt to inspect the included mouse brain reference atlas by entering the
following command into the Docker terminal window:

\footnotesize
```
nuggt-display --port 8999 [--ip-address 0.0.0.0] \
--segmentation /allen-mouse-brainatlas/annotation_25_half_sagittal.tif \
--points /allen-mouse-brainatlas/coords_25_half_sagittal.json \
/allen-mouse-brainatlas/autofluorescence_25_half_sagittal.tif reference gray
```
\normalsize

where “--ip-address 0.0.0.0” should be included by Windows and Mac users. The
nuggt-display application will print a URL similar to
"http://127.0.0.1:8999/v/..." for Linux users in the Docker terminal window. For
Windows and Mac users, the nuggt-display application will print a URL similar to
"http://(container-id):8999/v/..." in the Docker terminal window, and the
container ID should be replaced with “localhost” in the next step.

iv) Open the URL in your browser to see the Neuroglancer user interface. The
browser should display four panels. The top left one is the XY view, the top
right is the XZ view, the bottom right one is the YZ view, and the bottom left
one is a 3D view. The current cursor position in image coordinates is displayed
at the top of the Neuroglancer user interface. A list of keyboard shortcuts is
available if you type "h" while using Neuroglancer.? TROUBLESHOOTING

In Neuroglancer, you can move the stack by pressing the left mouse button with
the cursor in any of the three orthogonal view panels and dragging. You can
scroll through the depth of the stack by turning the mouse wheel, and you can
zoom in and out by pressing the "ctrl" key and turning the mouse wheel. Each
layer in Neuroglancer listed along the top of the user interface can be hidden
by clicking the layer name. Segmentation layers can used to highlight specific
brain regions by double-clicking regions in any view panel.

v) Exit the nuggt-display application by holding “ctrl” and pressing “C” in the
Docker terminal window.

**Create a points file for a custom reference atlas**

This step is optional if you are aligning a sagittal image of a mouse brain
hemisphere to the Allen Mouse Brain Atlas (which is the case when using the
example data). If you are using the example data, proceed to step C xii.

vi) Locate either a 3D TIFF file of the reference image (e.g.  
"path_to_reference/reference.tiff") or a folder of 2D TIFF files named in strict
ascending alphabetical order (e.g. "path_to_reference/images/img_0000.tiff") on
the host.

CRITICAL STEP You must prepare an accompanying segmentation of this reference
(e.g. "path_to_reference/segmentation.tiff") where each pixel of the
segmentation has a value corresponding to the region in which the pixel lies.
You must also have a mapping of region number to the region's name in a format
similar to the file "/allen-mouse-brainatlas/ AllBrainRegions.csv".

vii) Open a terminal and start the Docker container with the reference image(s)
mounted using the following command:

\footnotesize
```
docker run -it --expose 8999 -p 8999:8999/tcp [--network host] \
-v path_to_reference:/reference -v path_to_data:/data chunglabmit/shield-2018
```
\normalsize

where “path_to_reference” and “path_to_data” represent the full paths of the
directories containing the reference image(s) and the images to be aligned to
the reference on the host. The “--network host” argument should only be included
by Linux users.

CRITICAL STEP Add quotes around the full path if it contains any spaces.

viii) If you have a 3D reference TIFF file, type the following command into the
Docker terminal window:

\footnotesize
```
nuggt --port 8999 --image /reference/reference.tiff --output /reference/points.json
```
\normalsize

where “reference.tiff” should be replaced with the name of your reference image.
If you have a folder of 2D TIFF files, type:

\footnotesize
```
nuggt --port 8999 --image "/reference/images/*.tiff" --output /reference/points.json
```
\normalsize

CRITICAL STEP Use “\*.tif” instead of “\*.tiff” if that is the extension of your
image files.

ix) The nuggt application will display a line similar to "Editing viewer:  
http://127.0.0.1:8999/v/..." in the Docker terminal window. Windows and Mac
users should replace the container ID in the URL with “localhost”. Open the URL
in your browser to see the Neuroglancer user interface.

x) Add fiducial points by placing the cursor where you want the point to be,
holding the "shift" key and pressing "A". You can delete a point by placing the
cursor over it, holding the shift key and pressing "D". You should annotate the
image using easily identifiable locations like the dentate gyrus as well as the
perimeter of the image (see Supplementary Fig. 1).? TROUBLESHOOTING

xi) Hold the "shift" key and press "S" to save the annotations. Bring up the
Docker terminal window again, hold "ctrl" and press "C" to exit from the nuggt
application.

PAUSE POINT The points.json file can be saved and reused for future atlas
alignment tasks using the same reference image(s).

**Perform automatic alignment**

xii) Determine whether the images to be aligned with the reference atlas needs
to be flipped or rotated by inspecting the stitched and reference images.

If aligning to the provided sagittal mouse brain atlas, each z-plane of the
stitched images should be approximately a sagittal section with the olfactory
bulb at the top of the image and the cortex to the right (see Supplementary Fig.
1). The z-plane corresponding to the medial sagittal section should be the last
image in the stack (the one that is the last in alphabetical order if 2D planes
are used). If the cortex is at the left, you will need to "flip-X". If the
olfactory bulb is at the bottom, you will need to "flip-Y". If the medial
sagittal section is at Z = 0, then you will need to "flip-Z". Note that
“flipping” in this case means reversing the index of an image dimension, which
corresponds to a reflection of the image in that dimension. ? TROUBLESHOOTING

If aligning the example data to the provided mouse brain atlas, then the
Ex_0_Em_0 channel (containing syto 16 nuclear stain) should be used for atlas
alignment and flipped in the X and Z dimensions (see Supplementary Fig. 2).

xiii) Determine whether the channel to be aligned with the reference atlas needs to be
cropped.

Typically, the reference image extends to the left, right, top and bottom with
no background margins, but the stitched images to be aligned have a margin to
the left, right, top or bottom. If these margins are large, they will prevent
the automatic alignment from succeeding; thus, the image to be aligned must be
cropped to match when performing the automated alignment. Note the X-start and
X-end, Y-start and Y-end, and Z-start and Z-end (if whole planes need to be
cropped) coordinates of the image after cropping using FIJI to examine the
images.

CRITICAL STEP These cropping coordinates apply to the image before flipping.

If using the full resolution example data, then use the following crop
coordinates:

• X-start, X-stop: None  
• Y-start, Y-stop: 0, 9800  
• Z-start, Z-stop: None  

If using the downsampled example data, then use the following crop coordinates:

• X-start, X-stop: None  
• Y-start, Y-stop: 0, 1225  
• Z-start, Z-stop: None  

xiv) Run the rescale-image-for-alignment program to rescale, flip, and crop the
channel used for atlas alignment. If step (xiii) determined that the image needs
X-flipping, use the --flipx switch, and similarly for Y and Z. Likewise, if step
(xiii) determined the image needs Xcropping, use the --clip-x argument, and
similarly for Y and Z. For example, if an image needs to be flipped in X and Z
and cropped in Y at the bottom of the image at coordinate 9100, the resulting
command to be typed into the Docker terminal window is:

\footnotesize
```
rescale-image-for-alignment --input "/data/stitched_data/channel_alignment/*.tiff" \
--atlas-file /reference/reference.tiff --output \
/data/downsampled_flip-x_flip-z_clip-y-0-9100.tiff --flip-x --flip-z --clip-y 0,9100
```
\normalsize

where “channel_alignment” is the folder containing the stitched images of the
channel used for alignment. If using the full resolution example data with the
provided reference atlas, then type:

\footnotesize
```
rescale-image-for-alignment --input "/data/stitched_data/Ex_0_Em_0/*.tiff" \
--atlas-file /allen-mouse-brain-atlas/autofluorescence_25_half_sagittal.tif \
--output /data/downsampled_flip-x_flip-z_clip-y-0-9800.tiff \
--flip-x --flip-z --clip-y 0,9800
```
\normalsize

If using the downsampled example data with the provided reference atlas, then
type:

\footnotesize
```
rescale-image-for-alignment --input "/data/stitched_data/Ex_0_Em_0/*.tiff" \
--atlas-file /allen-mouse-brain-atlas/autofluorescence_25_half_sagittal.tif \
--output /data/downsampled_flip-x_flip-z_clip-y-0-1225.tiff \
--flip-x --flip-z --clip-y 0,1225
```
\normalsize

CRITICAL STEP Record the values for the --flip-x, --flip-y, --flip-z --clip-x,
--clip-y and --clip-z switches in the output image name. These parameters will
be used again in step C xxiv.

CRITICAL STEP If using the example data, make sure that Ex_0_Em_0, the syto 16
channel, is rescaled and used for atlas alignment.

xv) Align the rescaled image to the reference using Elastix. If using a custom
reference image in the same example scenario presented in step C xiv, then the
following command would be used:

\footnotesize
```
sitk-align --moving-file /data/downsampled_flip-x_flip-z_clip-y-0-9100.tiff \
--fixed-file /reference/reference.tiff --fixed-point-file /reference/points.json \
--xyz --alignment-point-file /data/alignment.json
```
\normalsize

CRITICAL STEP Substitute the name of your reference image for "reference.tiff"
above and substitute the name you used as the --moving-file in step (C)(xiii)
for "downsampled.tiff" above.

If using the full resolution example data with the provided reference atlas,
then type:

\footnotesize
```
sitk-align --moving-file /data/downsampled_flip-x_flip-z_clip-y-0-9800.tiff \
--fixed-file /allen-mouse-brain-atlas/autofluorescence_25_half_sagittal.tif \
--fixed-point-file /allenmouse-brain-atlas/coords_25_half_sagittal.json \
--xyz --alignment-point-file /data/alignment.json
```
\normalsize

If using the downsampled example data with the provided reference atlas, then
type:

\footnotesize
```
sitk-align --moving-file /data/downsampled_flip-x_flip-z_clip-y-0-1225.tiff \
--fixed-file /allen-mouse-brain-atlas/autofluorescence_25_half_sagittal.tif \
--fixed-point-file /allenmouse-brain-atlas/coords_25_half_sagittal.json \
--xyz --alignment-point-file /data/alignment.json
```
\normalsize

? TROUBLESHOOTING

**Refine the alignment manually**

xvi) Use nuggt-align to manually refine the automatic alignment. If using a
custom reference image in the same example scenario presented in step C xiv,
then the following command would be used:

\footnotesize
```
nuggt-align --port 8999 [--ip-address 0.0.0.0] \
--reference-image /reference/reference.tiff \
--moving-image /data/downsampled_flip-x_flip-z_clip-y-0-9100.tiff \
--points /data/alignment.json
```
\normalsize

where “--ip-address 0.0.0.0” should be included by Windows and Mac users.

CRITICAL STEP Substitute the name of your reference image for "reference.tiff"
above and substitute the name you used as the --moving-file in step (C)(xiii)
for "downsampled.tiff" above.

If aligning the full resolution example data to the provided reference atlas,
then enter the following command in the Docker terminal window:

\footnotesize
```
nuggt-align --port 8999 [--ip-address 0.0.0.0] --reference-image \
/allen-mouse-brainatlas/ autofluorescence_25_half_sagittal.tif \
--moving-image downsampled_flip-x_flipz_ clip-y-0-9800.tiff \
--points /data/alignment.json
```
\normalsize

If aligning the downsampled example data to the provided reference atlas, then
enter the following command in the Docker terminal window:

\footnotesize
```
nuggt-align --port 8999 [--ip-address 0.0.0.0] --reference-image \
/allen-mouse-brain-atlas/autofluorescence_25_half_sagittal.tif \
--moving-image /data/downsampled_flipx_ flip-z_clip-y-0-1225.tiff \
--points /data/alignment.json
```
\normalsize

xvii) There are two links that are displayed by nuggt-align in the Docker
terminal window. One is the link to a Neuroglancer webpage displaying the
reference image and one is a link to the image that is to be aligned. Copy each
of the links and open them in separate windows in your web browser. Windows and
Mac users should change the container ID in the URL to “localhost” (see step C
iii).

xviii) Refine the locations of each of the fiducial points in the image. This is
done by selecting the reference image browser window (e.g. by clicking in it),
holding down the "shift" key and typing "N". A red point will appear in both the
reference and moving image browsers. You should adjust the point in the moving
image browser to correspond with its location in the reference image if it is
placed incorrectly. This is done by holding down the "ctrl" key and clicking on
the location in the reference image where the point should be. The point can be
readjusted multiple times until you are satisfied with the location. After this
is done, hold the shift key down and type, "D" (for "done") and hold the shift
key down and type "N" to move to the next fiducial point. Repeat the adjustment
procedure until all of the fiducial points have been adjusted. ? TROUBLESHOOTING

xix) Hold the shift key down and press "S" to save the adjusted alignment.

CRITICAL STEP The location of the refined fiducial points are not saved
automatically. The refined atlas alignment progress will be lost if the adjusted
alignment points are not saved.

xx) Hold the shift key down and type "W" to warp the image to be aligned to the
reference image.

CRITICAL STEP Wait for the message, "Warping complete", to be displayed before
doing anything further.

xxi) Add additional points to refine the warping further. Add a point to the
reference image by holding the "ctrl" key down and pressing the mouse button
while hovering over the location of a discrepancy. Focus the alignment image to
this location by holding down the "shift" key and pressing "T" (for
"translate"). In the alignment image Neuroglancer webpage, adjust the location
of the point by holding down the "ctrl" key and pressing the left mouse button,
then hold the shift key down and press "D" (for "Done").

CRITICAL STEP Adding duplicate points in the same location will cause the
warping to fail. To avoid this problem, it is helpful to warp the moving image
after adding each point to verify that the warping is successful.?
TROUBLESHOOTING

xxii) Hold the shift key down and press "S" to save the adjusted alignment.

CRITICAL STEP The location of the refined fiducial points are not saved
automatically. The refined atlas alignment progress will be lost if the adjusted
alignment points are not saved.

xxiii) In the Docker terminal window, hold down the "ctrl" key and press "C" to
exit the nuggt-align program.

xxiv) Rescale the alignment to the size of your original image. If using a
custom reference image in the same example scenario presented in step C xiv,
then the following command would be used:

\footnotesize
```
rescale-alignment-file --stack "/data/stitched_data/channel_alignment/*.tiff" \
--alignmentimage /data/downsampled_flip-x_flip-z_clip-y-0-9100.tiff \
--input /data/alignment.json --output /data/rescaled-alignment.json \
--flip-x --flip-z --clip-y 0,9100
```
\normalsize

CRITICAL STEP replace "--flip-x --flip-z --clip-y 0,9100" above with the values
used in step C xiv

If aligning the full resolution example data to the provided reference atlas,
then enter the following command in the Docker terminal window:

\footnotesize
```
rescale-alignment-file --stack "/data/stitched_data/Ex_0_Em_0/*.tiff"
--alignment-image /data/downsampled_flip-x_flip-z_clip-y-0-9800.tiff --input
/data/alignment.json --output /data/rescaled-alignment.json --flip-x --flip-z
--clip-y 0,9800
```
\normalsize

If aligning the downsampled example data to the provided reference atlas, then
enter the following command in the Docker terminal window:

\footnotesize
```
rescale-alignment-file --stack "/data/stitched_data/Ex_0_Em_0/*.tiff" \
--alignment-image /data/downsampled_flip-x_flip-z_clip-y-0-1225.tiff \
--input /data/alignment.json --output /data/rescaled-alignment.json \
--flip-x --flip-z --clip-y 0,1225
```
\normalsize

PAUSE POINT The alignment.json and rescaled-alignment.json files can be saved
for continuing the analysis at a later date.

**Compute the total and mean intensity per region**

xxv) Use the rescaled alignment file to compute fluorescence statistics of each
channel for all brain regions. If using a custom reference image, then enter the
following command into the Docker terminal window:

\footnotesize
```
calculate-intensity-in-regions --input "/data/stitched_data/channel/*.tiff" \
--alignment /data/rescaled-alignment.json \
--reference-segmentation /reference/segmentation.tiff \ 
--brain-regions-csv /reference/brain-regions.csv \
--output /data/results-level-7.csv --level 7
```
\normalsize

where “channel” represents the folder of the current channel to be analyzed.

CRITICAL STEP the "--level" argument picks the granularity of the segmentation
description from 7 (finest granularity) to 1 (coarsest granularity). You can
specify multiple levels to be calculated at the same time at little additional
computational cost.

If aligning the full resolution example data to the provided reference atlas,
then enter the following command:

\footnotesize
```
calculate-intensity-in-regions --input "/data/stitched_data/Ex_1_Em_1_master/*.tiff" \
--alignment /data/rescaled-alignment.json \
--reference-segmentation /allen-mouse-brainatlas/annotation_25_half_sagittal.tif \
--brain-regions-csv /allen-mouse-brainatlas/AllBrainRegions.csv \
--output /data/results-level-3.csv --level 3 \
--output /data/results-level-4.csv --level 4 \
--output /data/results-level-5.csv --level 5 \
--output /data/results-level-6.csv --level 6 \
--output /data/results-level-7.csv --level 7 --shrink 2 –ncores N
```
\normalsize

where N is the number of cores to use for calculating fluorescence statistics.
Note that using more cores causes the memory usage to increase as well. If
memory becomes a limiting factor, then limit the number of cores used or
increase the shrink factor if acceptable.

If aligning the downsampled example data to the provided reference atlas, then
enter the following command:

\footnotesize
```
calculate-intensity-in-regions --input "/data/stitched_data/Ex_1_Em_1_master/*.tiff" \
--alignment /data/rescaled-alignment.json \
--reference-segmentation /allen-mouse-brainatlas/annotation_25_half_sagittal.tif \
--brain-regions-csv /allen-mouse-brainatlas/AllBrainRegions.csv \
--output /data/results-level-3.csv --level 3 \
--output /data/results-level-4.csv --level 4 \
--output /data/results-level-5.csv --level 5 \
--output /data/results-level-6.csv --level 6 \
--output /data/results-level-7.csv --level 7
```
\normalsize

This command can be repeated for all other channels to be analyzed. The results
file that is created contains a spreadsheet of the region names, the volume of
each region in voxels, the sum of all intensities in each region
(total_intensity) and the average intensity of the voxels in each region
(mean_intensity).

### Timing {.unnumbered}

For processing the full resolution example data:

Stage A, 30 min for setup and 2-4 h of unattended computer time  
Stage B, 45 min for setup and 4-12 h of unattended computer time  
Stage C, 1-2 h for setup and manual refinement and 4-12 h of unattended computer time  

For processing the downsampled example data:

Stage A, 30 min for setup and 10 min of unattended computer time  
Stage B, 45 min for setup and 20 min of unattended computer time  
Stage C, 1-2 h for setup and manual refinement and 30 min of unattended computer time  

### Troubleshooting {.unnumbered}

*A troubleshooting table is available in the online version of the protcol,
which is available at <https://www.biorxiv.org/content/10.1101/576595v1>*
