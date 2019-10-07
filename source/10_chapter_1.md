# Simple, scalable proteomic imaging for high-dimensional profiling of intact systems

## Summary

Combined measurement of diverse molecular and anatomical traits that span
multiple levels remains a major challenge in biology. Here, we introduce a
simple method that enables proteomic imaging for scalable, integrated,
high-dimensional phenotyping of both animal tissues and human clinical samples.
This method, termed SWITCH, uniformly secures tissue architecture, native
biomolecules, and antigenicity across an entire system by synchronizing the
tissue preservation reaction. The heat- and chemical-resistant nature of the
resulting framework permits multiple rounds (>20) of relabeling. We
have performed 22 rounds of labeling of a single tissue with precise
co-registration of multiple datasets. Furthermore, SWITCH synchronizes labeling
reactions to improve probe penetration depth and uniformity of staining. With
SWITCH, we performed combinatorial protein expression profiling of the human
cortex and also interrogated the geometric structure of the fiber pathways in
mouse brains. Such integrated high-dimensional information may accelerate our
understanding of biological systemsat multiple levels.

## Introduction

Biological systems are comprised of vast numbers of molecules, cell types, and
intricate tissue organizations (Alivisatos et al., 2013; Kasthuri et al., 2015;
Yuste, 2015). Understanding the complex interactions of these components is
essential for many fields of biology and often requires high-dimensional
information across many scales. Although it is desirable to obtain such
information from the same tissue due to large individual variations, combined
measurement of many molecular andanatomical traits remains an unmet goal in
biology despite the remarkable success of current pioneering methods, such as
array tomoagraphy (Micheva et al., 2010; Rah et al., 2013).

Rapidly evolving tissue-clearing techniques may enable multiplexed labeling and
imaging of intact samples using light microscopy (Chung et al., 2013; Chung and
Deisseroth, 2013; Renieret al., 2014; Richardson and Lichtman, 2015; Susaki et
al., 2014). For instance, the CLARITY technique has demonstrated three rounds of
immunostaining of mouse brain tissue (Chunget al., 2013). However, we have
noticed that the polyacrylamide-based framework loses structural integrity upon
repeated exposure to the elution condition. Recent reports also suggest that
preservation of antigenicity in the CLARITY method may not be optimal (Renier et
al., 2014). Furthermore, the necessary tissue-gel hybridization step requires
delivery of charged thermal initiators with limited diffusivity and stability.
This necessity imposes a limit on the tissue size that can be processed
withoutthe use of transcardial perfusion.

We set our goal to develop a simple, scalable, and generalizable
tissue-processing method for proteomic imaging of intactbiological systems. To
achieve this, we created SWITCH (system-wide control of interaction time and
kinetics of chemicals), which tightly controls a broad range of chemical
reactions in tissue processing via a set of buffers: a SWITCH-On buffer that
facilitates chemical reactions between exogenous chemicals and endogenous
biomolecules, and a SWITCH-Off buffer that suppresses the reactions.
SWITCH-mediated fixation transforms tissue into a heat- and chemical-resistant
hybrid while preserving tissue architecture, native molecules, and their
antigenicity to a degree suitable for multiplexed proteomic imaging. The hybrids
can be rapidly cleared at high temperature without damage. The method does not
require perfusion and is thus applicable to both animal and large human samples.
In molecular labeling of the processed samples, SWITCH controls probe-target
binding kinetics to improve probe penetration depth and the uniformity of
molecular labeling. This method is simple, passive, and does not require any
special equipment or reagents.

Using SWITCH, we demonstrated that a minimum of 22 rounds of molecular labeling
of a banked postmortem human tissue with precise co-registration of multiple
datasets at single-cell resolution is possible. We also demonstrated extraction
of a wide range of system variables, such as various cell types and
microvasculature from a single sample. In summary, we have developed simple
tissue processing methods and a volumetric co-registration algorithm that can be
readily adopted by most laboratories for scalable proteomic imaging of intact
biological systems.

<!-- To include a citation to the text, just add the citation key shown in the references.bib file. The style of the citation is determined by the ref_format.csl file. -->

## Results

### Synchronizing Dialdehyde-Tissue-Gel Formation Enables Scalable Tissue Preservation

First, we sought to develop a way to transform animal and human samples into a
mechanically and chemically stable form for multiplexed imaging. We hypothesized
that small, non-ionic, multifunctional crosslinkers might satisfy two key
requirements for such a transformation: (1) rapid penetration without the use of
perfusion and (2) a high degree of molecular crosslinking to improve sample
durability (Hopwood, 1972; Sung et al., 1996). Among many options, we chose to
evaluate the following owing to their small size and high water solubility
(Figure 1A): ethyleneglycol diglycidyl ether (EGDGE), dipropylene glycol
diglycidyl ether (GE23), 1,4-butanediol diglycidyl ether (GE21),
glycerolpolyglycidyl ether (EX-313), and glutaraldehyde (GA).

We found that all of these chemicals except GE23 formed a solid gel upon
incubation with 15% bovine serum albumin (BSA), indicating the formation of a
crosslinked network (Figure 1B). We examined the stability of the gels along
with poly-acrylamide (AA)-BSA gels by measuring the change in their volume after
incubation in a 200 mM SDS solution heated to 80C (elution condition). AA-BSA
gels swelled and became fragile after exposure to the harsh condition (Figures
1B and 1C), whereas multifunctional fixative-BSA gels maintained their
structural integrity. In particular, GA-BSA gels showed minimal volume change at
a wide range of BSA and GA concentrations, whereas others only gelled at high
protein concentrations (Figure 1C). This result indicates that multifunctional
fixatives alone might be sufficient to form a stable matrix that can with stand
the harsh elution condition. However, because the average protein content
throughout mouse brain samples is around 10% and may be lower within certain
regions, we decided that GA is the crosslinker most likely to form a uniform
framework throughout all regions of a sample.

Next, we asked whether GA can rapidly penetrate tissue to form a uniform
tissue-gel without the use of perfusion, which is required for processing most
human clinical samples. We incubated a non-fixed whole adult rat brain in PBS
containing 1% GA for 2 days and characterized the GA penetration depth and gel
formation. Although the small size of GA should make it highly mobile, only the
outer layer of the brain was fixed (Figure 1F). When a coronal slice from the
middle of the brain was exposed to the elution condition, the core of the tissue
completely disintegrated, indicating that no gel matrix had formed in the center
of the brain (Figure 1F). Limited GA penetration has significantly hampered its
use in preserving large postmortem tissues (Hop-wood, 1967). We suspect that
rapid reaction of GA with native biomolecules within the outer layer of the
brain may cause depletion of GA molecules before they can reach the core.

To overcome this issue, we sought to control the reaction kinetics of GA and
biomolecules throughout the system using the SWITCH approach to achieve uniform
tissue preservation. We noted that the GA reaction rate is pH-dependent
(Hopwood, 1970). Indeed, when we titrated solutions of GA and BSA to pH 3,
GA-BSA gel formation time increased by nearly 200-fold (Figure 1D). Using this
pH dependence, we were able to disperse GA uniformly throughout a sample by
switching off the crosslinking reaction with a low-pH buffer (Figure 1E, left).
After 2 days of incubation at low pH, we switched on sample-wide GA-tissue
crosslinking by shifting the pH of the sample to a neutral pH (Figure 1E,
right). Using this passive buffer-switching approach, we were able to achieve
complete GA penetration and uniform gel formation throughout the entire rat
brain (Figure 1F).

### Dialdehyde-Tissue-Gel Preserves Structural and Molecular Information Effectively

We next asked whether the GA-tissue-gel has mechanical and chemical properties
desirable for multiplexing-based proteomic imaging. Proteomic imaging requires
(1) high preservation of endogenous biomolecules and their antigenicity, (2)
high structural integrity, and (3) minimal tissue damage during repeated cycles
of destaining, labeling, and imaging processes.

We first tested whether endogenous biomolecules are well preserved by measuring
protein loss after clearing (see Supplemental Experimental Procedures). We found
that control tissues lost an average of 30%–40% protein and AA-tissue-gel lost
10%–20%, but GA-tissue-gel slices lost only 3%–5% of their protein content
(Figure 1G).

We next asked whether antigenicity of the retained biomolecules is well
preserved. We tested 90 antibodies, targeting biomolecules of different sizes
(single amino acid to proteins) and subcellular localizations (membrane bound,
cytoplasm, nucleus, synapses). Surprisingly, 86 of 90 antibodies were compatible
with GA-tissue-gel (Figures 1H, and 1I, and S1; Table S1). Note that even small
molecules, such as dopamine, which are not typically compatible with
PFA-fixation, were observable in GA-tissue-gel after the complete removal of
lipid bilayers (Figure S1). These biomolecules were stable against heat and
chemical treatment, and their antigenicity was well preserved after exposure to
elution conditions.

Good structural preservation is essential for resolving protein location with
high precision and for studying molecular inter relationships. To characterize
the macroscale structural preservation of the samples, we cleared 1-mm-thick
tissue blocks using the elution condition and visualized their structural
deformation (Figure 1J). The PFA-only tissue completely disintegrated. Even the
AA-tissue-gel exhibited large deformations overall. GA-tissue-gel, however,
showed no signs of structural damage throughout the entirety of the sample.

We next examined structural preservation on a microscopic scale. We imaged
GFP-expressing neurons in the cortex of a PFA-fixed 1-mm-thick Thy1-EGFP M line
block (Figure 1K). We then SWITCH-processed the tissue, cleared it using the
harsh elution condition, stained it against GFP, and imaged the same neurons. As
shown inFigure 1K, the microscopic morphology of the neurons was well preserved
throughout the entire process. These results show GA-tissue-gel may be ideal for
highly multiplexed structural and molecular phenotyping.

### SWITCH and Robust Computational Algorithms Enable Highly Multiplexed Imaging at Single-Cell Resolution

Interrogating the three-dimensional (3D) distribution of molecules, cells, and
the overall tissue organization requires precise co-registration of multiple
volume images. We first asked if simple manual overlay of two datasets allows
precise co-registration. As a stringent test, we used datasets from multi-round
imaging of a SWITCH-processed 100-µm-thick human brain slice (100 µm, 200 µm,
200 µm) (Figure 2A). The high aspect ratio of such tissues makes it more prone
to physical warping, which renders co-registration particularly challenging. We
first stained the tissue using DAPI and anti-parvalbumin (PV) antibody. The
slice was then enclosed in a space larger than the tissue to exaggerate possible
tissue deformation in the mounting process (Figure 2B). After imaging, the
sample was exposed to the elution condition overnight (O/N) to completely remove
imaged probes. We then restained the tissue using the same probes and repeated
the imaging process. Note that only GA-tissue-gels could maintain their
integrity against the elution treatment. Both AA-tissue-gels and PFA-fixed
samples deteriorated rapidly in the same condition.

As predicted, a large degree of tissue warping in the mounting process (Figure
2C) made manual overlay insufficient for the task of interrogating a tissue
across multiple staining rounds. To achieve precise co-registration of volume
images in the presence of such high-degree warping, we custom-designed a robust
computational software based on a feature-detection approach that was ideal for
our experimental procedure (Figure 2D). Each staining round contained one
fluorescence channel devoted to a lectin stain because the morphology of blood
vessels creates distinctive keypoints that computer vision algorithms are well
suited to identify. With the keypoints, the algorithm warps the tissue in a
physically plausible manner into the correct position (see Supplemental
Experimental Procedures).

As a stringent test of the algorithm, we used the same SWITCH-processed human
sample with the high aspect ratio (Figure 2A). For each round, the sample was
stained with DAPI, lectin, and one antibody to label a target protein. Although
at least three antibodies can be used for each round in addition to lectin and
DAPI (Figure S2), we chose to use one antibody for each round to eliminate any
possible cross-talk between channels. After acquiring images, we destained the
sample and began the next round of labeling. We repeated the above procedure 22
times using markers for various cell types (Figure 2H; Table 1). Staining was
not successful in every round due to the use of non-validated antibodies,
sub-optimal staining conditions, or human error, all of which often occur in
general laboratory settings and can result in the loss of important samples.
However, a SWITCH-processed sample is free from this issue as the tissue can be
washed and reused repeatedly.

We were able to successfully co-register all nine datasets with successful
staining (Figures 2E and 2H; Movie S1). We asked whether changes in the sample
might be occurring between staining rounds. To test this, we repeated staining
with anti-PV antibodies in rounds 7 and 19 and co-registered the resulting
datasets. Even when separated by 12 rounds of labeling, we were able to achieve
single-cell accuracy of registration with 99% agreement between the two rounds
(Figure 2G).

We next performed joint statistical analysis of the integrated cross-talk-free
dataset to extract diverse phenotypic information from human brain (Figure 3).
We included lectin, GFAP, NeuN, SMI-32, and three calcium-binding protein
channels—calbindin (CB), calretinin (CR), and PV—in the quantitative analysis.
First, we used semi-automated algorithms to identify blood vessels and cells
expressing the target antigens (Figures 3A and 3B) and extract their spatial (x,
y, z coordinates) and morphological (e.g., cell soma size) information. Density
and size profiles of NeuN-positive cells (Figures 3C and 3D) enabled us to
define the cortical layers (Figure 3A) according to established criteria (de
Sousa et al., 2010). NeuN+ density was high in cortical layers II and IV, with
characteristic small cells (NeuN in Figures 3A, 3C, 3D, and 3H). Large NeuN+
neurons were concentrated in layers III and V. A portion of these were large
pyramidal neurons positive for SMI-32 (Figures 3A, 3E, and 3H). CB+, CR+, and
PV+ cells also showed distinct distribution patterns along the cortical axis
(Figures 3A and 3D), in agreement with previous studies (Defelipeet al., 1999;
Leuba et al., 1998).

We  next  performed  unbiased  combinatorial  expression profiling with the six
cell-type specific proteins (GFAP, NeuN, SMI-32, CB, CR, PV). Among 63 possible
combinations, 16 were found (Table S2). We identified sub-populations of CB+/CR+
and CB+/PV+ cells, but no CR+/PV+ or CB+/CR+/PV+, cells (Figures 3F, 3H, and
3I), in agreement with a previous report regarding mouse visual cortex (Gonchar
et al., 2007). Interestingly, we observed that a significant portion of the CB,
CR, and PV-positive neurons do not express detectable levels of NeuN, a widely
used pan-neuronal marker (Figures 3J and 3K) (Mullenet al., 1992). In
particular, a majority of CR+ cells showed very weak (Figure 3K, arrowhead) or
no NeuN immunoreactivity (29.1%), whereas all SMI-32+ cells (Figures 3J and 3K)
were NeuN positive. These results suggest that NeuN expression may be
neuronal-type-specific in adult human visual association cortex. We also found a
small number of CB+ cells and PV+ cells co-expressing SMI-32, a widely used
pyramidal neuronal marker (Table S2) (Campbell and Morrison, 1989). Five CB+/PV+
cells were identified as quadruple-positive (NeuN+/SMI-32+/CB+/PV+) cells
(Figure 3G). All of the CB+ cells and PV+ cells co-expressing SMI-32 were
localized in cortical layers III and IV. These results demonstrate the power of
SWITCH as a tool for 3D proteomic profiling of intact biological samples at
single-cell resolution.

Structural relationships between vasculature and brain cells have been a topic
of interest in a broad range of basic and clinical research. Many previous
studies obtained the cell-to-vessel distance from 2D images or small tissue
volumes, which may hinder precise measurement of such 3D properties. Moreover,
in many studies, separate measurements from different tissues needed to be
compared without considering individual variabilities in local vasculature
geometry. There has been no direct comparison of 3D cell-to-vessel distance
among diverse cell types within the same intact tissue.

Using the proteomic imaging capability of SWITCH, for the first time, we were
able to directly measure cell-to-vessel distances for six different cell types
within a single intact tissue (Figures 3L–3O). As expected (McCaslin et al.,
2011), GFAP+ astrocytes had a shorter mean distance than NeuN+ neurons (Figure
3L). CB+ and PV+ cells were also more closely localized near blood vessels than
NeuN+ cells, but the difference was relatively small. Figure 3M shows that
vascular density is not uniform along the cortex. However, the extravascular
pixel-to-vessel distance ($D_p$), which we defined as a reference parameter to
reflect the effect of the 3D vascular geometry (Figure 3M, right), did not show
an inverse relationship with vascular density. This result may suggest that 3D
vessel geometry is an important parameter to be considered in understanding a
given vascular environment. In fact, cell-to-vessel distance profiles of many
cell types closely followed the $D_p$ profile (GFAP+, $D_G$, and NeuN+, $D_N$,
shown in Figure 3M). In particular, when $D_p$ was subtracted from
cell-to-vessel distances ($D_X$) to cancel the influence of vascular geometric
variation, $D_X-D_p$ turns out to be very consistent throughout cortical depth
(Figure 3N). We further examined the distance distribution profiles for all cell
types (Figure 3O). All profiles showed similar characteristic curves, which can
be seen when objects are randomly located in a 3D space (Manzo et al., 2014). We
could not observe any cell-type-specific distribution profile or bi- or
multi-modal distribution pattern in this sample. Together, these data
demonstrate that SWITCH can be used for high-dimensional quantitative
phenotyping of human clinical samples.

### SWITCH Enables Simple, Rapid, and Scalable Tissue-Clearing

To extend the multiplexed imaging capability of the SWITCH method to large
systems, we developed a simple and rapid clearing method. We hypothesized that
key steps in detergent-mediated lipid removal, such as permeation of SDS through
membranes, might be strongly enhanced by increasing temperature (Keller et al.,
2006), and SWITCH-processed samples may endure prolonged incubation at elevated
temperatures. Indeed, thermal energy drastically increased the passive clearing
speed of SWITCH-processed samples without noticeable tissue damage (Figure 4A).
We achieved passive clearing of a whole adult mouse brain within 4 days at 80C
(versus 4 weeks at 37C) (Figure 4C).

Upon prolonged exposure to high temperatures, however, samples developed a
brownish hue (Friedman, 1996), which may interfere with imaging at certain
wavelengths (Figures 4B–4D and 4F). We found that reducing agents, such as
sodium sulfite and 1-thioglycerol, effectively mitigate tissue browning during
thermal clearing (Figures 4B–4D). Using thermal clearing with the reducing
agents, we successfully cleared intact adult rat brains (2 weeks) as well as
human (1 week) and marmoset samples (1 week), demonstrating the versatility and
scalability of the method (Figures 4D and 4E). Clearing of various rodent organs
was also demonstrated with lung, kidney, heart, liver, and spinal cord (Figure
4F). The efficacy of sodium sulfite as an anti-browning agent was seen across
all tissues.

### SWITCH Enables Visualization and Quantitative Analysis of Entire Myelinated Fiber Tracts

We also sought to apply SWITCH to characterizing myelinated fiber pathways in
the brain. Visualizing and analyzing neural fibers with high-resolution light
microscopy can provide valuable insights into many studies (Thomas et al., 2014;
Wedeen et al., 2012; Zuccaro and Arlotta, 2013), such as validating diffusion
tensor imaging (DTI) and understanding the organizing principles of brain
connectivity. Furthermore, quantitative analysis of myelinated fibers in 3D may
benefit clinical studies and development of novel treatments for many
demyelinating diseases (Steinman, 1999), such as multiple sclerosis and
transverse myelitis. However, current methods for myelinated fiber visualization
require either genetic labeling or a large amount of costly antibodies, limiting
their utility to animal tissues or small clinical samples (Wedeen et al., 2012).

We discovered that a subset of lipids preserved in SWITCH-processed tissues
(Hopwood, 1972; Roozemond, 1969) allows lipophilic dyes to selectively visualize
lipid-rich membranes (Schlessinger et al., 1977). In particular, we found that
long-chain dialkylcarbocyanines robustly stain myelinated axons (Figure 5A).
However, when we attempted to label an intact tissue using conventional methods,
we could not achieve dye penetration deeper than 100 mm because dye molecules
were depleted as they rapidly associated with abundant targets in the outer
layer (Figure 5C).

We hypothesized that SWITCH may enable rapid and uniform labeling of intact
tissues by synchronizing the labeling reaction globally. We first screened a
range of chemicals for controlling the binding kinetics of the lipophilic dye
and discovered that 10 mM SDS effectively inhibits staining (Figure 5B). This
result indicates that buffers containing 10 mM SDS might have a potential to be
used as a "SWITCH-Off" buffer. Using an approach analogous to SWITCH-mediated GA
fixation, we thought it might be possible to allow dye molecules to disperse
uniformly throughout a sample in the SWITCH-Off buffer and then activate global
probe-target binding with the SWITCH-On buffer (Figure 5D).

To test this approach, we first incubated a 1-mm-thick mouse brain block in PBST
containing 10 mM SDS and lipophilic dyes for 24 hr at 37C (SWITCH-Off step).
Then, we moved the tissue to PBST and incubated it for 3 hr at 37C (SWITCH-On
step). The result was strikingly uniform labeling of all the myelinated axons
within the sample (Figure 5D). Myelinated fibers were clearly visible throughout
the depth while the control tissue showed signal only from the surface (Figure
5C).

We leveraged this fiber visualization capability to investigate how fibers and
fascicles are organized in a mouse brain. Previous research has shown that
fibers may be organized in 3D grids (Wedeen et al., 2012). However, the
structure of all of the individual fibers has not yet been studied at the
microscopic resolutions and macroscopic scales necessary to visualize their 3D
organization. To that end, we obtained a volume image of labeled myelinated
fibers in a SWITCH-processed mouse brain coronal slice spanning from the cortex
to the striatum (Figure 5E; Movies S2 and S3). This volume shows three main
orientations of the fibers organized in a cubic grid: one radially projecting
from the corpus callosum and two parallel to the corpus callosum. These three
orientations are all orthogonal to one another (Figure 5F; Movie S3). The volume
also shows fascicles that radiate from the striatum and diverge, almost at right
angles, at the corpus callosum (Figure 5E; Movie S3). To quantify this finding
in an unbiased manner, we determined the orientation of each of the fibers
present in the volume and calculated the angles at which these fibers would
intersect (Figure 5G). In all three dimensions, the fibers indeed oriented
themselves approximately orthogonally to each other (Figure 5H). We used a
similar approach to examine the fascicle orientations and found that they
diverge almost orthogonally with respect to the corpus callosum in one of the
axes (Figure 5I). These results are corroborated by the autocorrelation results
(Figure S3 and S4). This finding was made possible by the high-resolution and
large-volume visualization capability of our method. A low-resolution approach
would overlook the individual fibers while a low-volume approach would be unable
to capture the entire connectional anatomy.

We then tested whether this application of SWITCH could be scaled to larger
tissues. We applied the SWITCH approach for labeling an intact mouse hemisphere,
but with 4 days of incubation in PBST containing 10 mM SDS and lipophilic dyes
(SWITCH-Off step) and 1 day in PBST (SWITCH-On step). We imaged this larger
volume using a custom-built, high-speed light-sheet microscope (Tomer et al.,
2012; Tomer et al., 2014) within 2 hr and observed uniform labeling of all
myelinated fibers across the entire tissue (Figure 5J; Movie S4). As
demonstrated, the SWITCH-labeling approach is scalable to organ-scale tissues.
Just by scaling the incubation time with respect to the tissue size, we were
able to label the whole tissue. The cost of the dye molecules used for labeling
the hemisphere was less than one dollar. We also demonstrated that this approach
can be used for visualizing myelinated fibers in spinal cords (Movie S5). These
results show that the SWITCH-labeling method can be used to uniformly label
tissues ranging from a 1-mm-thick block to an entire hemisphere for quantitative
analysis.

### SWITCH Enables Scalable and Uniform Antibody Labeling

We then asked whether SWITCH-mediated labeling could be applied to the use of
antibodies. We hypothesized that SDS could again be used as an effective
inhibitor of antibody-antigen binding in small concentrations. Indeed, when we
assayed for antibody labeling at various concentrations of SDS, we found that
0.5 to 1.0 mM was a high enough concentration to inhibit binding for many
antibodies (Figure 6A).

Based on the results of our binding assay, we chose PBS containing 0.5 mM SDS as
a SWITCH-Off buffer and PBST as a SWITCH-On buffer. We hypothesized that,
because very little antibody-antigen binding is occurring in the SWITCH-Off
condition, antibodies would effectively be able to diffuse to equilibrium
throughout the sample more rapidly than in PBST, in which antibodies are rapidly
depleted at the surface (Figure 6B). To test this, we attempted to label
1-mm-thick mouse brain blocks using anti-histone H3 antibodies. We labeled one
sample using a 12 hr SWITCH-Off/12 hr SWITCH-On cycle and another using a
standard immunohistochemistry protocol with 12 hr of primary antibody incubation
in PBST followed by a 12 hr wash. For the SWITCH-On step, antibodies were not
added to PBST. The result was a large increase in penetration depth and overall
signal uniformity in the SWITCH sample relative to the control (Figures 6B and
6C; Movie S6).

## Discussion

We have developed SWITCH, a simple method that enables scalable proteomic
imaging of intact systems without requiring any specialized equipment or
reagents. SWITCH is complementary to many pioneering technologies, each of which
has its own unique advantages. For example, matrix-assisted laser desorption
ionization mass spectrometry (MALDI-MS) and laser-ablation inductively coupled
plasma mass spectrometry (LA-ICP-MS) allow visualization of a large subset of
proteins and other biomolecules without a priori knowledge of targets. Recent
advances in imaging mass spectrometry combined with immunohistochemistry (IHC)
have significantly improved resolution (Angelo et al., 2014; Giesen et al.,
2014), which was limited in MALDI-MS and LA-ICP-MS. This approach remarkably
demonstrated analysis of more than 100 targets at subcellular resolution.

Multiplexing strategies for IHC that rely on iterative staining and elution have
been developed. Among several pioneering techniques is array tomography, which
involves cutting a tissue sample into tens or hundreds of nanometer-thick
sections for staining and imaging (Micheva et al., 2010). These sections can be
repeatedly washed and stained for probing different proteins. This powerful
method yields subcellular resolution images of a small volume of tissue with
fairly high multiplexing capability. Although these advanced technologies enable
new approachesin studying complex biological systems, these methods require
specialized equipment and are, therefore, difficult to implement in most labs.

With the aim of developing a simple and scalable method for proteomic imaging of
both large animal and human samples, we first needed to devise the SWITCH method
for controlling a broad range of chemical reactions in tissue processing to
achieve uniform sample treatment regardless of tissue size and type. SWITCH
dynamically modulates chemical reaction kinetics to synchronize the reaction
time between molecules throughout the system. This strategy enables all
endogenous molecular targets in a large intact tissue to experience similar
reaction conditions (time and concentration). As a result, large tissues can be
uniformly processed.

The SWITCH approach takes advantage of the way certain chemicals can be
reversibly and rapidly changed by simply modulating their surrounding
environment. For instance, in the GA-tissue-gelling step, we were able to
decrease the rate of GA-biomolecule crosslinking by two orders of magnitude by
using pH 3 buffer, because primary amine groups in endogenous biomolecules are
protonated at low pH and the resulting charged amine cannot react with GA
(Hopwood, 1972). This pH-dependent reactivity means that after uniformly
dispersing GA in a tissue at low pH, we can "switch-on" inactivated amine groups
by changing the amine’s surrounding environment to a neutral-pH buffer. At
neutral pH, charged amine groups are rapidly deprotonated and become reactive.
In the case of human samples or animal samples that were previously PFA-fixed
for a different purpose, this simple strategy enables all the endogenous
biomolecules in a large intact tissue to simultaneously experiencea similar
GA-fixation/gelling condition. PFA-fixed tissues can withstand treatment at low
pH while GA molecules are introduced. In the case of non-fixed samples, we
recommend that they first be fixed with PFA before exposure to acidic
conditions. If perfusion is possible, it is the recommended method of sample
preservation.

Uniform GA-tissue-gel formation is a crucial first step toward our goal.
Fixation of large samples via traditional immersion is unlikely to uniformly
preserve them because highly reactive GA molecules are depleted within the outer
layers of a sample. This presents a significant problem for iterative
staining-based methods that rely on the removal of imaged probes using harsh
elution conditions, because non-uniform preservation results in non-uniform loss
of structure and molecules throughout the process. As demonstrated, our
pH-SWITCH strategy ensures exceptionally uniform preservation of biological
tissues that cannot be perfused (e.g., banked human clinical samples), meeting
the requirements of proteomic imaging and quantitative phenotyping.

It has been noted that fixation with GA results in an increase in broad spectrum
autofluorescence. While this autofluorescence has been low enough to allow
quantitative analysis, it could be problematic in visualizing targets with low
copy number. We investigated the use of sodium borohydride as a method of
reducing autofluorescence, but found that the tissue damage resulting from this
incubation procedure offset any benefits obtained from the modest decrease in
autofluorescence that we were able to observe (Figure S5).

The use of reducing agents has allowed us to eliminate the issue of tissue
browning during high-temperature clearing, but we also observed that excessive
use of these chemicals may cause gradual tissue weakening. This is likely due to
the reduction of disulfide linkages that maintain the tertiary structure of
proteins within a sample, resulting in increased protein denaturation. Protein
denaturation may lead to reduced sample antigenicity, but we have not found this
to be an issue when using conservative amounts of reducing agents. Additionally,
due to the instability of mRNA at elevated temperatures, this method of rapid
clearing is not compatible with methods that require the preservation of mRNA
(Figure S6).

Multiplexed imaging requires software to warp each experiment into a common
coordinate system despite the subtle physical differences between each staining
round. Variance can come in the form of rigid body changes (rotation,
translation, and scale), illumination artifacts, stain quality, and tissue
degradation. We observed that a feature-based algorithm gives maximum robustness
across these sources of variance at the cost of increased computational
requirements—a reasonable trade given the declining costs of such resources. To
simplify the process, gross rigid alignments (i.e., rotating the tissue 180
degrees) are still best handled by human eye before the data are passed to the
algorithm to achieve the cellular-scale registration.

SWITCH can provide a reliable way to obtain integrated high-dimensional
information from intact biological samples. Using the  cross-talk-free  dataset,
we  successfully  performed non-biased combinatorial expression analysis of a
single human clinical tissue to unequivocally identify diverse cell-types based
on their distinct protein expression patterns. Our quantitative analysis shows
that CR+/PV+ cells do not exist within the examined volume of the human V2
cortex. The same finding was reported in mouse visual cortex (Gonchar et al.,
2007), but such co-expression patterns among calcium-binding proteins may differ
among brain regions and between individuals and species (Anelli and Heckman,
2005; Defelipe et al., 1999), which, therefore, calls for more comprehensive
large-scale investigation.

We observed many NeuN-negative interneurons. NeuN, a neuron-specific RNA-binding
protein known as Rbfox3 protein (Kim et al., 2009), has been widely used as a
pan-neuronal marker for statistical analysis of many types of mature neurons
(Baleriola et al., 2014; Pickrell et al., 2015). Only a few types of neurons are
exceptions, such as cerebellar Purkinje cells, olfactory bulb mitral cells, and
retinal photoreceptor cells (Mullenet al., 1992). However, even though we
applied strict criteria to prevent weak NeuN+ cells from being identified as
NeuN- cells, substantial portions of CB+, CR+, and PV+ neurons were still NeuN-
while all SMI+ neurons were NeuN+. This resultis supported by a recent report
that some CR+ are not NeuN+, and CR and NeuN immunoreactivities have a negative
correlation in the avian brainstem (Bloom et al., 2014). Likewise, in our
experiments on human visual association cortex, cells with strong
immunoreactivity against calcium-binding protein markers were frequently
negative or very weakly positive for NeuN. These findings, together with a
series of exceptional reports such as those on NeuN+ cultured astrocytes
(Darlington et al., 2008) and GFAP+ neuron-like cells (Oka et al., 2015),
indicate that classical cell-type markers, particularly NeuN, may need to be
used more carefully in light of their selectivity and function.

The SWITCH method has the potential to modulate a wide range of probe-target
binding reactions. Probe-target interactions are governed by a multiplicity of
non-covalent bonds such as hydrogen bonds, electrostatic forces, van der Waals
bonds, and hydrophobic interactions (Mian et al., 1991). These weak forces can
be effectively controlled by changing the surrounding chemical environment
(e.g., ionic strength, pH, chemical additive, and temperature) (Kamata et al.,
1996). For instance, we discovered that the addition of SDS alone, in different
concentrations, can completely inhibit lipophilic dye-target and
antibody-antigen binding reactions.

The SWITCH method’s unique uniform-labeling capability enables quantitative
analysis of large tissues that was previously only possible for thin tissue
sections. Quantitative analysis relies heavily on signal intensity and SNR.
Non-uniform or heterogeneous labeling would prohibit or, even worse, bias the
analysis. While post hoc image processing methods could correct for small
gradients in labeling (or imaging), large gradients caused by non-uniform
labeling, where the surface of the tissue is saturated while the core is mostly
unlabeled, would preclude image recovery. If the labeling is heterogeneous, the
resulting data would be heavily biased, and no image processing methods could
salvage such data in a fair way. This is why quantitative analysis of
non-uniformly labeled tissues is a great challenge. However, tissues labeled
using SWITCH exhibit uniform signal intensity and SNR throughout the tissue.
Such a clear dataset lends itself well to quantitative analysis.

Although SWITCH enables processing of large samples, the speed of labeling is
still fundamentally limited by passive diffusion. This is not of concern for
smaller samples or even single-round investigation of large samples, but
multiplexed imaging of large samples becomes impractical as a result,
potentially taking months or years to collect the range of desired data.
Recently developed methods of stochastic electrotransport (Kim et al., 2015)
could potentially be combined with SWITCH to facilitate these experiments.

Together with its simplicity, scalability, and broad applicability, our data
suggest that SWITCH provides access to high-dimensional multi-scale information
that may help to understand health and disease from molecules to cells to entire
systems.

## Experimental Procedures

### Mice

Young adult male and female C57BL/6 and Thy1-eGFP-M mice were housed in a
reverse 12 hr light/dark cycle with unrestricted access to food and water. All
experimental protocols were approved by the MIT Institutional Animal Careand Use
Committee and Division of Comparative Medicine and were in accordance with
guidelines from the National Institute of NIH.

### SWITCH-Mediated Tissue Preservation

PFA-fixed human samples were washed in a solution consisting of 50% PBS titrated
to pH 3 using HCl, 25% 0.1 M HCl, and 25% 0.1 M potassium hydrogenphthalate
(KHP). This wash solution was then replaced with fresh solution with the
addition of 4%–10% GA. The samples were then incubated in this pH 3 solution at
4C for 2 days with gentle shaking. The solution was then replaced with PBS with
the addition of 1%–4% GA and the sample was again allowed to incubate for 2 days
at 4C and 2–7 hr at 37C with gentle shaking. The sample was then washed in PBS
at room temperature (RT) for 1 day with gentle shaking. After washing, reactive
GA within the sample was inactivated by incubation in a solution consisting of
4% glycine and 4% acetamide for 1 day at 37C with gentle shaking. Finally, the
sample was washed for 1 day in PBS at RT with gentle shaking.

### Passive Clearing with Thermal Energy

Aqueous clearing solution containing 200 mM SDS, 10 mM lithium hydroxide, 40 mM
boric acid, and a variable amount of anti-browning agent (i.e., 0–50 mM sodium
sulfite or 0%–0.5% w/v 1-thioglycerol) was titrated to pH 9 using sodium
hydroxide before use. Samples were incubated at 60–80C until clearusing
Easy-Passive (EP-1001; Live Cell Instrument) or a water bath.

### Sample Delabeling

Imaged samples were delabeled in clearing solution at 60–80C (elution condition)
for 1–2 days for large samples and O/N for thin samples.

### SWITCH-Mediated Fluorescent Labeling

Samples were incubated in SWITCH-Off solution (0.5 or 10 mM SDS in PBS) O/N with
gentle shaking at 37C and transferred to a fresh volume of SWITCH-Off solution
(containing molecular probes) just enough to cover the sample. Samples were
incubated at 37C with gentle shaking and times were scaled with sample size.
Samples were then transferred to a large volume of PBST (SWITCH-On) and
incubated at 37C with gentle shaking.

## Supplemental Information

Supplemental Information includes Supplemental Experimental Procedures, six
figures, two tables, and six movies and can be found with this article online at
http://dx.doi.org/10.1016/j.cell.2015.11.025.

## Author Contributions

K.C. conceived the SWITCH idea. E.M., J.H.C, D.G., T.K., J.S., and K.C. designed
the experiments. E.M. designed and performed multiplexed staining and imaging
experiments. D.G. and H.S.S. developed and implemented the registration
algorithm. T.K. performed all analysis related to the human visual cortex sample
with input from K.C., M.P.F., and H.S.S. J.H.C. performed all analysis related
to DiD datasets. E.M., N.B., and S.-Y.K. performed antibody compatibility
testing. E.M., J.H.C, N.B., A.H., and J.S. performed testing of cross-linked
protein gels with various fixatives. E.M. performed protein loss and structural
preservation experiments. E.M., J.S., and N.B. designed and performed
experiments relating to thermal clearing and use of anti-browning agents. E.M.
and M.M. performed DiD staining experiments. E.M. and Y.-G.P. performed antibody
SWITCH experiments. H.C. designed and built the light-sheet microscope, and
J.H.C. developed the software. J.-Y.P. provided spinal cord samples. Y.-G.P.
performed mRNA experiments. M.P.F. provided human samples. H.S.S., V.J.W., and
M.P.F. provided helpful discussion regarding the manuscript. S.V. provided
experimental support. E.M., J.H.C.,D.G., T.K., J.S., S.-Y.K., V.J.W., and K.C.
wrote the manuscript. K.C. supervised all aspects of the work.

## Acknowledgments

We thank the entire Chung laboratory for support and helpful discussions.
S.-Y.K. was supported by the Simons Postdoctoral Fellowship and the Life
Sciences Research Foundation. K.C. was supported by Burroughs Wellcome Fund
Career Awards at the Scientific Interface, the Searle Scholars Program, the
Michael J. Fox Foundation, DARPA, the JPB Foundation (PIIF and PNDRF), and NIH
(1-U01-NS090473-01). M.P.F. was supported in part by the Massachusetts Alzheimer
Disease Research Center (5 P50 AG005134). Resources that may help enable general
users to establish the methodology are freely available online.
(www.chunglabresources.org).

Received: August 31, 2015
Revised: October 9, 2015
Accepted: November 10, 2015
Published: December 3, 2015

## References

Alivisatos, A.P., Chun, M., Church, G.M., Deisseroth, K., Donoghue, J.P.,
Greenspan, R.J., McEuen, P.L., Roukes, M.L., Sejnowski, T.J., Weiss, P.S.,and
Yuste, R. (2013). Neuroscience. The brain activity map. Science339,1284–1285.

Anelli, R., and Heckman, C.J. (2005). The calcium binding proteins calbindin,
parvalbumin, and calretinin have specific patterns of expression in the
graymatter of cat spinal cord. J. Neurocytol.34, 369–385.

Angelo, M., Bendall, S.C., Finck, R., Hale, M.B., Hitzman, C., Borowsky, A.D.,
Levenson, R.M., Lowe, J.B., Liu, S.D., Zhao, S., et al. (2014). Multiplexed
ionbeam imaging of human breast tumors. Nat. Med.20, 436–442.

Baleriola, J., Walker, C.A., Jean, Y.Y., Crary, J.F., Troy, C.M., Nagy, P.L.,
and Hengst, U. (2014). Axonally synthesized ATF4 transmits a
neurodegenerativesignal across brain regions. Cell158, 1159–1172.

Bloom, S., Williams, A., and MacLeod, K.M. (2014). Heterogeneous calretinin
expression in the avian cochlear nucleus angularis. J. Assoc. Res.
Otolaryngol.15, 603–620.

Campbell, M.J., and Morrison, J.H. (1989). Monoclonal antibody to neurofilament
protein (SMI-32) labels a subpopulation of pyramidal neurons in the hu-man and
monkey neocortex. J. Comp. Neurol.282, 191–205.

Chung, K., and Deisseroth, K. (2013). CLARITY for mapping the nervous system.
Nat. Methods10, 508–513.

Chung, K., Wallace, J., Kim, S.-Y., Kalyanasundaram, S., Andalman, A.S.,
Davidson, T.J., Mirzabekov, J.J., Zalocusky, K.A., Mattis, J., Denisin, A.K., et
al. (2013). Structural and molecular interrogation of intact biological
systems.Nature497, 332–337.

Darlington, P.J., Goldman, J.S., Cui, Q.L., Antel, J.P., and Kennedy,
T.E.(2008). Widespread immunoreactivity for neuronal nuclei in cultured humanand
rodent astrocytes. J. Neurochem.104, 1201–1209.

de Sousa, A.A., Sherwood, C.C., Schleicher, A., Amunts, K., MacLeod, C.E., Hof,
P.R., and Zilles, K. (2010). Comparative cytoarchitectural analyses of stri-ate
and extrastriate areas in hominoids. Cereb. Cortex20, 966–981.

Defelipe, J., Gonza ́lez-Albo, M.C., Del Rı ́o,M.R., and Elston, G.N. (1999).
Distribution and patterns of connectivity of interneurons containing calbindin,
cal-retinin, and parvalbumin in visual areas of the occipital and temporal lobes
of the macaque monkey. J. Comp. Neurol.412, 515–526.

Friedman, M. (1996). Food Browning and Its Prevention: An Overview. J. Agric.
Food Chem.44, 631–653.

Giesen, C., Wang, H.A.O., Schapiro, D., Zivanovic, N., Jacobs, A., Hattendorf,
B., Schuffler, P.J., Grolimund, D., Buhmann, J.M., Brandt, S., et al.
(2014).Highly multiplexed imaging of tumor tissues with subcellular resolution
by mass cytometry. Nat. Methods11, 417–422.

Gonchar, Y., Wang, Q., and Burkhalter, A. (2007). Multiple distinct subtypes of
GABAergic neurons in mouse visual cortex identified by triple
immunostaining.Front. Neuroanat.1,3.

Hopwood, D. (1967). Some aspects  of fixation  with  glutaraldehyde. A
biochemical and histochemical comparison of the effects of formaldehyde and
glutaraldehyde fixation on various enzymes and glycogen, with a note on
penetration of glutaraldehyde into liver. J. Anat.101, 83–92.

Hopwood, D. (1970). The reactions between formaldehyde, glutaraldehyde and
osmium tetroxide, and their fixation effects on bovine serum albumin and on
tissue blocks. Histochemie24, 50–64.Cell163, 1500–1514, December 3, 2015ª2015
Elsevier Inc.1513

Hopwood, D. (1972). Theoretical and practical aspects of glutaraldehyde
fixation. Histochem. J.4, 267–303.

Kamata, N., Enomoto, A., Ishida, S., Nakamura, K., Kurisaki, J., and
Kamino-gawa, S. (1996). Comparison of pH and ionic strength dependence of
interactions between monoclonal antibodies and bovine b-lactoglobulin.
Biosci.Biotechnol. Biochem.60, 25–29.

Kasthuri, N., Hayworth, K.J., Berger, D.R., Schalek, R.L., Conchello, J.A.,
Knowles-Barley, S., Lee, D., Vázquez-Reina, A., Kaynig, V., Jones, T.R.,et al.
(2015). Saturated Reconstruction of a Volume of Neocortex. Cell162,648–661.

Keller, S., Heerklotz, H., and Blume, A. (2006). Monitoring lipid membrane
translocation of sodium dodecyl sulfate by isothermal titration calorimetry.J.
Am. Chem. Soc.128, 1279–1286.

Kim, K.K., Adelstein, R.S., and Kawamoto, S. (2009). Identification of
neuronalnuclei (NeuN) as Fox-3, a new member of the Fox-1 gene family of
splicing factors. J. Biol. Chem.284, 31052–31061.

Kim, S.-Y., Cho, J.H., Murray, E., Bakh, N., Choi, H., Ohn, K., Ruelas, L.,
Hubbert, A., McCue, M., Vassallo, S.L., et al. (2015). Stochastic
electrotransport selectively enhances the transports of highly electromobile
molecules. Proc.Natl. Acad. Sci. USA112, E6274–E6283.

Leuba, G., Kraftsik, R., and Saini, K. (1998). Quantitative distribution of
parvalbumin, calretinin, and calbindin D-28k immunoreactive neurons in the
visual cortex of normal and Alzheimer cases. Exp. Neurol.152, 278–291.

Manzo, C., van Zanten, T.S., Saha, S., Torreno-Pina, J.A., Mayor, S., and
Garcia-Parajo, M.F. (2014). PSF decomposition of nanoscopy images via Bayesian
analysis unravels distinct molecular organization of the cell membrane. Sci.
Rep.4, 4354.

McCaslin, A.F.H., Chen, B.R., Radosevich, A.J., Cauli, B., and Hillman,
E.M.C.(2011). In vivo 3D morphology of astrocyte-vasculature interactions in the
somatosensory cortex: implications for neurovascular coupling. J. Cereb. Blood
Flow Metab.31, 795–806.

Mian, I.S., Bradwell, A.R., and Olson, A.J. (1991). Structure, function and
properties of antibody binding sites. J. Mol. Biol.217, 133–151.

Micheva, K.D., Busse, B., Weiler, N.C., O’Rourke, N., and Smith, S.J. (2010).
Single-synapse analysis of a diverse synapse population: proteomic imaging
methods and markers. Neuron 68, 639–653.

Mullen, R.J., Buck, C.R., and Smith, A.M. (1992). NeuN, a neuronal specific
nuclear protein in vertebrates. Development 116, 201–211.

Oka, Y., Ye, M., and Zuker, C.S. (2015). Thirst driving and suppressing signals
encoded by distinct neural populations in the brain. Nature520, 349–352.

Pickrell, A.M., Huang, C.-H., Kennedy, S.R., Ordureau, A., Sideris, D.P.,
Hoekstra, J.G., Harper, J.W., and Youle, R.J. (2015). Endogenous Parkin
Preserves Dopaminergic Substantia Nigral Neurons following Mitochondrial DNA
Mutagenic Stress. Neuron 87, 371–381.

Rah, J.-C., Bas, E., Colonell, J., Mishchenko, Y., Karsh, B., Fetter, R.D.,
Myers,E.W., Chklovskii, D.B., Svoboda, K., Harris, T.D., and Isaac, J.T. (2013).
Thalamocortical input onto layer 5 pyramidal neurons measured using quantitative
large-scale array tomography. Front. Neural Circuits 7, 177.

Renier, N., Wu, Z., Simon, D.J., Yang, J., Ariel, P., and Tessier-lavigne,
M.(2014). iDISCO: A Simple, Rapid Method to Immunolabel Large Tissue Samples for
Volume Imaging. Cell 159, 896–910.

Richardson, D.S., and Lichtman, J.W. (2015). Clarifying Tissue Clearing. Cell
162, 246–257.

Roozemond, R.C. (1969). The effect of fixation with formaldehyde and
glutaraldehyde on the composition of phospholipids extractable from rat
hypothalamus. J. Histochem. Cytochem.17, 482–486.

Schlessinger, J., Axelrod, D., Koppel, D.E., Webb, W.W., and Elson, E.L.(1977).
Lateral transport of a lipid probe and labeled proteins on a cell membrane.
Science195, 307–309.

Steinman, L. (1999). Assessment of animal models for MS and demyelinating
disease in the design of rational therapy. Neuron24, 511–514.

Sung, H.W., Hsu, H.L., Shih, C.C., and Lin, D.S. (1996). Cross-linking
characteristics of biological tissues fixed with monofunctional or
multifunctional epoxy compounds. Biomaterials17, 1405–1410.

Susaki, E.A., Tainaka, K., Perrin, D., Kishino, F., Tawara, T., Watanabe, T.M.,
Yokoyama, C., Onoe, H., Eguchi, M., Yamaguchi, S., et al. (2014). Whole-brain
imaging with single-cell resolution using chemical cocktails and computational
analysis. Cell157, 726–739.

Thomas, C., Ye, F.Q., Irfanoglu, M.O., Modi, P., Saleem, K.S., Leopold, D.A.,
and Pierpaoli, C. (2014). Anatomical accuracy of brain connections derived from
diffusion MRI tractography is inherently limited. Proc. Natl. Acad. Sci.USA111,
16574–16579.

Tomer, R., Khairy, K., Amat, F., and Keller, P.J. (2012). Quantitative
high-speed imaging of entire developing embryos with simultaneous multiview
light-sheet microscopy. Nat. Methods 9, 755–763.

Tomer, R., Ye, L., Hsueh, B., and Deisseroth, K. (2014). Advanced CLARITY for
rapid and high-resolution imaging of intact tissues. Nat. Protoc.9, 1682–1697.

Wedeen, V.J., Rosene, D.L., Wang, R., Dai, G., Mortazavi, F., Hagmann, P., Kaas,
J.H., and Tseng, W.-Y.I. (2012). The geometric structure of the brain fiber
pathways. Science 335, 1628–1634.

Yuste, R. (2015). From the neuron doctrine to neural networks. Nat. Rev.
Neurosci.16, 487–497.

Zuccaro, E., and Arlotta, P. (2013). The quest for myelin in the adult brain.
Nat. Cell Biol.15, 572–575.1514Cell163, 1500–1514, December 3, 2015ª2015
Elsevier Inc.
