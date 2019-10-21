# Simple, scalable proteomic imaging for high-dimensional profiling of intact systems

\slshape

Evan Murray\*, Jae Hun Cho\*, Daniel Goodwin\*, Taeyun Ku\*, **Justin Swaney**\*,
Sung-Yon Kim, Heejin Choi, Young-Gyun Park, Jeong-Yoon Park, Austin Hubbert,
Margaret McCue, Sara Vassallo, Naveed Bakh, Matthew P. Frosch, Van J. Wedeeng,
H. Sebastian Seung, and Kwanghun Chung [^1]

[^1]: \* indicates co-first authorship.

\upshape

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
intricate tissue organizations [@Alivisatos2013; @Kasthuri2015; @Yuste2015].
Understanding the complex interactions of these components is essential for many
fields of biology and often requires high-dimensional information across many
scales. Although it is desirable to obtain such information from the same tissue
due to large individual variations, combined measurement of many molecular
andanatomical traits remains an unmet goal in biology despite the remarkable
success of current pioneering methods, such as array tomoagraphy [@Rah2013].

Rapidly evolving tissue-clearing techniques may enable multiplexed labeling and
imaging of intact samples using light microscopy [@Chung2013a;
@Richardson2015; @Susaki2014]. For instance, the CLARITY technique has
demonstrated three rounds of immunostaining of mouse brain tissue [@Chung2013].
However, we have noticed that the polyacrylamide-based framework loses
structural integrity upon repeated exposure to the elution condition. Recent
reports also suggest that preservation of antigenicity in the CLARITY method may
not be optimal [@Renier2014]. Furthermore, the necessary tissue-gel
hybridization step requires delivery of charged thermal initiators with limited
diffusivity and stability. This necessity imposes a limit on the tissue size
that can be processed withoutthe use of transcardial perfusion.

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

## Results

### Synchronizing Dialdehyde-Tissue-Gel Formation Enables Scalable Tissue Preservation

First, we sought to develop a way to transform animal and human samples into a
mechanically and chemically stable form for multiplexed imaging. We hypothesized
that small, non-ionic, multifunctional crosslinkers might satisfy two key
requirements for such a transformation: (1) rapid penetration without the use of
perfusion and (2) a high degree of molecular crosslinking to improve sample
durability [@Sung1996]. Among many options, we chose to
evaluate the following owing to their small size and high water solubility
(Figure \ref{fig1-1}A): ethyleneglycol diglycidyl ether (EGDGE), dipropylene glycol
diglycidyl ether (GE23), 1,4-butanediol diglycidyl ether (GE21),
glycerolpolyglycidyl ether (EX-313), and glutaraldehyde (GA).

![Synchronizing Dialdehyde-Tissue-Gel Formation Enables Scalable Tissue Preservation. \label{fig1-1}](source/figures/SWITCH/figure1.jpg){ width=100% }

\begin{figure*}
\caption*{
(A) Chemical structures of various multifunctional fixatives. (B) Crosslinked
protein gels before and after exposure to the elution condition. Scale bars, 10
mm. Polyacrylamide (AA) gel swelled and became fragile, whereas multifunctional
fixative gels remained intact with minimal expansion. (C) Mass percent change of
crosslinked protein gels after exposure to the harsh condition. EDGDE, GE21, and
EX-313 were incapable of forming gels at low BSA concentration. Error bars show
mean ± SD. (D) The gelation time for protein gels crosslinked with GA is nearly
200-fold higher at pH 3 than it is at neutral pH at 4C. Error bars show mean ±
SD. (E) Schematic diagram illustrating the process of scalable and uniform
tissue-gel formation without perfusion using SWITCH. GA molecules diffuse into
an intact tissue without reacting with biomolecules in pH 3 buffer (SWITCH-Off
step). When GA is uniformly dispersed throughout the tissue, the sample is moved
to pH 7 buffer (SWITCH-On step) to initiate global gelation/fixation and achieve
uniform tissue preservation. (F) Coronal slices from the middle of whole rat
brains passively fixed with (bottom) or without (top) SWITCH. After fixation,
the middle coronal slices were cut and incubated in the elution condition for 1
hr. The core of the control slice completely disintegrated, whereas the
SWITCH-processed slices remained intact. Scale bars, 6 mm. (G) Only ~3% of
proteins are lost in SWITCH-processed brain tissues as opposed to ~10%–30% with
AA-based methods. Error bars show mean ± SD. (H and I) Antigenicity of proteins
is well preserved throughout the clearing process in SWITCH. Of the antibodies
tested, 86 of 90 are compatible with SWITCH. (J and K) SWITCH-mediated fixation
maximally preserves macroscopic (J) and microscopic (K) structures throughout
the elution process. (J) Cross-sectional images of 1-mm-thick mouse coronal
slices after exposure to the elution condition. The CLARITY-processed tissue
shows significant tissue deformation and collapse, whereas the SWITCH-processed
tissue is highly uniform with no signs of macroscopic deformation. Z-step size,
20 µm; 10x, 0.3 NA, water-immersion objective. Scale bars, 1 mm. (K)
GFP-expressing neurons in the cortex of Thy-1-EGFP mouse brain before and after
exposure to the elution condition and anti-GFP staining. 25x, 0.95 NA,
water-immersion objective. Scale bars, 30 µm.
}
\end{figure*}

We found that all of these chemicals except GE23 formed a solid gel upon
incubation with 15% bovine serum albumin (BSA), indicating the formation of a
crosslinked network (Figure \ref{fig1-1}B). We examined the stability of the
gels along with poly-acrylamide (AA)-BSA gels by measuring the change in their
volume after incubation in a 200 mM SDS solution heated to 80C (elution
condition). AA-BSA gels swelled and became fragile after exposure to the harsh
condition (Figures \ref{fig1-1}B and \ref{fig1-1}C), whereas multifunctional
fixative-BSA gels maintained their structural integrity. In particular, GA-BSA
gels showed minimal volume change at a wide range of BSA and GA concentrations,
whereas others only gelled at high protein concentrations (Figure
\ref{fig1-1}C). This result indicates that multifunctional fixatives alone might
be sufficient to form a stable matrix that can with stand the harsh elution
condition. However, because the average protein content throughout mouse brain
samples is around 10% and may be lower within certain regions, we decided that
GA is the crosslinker most likely to form a uniform framework throughout all
regions of a sample.

Next, we asked whether GA can rapidly penetrate tissue to form a uniform
tissue-gel without the use of perfusion, which is required for processing most
human clinical samples. We incubated a non-fixed whole adult rat brain in PBS
containing 1% GA for 2 days and characterized the GA penetration depth and gel
formation. Although the small size of GA should make it highly mobile, only the
outer layer of the brain was fixed (Figure \ref{fig1-1}F). When a coronal slice
from the middle of the brain was exposed to the elution condition, the core of
the tissue completely disintegrated, indicating that no gel matrix had formed in
the center of the brain (Figure \ref{fig1-1}F). Limited GA penetration has
significantly hampered its use in preserving large postmortem tissues
[@Hopwood1967]. We suspect that rapid reaction of GA with native biomolecules
within the outer layer of the brain may cause depletion of GA molecules before
they can reach the core.

To overcome this issue, we sought to control the reaction kinetics of GA and
biomolecules throughout the system using the SWITCH approach to achieve uniform
tissue preservation. We noted that the GA reaction rate is pH-dependent
[@Hopwood1970]. Indeed, when we titrated solutions of GA and BSA to pH 3, GA-BSA
gel formation time increased by nearly 200-fold (Figure \ref{fig1-1}D). Using
this pH dependence, we were able to disperse GA uniformly throughout a sample by
switching off the crosslinking reaction with a low-pH buffer (Figure
\ref{fig1-1}E, left). After 2 days of incubation at low pH, we switched on
sample-wide GA-tissue crosslinking by shifting the pH of the sample to a neutral
pH (Figure \ref{fig1-1}E, right). Using this passive buffer-switching approach,
we were able to achieve complete GA penetration and uniform gel formation
throughout the entire rat brain (Figure \ref{fig1-1}F).

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
(Figure \ref{fig1-1}G).

We next asked whether antigenicity of the retained biomolecules is well
preserved. We tested 90 antibodies, targeting biomolecules of different sizes
(single amino acid to proteins) and subcellular localizations (membrane bound,
cytoplasm, nucleus, synapses). Surprisingly, 86 of 90 antibodies were compatible
with GA-tissue-gel (Figures \ref{fig1-1}H, and \ref{fig1-1}I, and S1; Table S1).
Note that even small molecules, such as dopamine, which are not typically
compatible with PFA-fixation, were observable in GA-tissue-gel after the
complete removal of lipid bilayers (Figure S1). These biomolecules were stable
against heat and chemical treatment, and their antigenicity was well preserved
after exposure to elution conditions.

Good structural preservation is essential for resolving protein location with
high precision and for studying molecular inter relationships. To characterize
the macroscale structural preservation of the samples, we cleared 1-mm-thick
tissue blocks using the elution condition and visualized their structural
deformation (Figure \ref{fig1-1}J). The PFA-only tissue completely
disintegrated. Even the AA-tissue-gel exhibited large deformations overall.
GA-tissue-gel, however, showed no signs of structural damage throughout the
entirety of the sample.

We next examined structural preservation on a microscopic scale. We imaged
GFP-expressing neurons in the cortex of a PFA-fixed 1-mm-thick Thy1-EGFP M line
block (Figure \ref{fig1-1}K). We then SWITCH-processed the tissue, cleared it
using the harsh elution condition, stained it against GFP, and imaged the same
neurons. As shown in Figure \ref{fig1-1}K, the microscopic morphology of the
neurons was well preserved throughout the entire process. These results show
GA-tissue-gel may be ideal for highly multiplexed structural and molecular
phenotyping.

### SWITCH and Robust Computational Algorithms Enable Highly Multiplexed Imaging at Single-Cell Resolution

Interrogating the three-dimensional (3D) distribution of molecules, cells, and
the overall tissue organization requires precise co-registration of multiple
volume images. We first asked if simple manual overlay of two datasets allows
precise co-registration. As a stringent test, we used datasets from multi-round
imaging of a SWITCH-processed 100-µm-thick human brain slice (100 µm, 200 µm,
200 µm) (Figure \ref{fig1-2}A). The high aspect ratio of such tissues makes it
more prone to physical warping, which renders co-registration particularly
challenging. We first stained the tissue using DAPI and anti-parvalbumin (PV)
antibody. The slice was then enclosed in a space larger than the tissue to
exaggerate possible tissue deformation in the mounting process (Figure
\ref{fig1-2}B). After imaging, the sample was exposed to the elution condition
overnight (O/N) to completely remove imaged probes. We then restained the tissue
using the same probes and repeated the imaging process. Note that only
GA-tissue-gels could maintain their integrity against the elution treatment.
Both AA-tissue-gels and PFA-fixed samples deteriorated rapidly in the same
condition.

![SWITCH and Co-registration Algorithms Enable Highly Multiplexed Imaging at Single-Cell Resolution. \label{fig1-2}](source/figures/SWITCH/figure2.jpg){ width=100% }

\begin{figure*}
\caption*{
(A) The left image shows formalin-fixed postmortem human brain tissue (visual
association cortex, Brodmann area 18). The right image shows a 100-µm section of
this brain tissue after SWITCH processing. Scale bars, 5 mm (left), 300 µm
(right). (B) Natural warping of the sample during imaging was enabled by
mounting within a chamber space larger than the size of the sample.
Representative crosssections of the sample after several rounds of imaging are
shown. Sample thickness, 100 µm. (C) Surface contour maps showing warping of the
sample between imaging rounds. Attempted manual overlay of two PV datasets shows
that sample warping is too severe for single-cell registration without
computational correction. Scale bars, 50 µm. (D) A flow diagram depicting the
sequence of events for automated co-registration of datasets. (E) Fully
co-registered image showing an overlay of 9 rounds of immunostaining. A total of
22 rounds of staining of the same tissue was achieved. R\#2 (Iba1), R\#3 (GFAP),
R\#4 (calbindin, CB), R\#5 (calretinin, CR), R\#7 (PV), R\#8 (Neuropeptide Y),
R\#9 (NeuN), R\#18 (SMI-32), and R\#19 (PV) were used for co-registration and
subsequent quantitative analysis (see Figure 3). The boxed regions indicate the
ROI’s shown in panels. (F–H) Scale bar, 300 µm. (F) Vasculature labeling from 9
rounds of staining after co-registration. Scale bar, 200 µm. (G) PV cell counts
between rounds 7 and 19. After 12 rounds of imaging, 99% of previously detected
PV+ cells were again detected and shown to overlay after co-registration of the
datasets. (H) Images of individual channels with corresponding vasculature
labeling. Scale bar, 50 µm.
}
\end{figure*}

As predicted, a large degree of tissue warping in the mounting process (Figure
\ref{fig1-2}C) made manual overlay insufficient for the task of interrogating a
tissue across multiple staining rounds. To achieve precise co-registration of
volume images in the presence of such high-degree warping, we custom-designed a
robust computational software based on a feature-detection approach that was
ideal for our experimental procedure (Figure \ref{fig1-2}D). Each staining round
contained one fluorescence channel devoted to a lectin stain because the
morphology of blood vessels creates distinctive keypoints that computer vision
algorithms are well suited to identify. With the keypoints, the algorithm warps
the tissue in a physically plausible manner into the correct position (see
Supplemental Experimental Procedures).

As a stringent test of the algorithm, we used the same SWITCH-processed human
sample with the high aspect ratio (Figure \ref{fig1-2}A). For each round, the
sample was stained with DAPI, lectin, and one antibody to label a target
protein. Although at least three antibodies can be used for each round in
addition to lectin and DAPI (Figure S2), we chose to use one antibody for each
round to eliminate any possible cross-talk between channels. After acquiring
images, we destained the sample and began the next round of labeling. We
repeated the above procedure 22 times using markers for various cell types
(Figure \ref{fig1-2}H; Table 1). Staining was not successful in every round due
to the use of non-validated antibodies, sub-optimal staining conditions, or
human error, all of which often occur in general laboratory settings and can
result in the loss of important samples. However, a SWITCH-processed sample is
free from this issue as the tissue can be washed and reused repeatedly.

We were able to successfully co-register all nine datasets with successful
staining (Figures \ref{fig1-2}E and \ref{fig1-2}H; Movie S1). We asked whether
changes in the sample might be occurring between staining rounds. To test this,
we repeated staining with anti-PV antibodies in rounds 7 and 19 and
co-registered the resulting datasets. Even when separated by 12 rounds of
labeling, we were able to achieve single-cell accuracy of registration with 99%
agreement between the two rounds (Figure \ref{fig1-2}G).

We next performed joint statistical analysis of the integrated cross-talk-free
dataset to extract diverse phenotypic information from human brain (Figure
\ref{fig1-3}). We included lectin, GFAP, NeuN, SMI-32, and three calcium-binding
protein channels—calbindin (CB), calretinin (CR), and PV—in the quantitative
analysis. First, we used semi-automated algorithms to identify blood vessels and
cells expressing the target antigens (Figures \ref{fig1-3}A and \ref{fig1-3}B)
and extract their spatial (x, y, z coordinates) and morphological (e.g., cell
soma size) information. Density and size profiles of NeuN-positive cells
(Figures \ref{fig1-3}C and \ref{fig1-3}D) enabled us to define the cortical
layers (Figure \ref{fig1-3}A) according to established criteria [@DeSousa2010].
NeuN+ density was high in cortical layers II and IV, with characteristic small
cells (NeuN in Figures \ref{fig1-3}A, \ref{fig1-3}C, \ref{fig1-3}D, and
\ref{fig1-3}H). Large NeuN+ neurons were concentrated in layers III and V. A
portion of these were large pyramidal neurons positive for SMI-32 (Figures 3A,
3E, and 3H). CB+, CR+, and PV+ cells also showed distinct distribution patterns
along the cortical axis (Figures \ref{fig1-3}A and \ref{fig1-3}D), in agreement
with previous studies [@Defelipe1999; @Leuba1998].

![SWITCH Enables Proteomic Imaging and High-Dimensional Quantitative Phenotyping of Human Clinical Samples. \label{fig1-3}](source/figures/SWITCH/figure3.jpg){ width=100% }

\begin{figure*}
\caption*{
(A) ROI from Figure \ref{fig1-2}E showing semi-automatically detected locations and sizes
of blood vessels (lectin) and diverse cell types (GFAP+, NeuN+, SMI-32+, CB+,
CR+, PV+) in human visual cortex. The identified objects are overlaid on maximum
intensity-projections of raw images of the corresponding channels (dark gray).
Dashed lines divide cortical layers I–VI. (B) 3D rendering of the boxed region
in (A) (200 µm wide x 200 µm high x 104 µm deep) showing identified cells and
blood vessels. (C) A heat map of the soma size distribution of NeuN+ cells,
showing bimodal peaks at cortical layers III and V. (D) Density profiles of
various cell types. (E) Comparison of cell sizes among different types of cells.
One-way ANOVA was performed (***p < 0.001; N = 1,176, 7,835, 249, 1,044, 364 and
449 for each column). Post hoc tests were mostly p < 0.001 except for three
non-significant (n.s.) cases. (F) Distribution of neurons expressing various
subsets of calcium-binding proteins in the human visual cortex. Raw images in
the middle columns show CB+/CR+ or CB+/PV+ neurons (arrows). (G) A
representative NeuN+/SMI-32+/CB+/PV+ cell. (H) Cell counts and densities in
different cortical layers. Cortical layers with the highest density for each
neuronal channel are highlighted. (I) Cell densities for combinatorial
co-expression of three interneuronal markers. (J) Statistics for NeuN- neurons.
(K) Representative images showing NeuN-/CB+, NeuN-/CR+, and NeuN-/PV+ cells
(arrows). The arrowhead indicates a CR+ cell with low NeuN immunoreactivity. (L)
Comparison of cell-to-nearest vessel distances along cortical depth as measured
from cell centroids to vascular boundaries. Post hoc tests following one-way
ANOVA (p < 0.001; N = 935, 4,101, 210, 817, 265 and 331 for each column) were
mostly n.s. except for three cases displayed. *p < 0.05. (M) Vascular density
and distance-to-nearest vessel profiles of GFAP+ or NeuN+ cells along cortical
depth. Mean distances from NeuN+ ($D_N$) and GFAP+ ($D_G$) cells and all
extravascular pixels ($D_p$) are calculated and plotted. Diagrams illustrate the
calculation of the three distances. (N) Cell-to-nearest vessel distances from
NeuN+ cells in two regions—a (n = 570) and b (n = 445) in (M)—before (DN) and
after ($D_N - D_p$) correction. (O) Distribution profile of extravascular pixel-
or cell-to-nearest vessel distances showing similar patterns. Three
interneuronal markers are plotted together. Error bars are shown with mean ±
SEM. Scale bars, 200 µm (A), 50 µm (F, G, and K).
}
\end{figure*}

We  next  performed  unbiased  combinatorial  expression profiling with the six
cell-type specific proteins (GFAP, NeuN, SMI-32, CB, CR, PV). Among 63 possible
combinations, 16 were found (Table S2). We identified sub-populations of CB+/CR+
and CB+/PV+ cells, but no CR+/PV+ or CB+/CR+/PV+, cells (Figures \ref{fig1-3}F,
\ref{fig1-3}H, and \ref{fig1-3}I), in agreement with a previous report regarding
mouse visual cortex [@Gonchar2008]. Interestingly, we observed that a
significant portion of the CB, CR, and PV-positive neurons do not express
detectable levels of NeuN, a widely used pan-neuronal marker (Figures
\ref{fig1-3}J and \ref{fig1-3}K). In particular, a majority of CR+ cells showed
very weak (Figure \ref{fig1-3}K, arrowhead) or no NeuN immunoreactivity (29.1%),
whereas all SMI-32+ cells (Figures \ref{fig1-3}J and \ref{fig1-3}K) were NeuN
positive. These results suggest that NeuN expression may be
neuronal-type-specific in adult human visual association cortex. We also found a
small number of CB+ cells and PV+ cells co-expressing SMI-32, a widely used
pyramidal neuronal marker (Table S2) [@Campbell1989]. Five CB+/PV+ cells were
identified as quadruple-positive (NeuN+/SMI-32+/CB+/PV+) cells (Figure
\ref{fig1-3}G). All of the CB+ cells and PV+ cells co-expressing SMI-32 were
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
within a single intact tissue (Figures \ref{fig1-3}L–\ref{fig1-3}O). As expected
[@McCaslin2011], GFAP+ astrocytes had a shorter mean distance than NeuN+ neurons
(Figure \ref{fig1-3}L). CB+ and PV+ cells were also more closely localized near
blood vessels than NeuN+ cells, but the difference was relatively small. Figure
3M shows that vascular density is not uniform along the cortex. However, the
extravascular pixel-to-vessel distance ($D_p$), which we defined as a reference
parameter to reflect the effect of the 3D vascular geometry (Figure
\ref{fig1-3}M, right), did not show an inverse relationship with vascular
density. This result may suggest that 3D vessel geometry is an important
parameter to be considered in understanding a given vascular environment. In
fact, cell-to-vessel distance profiles of many cell types closely followed the
$D_p$ profile (GFAP+, $D_G$, and NeuN+, $D_N$, shown in Figure \ref{fig1-3}M).
In particular, when $D_p$ was subtracted from cell-to-vessel distances ($D_X$)
to cancel the influence of vascular geometric variation, $D_X-D_p$ turns out to
be very consistent throughout cortical depth (Figure \ref{fig1-3}N). We further
examined the distance distribution profiles for all cell types (Figure
\ref{fig1-3}O). All profiles showed similar characteristic curves, which can be
seen when objects are randomly located in a 3D space [@Manzo2014]. We could not
observe any cell-type-specific distribution profile or bi- or multi-modal
distribution pattern in this sample. Together, these data demonstrate that
SWITCH can be used for high-dimensional quantitative phenotyping of human
clinical samples.

### SWITCH Enables Simple, Rapid, and Scalable Tissue-Clearing

To extend the multiplexed imaging capability of the SWITCH method to large
systems, we developed a simple and rapid clearing method. We hypothesized that
key steps in detergent-mediated lipid removal, such as permeation of SDS through
membranes, might be strongly enhanced by increasing temperature [@Keller2006],
and SWITCH-processed samples may endure prolonged incubation at elevated
temperatures. Indeed, thermal energy drastically increased the passive clearing
speed of SWITCH-processed samples without noticeable tissue damage (Figure
\ref{fig1-4}A). We achieved passive clearing of a whole adult mouse brain within
4 days at 80C (versus 4 weeks at 37C) (Figure \ref{fig1-4}C).

![SWITCH Enables Simple, Rapid, and Scalable Tissue Clearing. \label{fig1-4}](source/figures/SWITCH/figure4.jpg){ width=100% }

\newpage

\begin{figure*}
\caption*{
(A) Images of 1-mm coronal blocks of an adult mouse brain hemisphere before and
after clearing at 37C for 24 hr or 80C for 12 hr. The lipid-extracted tissues
were refractive index (RI)-matched (see SI for details). Scale bars, 3 mm. (B)
Images of mouse brain hemispheres lipid-extracted at 80C for 10 days with 200 mM
SDS containing 0–50 mM sodium sulfite (SS) as an anti-browning agent. Note that
the tissues were not RI-matched. Scale bars, 6 mm. (C) Images of intact adult
mouse brains cleared at 37C (top) and 60C (middle) and 80C (bottom) with and
without 1-thioglycerol (TG). Browning in hightemperature clearing was
effectively prevented by TG. Scale bars, 3 mm. (D) High-temperature (80C)
clearing of whole rat brain with and without TG. Scale bars, 6 mm. (E) Clearing
of human and marmoset samples at 80C. Scale bars, 6 mm. (F) Rapid clearing of
various organs at 80C with and without 50 mM SS. Cleared rat spinal cord is not
RI-matched. Scale bars, 3 mm.
}
\end{figure*}

Upon prolonged exposure to high temperatures, however, samples developed a
brownish hue [@Friedman1996], which may interfere with imaging at certain
wavelengths (Figures \ref{fig1-4}B–\ref{fig1-4}D and \ref{fig1-4}F). We found
that reducing agents, such as sodium sulfite and 1-thioglycerol, effectively
mitigate tissue browning during thermal clearing (Figures
\ref{fig1-4}B–\ref{fig1-4}D). Using thermal clearing with the reducing agents,
we successfully cleared intact adult rat brains (2 weeks) as well as human (1
week) and marmoset samples (1 week), demonstrating the versatility and
scalability of the method (Figures \ref{fig1-4}D and \ref{fig1-4}E). Clearing of
various rodent organs was also demonstrated with lung, kidney, heart, liver, and
spinal cord (Figure \ref{fig1-4}F). The efficacy of sodium sulfite as an
anti-browning agent was seen across all tissues.

### SWITCH Enables Visualization and Quantitative Analysis of Entire Myelinated Fiber Tracts

We also sought to apply SWITCH to characterizing myelinated fiber pathways in
the brain. Visualizing and analyzing neural fibers with high-resolution light
microscopy can provide valuable insights into many studies [@Thomas2014;
@Zuccaro2013], such as validating diffusion tensor imaging (DTI) and
understanding the organizing principles of brain connectivity. Furthermore,
quantitative analysis of myelinated fibers in 3D may benefit clinical studies
and development of novel treatments for many demyelinating diseases
[@Steinman1999], such as multiple sclerosis and transverse myelitis. However,
current methods for myelinated fiber visualization require either genetic
labeling or a large amount of costly antibodies, limiting their utility to
animal tissues or small clinical samples.

We discovered that a subset of lipids preserved in SWITCH-processed tissues
[@Hopwood1972; @Roozemond1969] allows lipophilic dyes to selectively visualize
lipid-rich membranes [@Schlessinger1977]. In particular, we found that
long-chain dialkylcarbocyanines robustly stain myelinated axons (Figure
\ref{fig1-5}A). However, when we attempted to label an intact tissue using
conventional methods, we could not achieve dye penetration deeper than 100 µm
because dye molecules were depleted as they rapidly associated with abundant
targets in the outer layer (Figure \ref{fig1-5}C).

![SWITCH Enables Visualization and Quantitative Analysis of Entire Myelinated Fiber Tracts. \label{fig1-5}](source/figures/SWITCH/figure5.jpg){ width=100% }

\begin{figure*}
\caption*{
(A) DiD and MBP staining on a SWITCH-processed mouse brain slice showing
complete overlap between DiD and MBP. Scale bar, 10 µm. (B) DiD staining with
PBST or with PBS + 10 mM SDS buffer. DiD staining is completely inhibited in PBS
+ 10 mM SDS buffer. Green, syto16; red, DiD; scale bars, 100 µm (top, bottom), 10
µm (middle). (C) DiD staining of a 1-mm-thick mouse coronal block using PBST for
1.5 days at 37C. Only tissue surface is labeled. Scale bar, 200 µm. (D) DiD
staining of a 1-mm-thick mouse coronal block using SWITCH. The sample was first
incubated in DiD, 10 mM SDS containing PBS buffer for 24 hr, then moved to PBST
and incubated for 0.5 day at 37C. The whole sample is uniformly labeled. Scale
bar, 200 µm. (E) Volume image of a 1-mm-thick mouse brain coronal slice stained
with DiD to visualize myelinated tracts acquired using a confocal microscope.
The volume contains both the striatum and the cortex. Scale bar, 200 µm. (F)
Maximum intensity projection of the subvolume (illustrated in white in the
volume image in (E)) shows fascicles from the striatum diverging at the corpus
callosum and fibers near that area in the cortex forming a grid pattern. Scale
bar, 200 µm. (G) Enlarged images of the selected regions of interest in (F)
shows the fibers in the cortex arranged in a grid pattern. Fibers are colorized
based on orientation. Scale bar, 100 µm. (H) Analysis of all the fibers in the
entire volume shows that most fibers make an 89° intersection in xy and yz and
an 88° intersection in xz. (I) Analysis of all the fascicles in the entire
volume shows that they make an 87° turn in xy, a 26° turn in yz, and a 30° turn
in xz. (J) Volume image of a mouse brain hemisphere stained with DiD to
visualize myelinated tracts acquired using a custom-built light-sheet
microscope. Scale bar, 1 mm. (K) Representative images showing individual fibers
and fascicles in three different brain regions in (J). Str, striatum; Hipp,
hippocampus; TH, thalamus. Scale bars, 200 µm.
}
\end{figure*}

We hypothesized that SWITCH may enable rapid and uniform labeling of intact
tissues by synchronizing the labeling reaction globally. We first screened a
range of chemicals for controlling the binding kinetics of the lipophilic dye
and discovered that 10 mM SDS effectively inhibits staining (Figure
\ref{fig1-5}B). This result indicates that buffers containing 10 mM SDS might
have a potential to be used as a "SWITCH-Off" buffer. Using an approach
analogous to SWITCH-mediated GA fixation, we thought it might be possible to
allow dye molecules to disperse uniformly throughout a sample in the SWITCH-Off
buffer and then activate global probe-target binding with the SWITCH-On buffer
(Figure \ref{fig1-5}D).

To test this approach, we first incubated a 1-mm-thick mouse brain block in PBST
containing 10 mM SDS and lipophilic dyes for 24 hr at 37C (SWITCH-Off step).
Then, we moved the tissue to PBST and incubated it for 3 hr at 37C (SWITCH-On
step). The result was strikingly uniform labeling of all the myelinated axons
within the sample (Figure \ref{fig1-5}D). Myelinated fibers were clearly visible
throughout the depth while the control tissue showed signal only from the
surface (Figure \ref{fig1-5}C).

We leveraged this fiber visualization capability to investigate how fibers and
fascicles are organized in a mouse brain. Previous research has shown that
fibers may be organized in 3D grids [@Wedeen2012]. However, the structure of all
of the individual fibers has not yet been studied at the microscopic resolutions
and macroscopic scales necessary to visualize their 3D organization. To that
end, we obtained a volume image of labeled myelinated fibers in a
SWITCH-processed mouse brain coronal slice spanning from the cortex to the
striatum (Figure \ref{fig1-5}E; Movies S2 and S3). This volume shows three main
orientations of the fibers organized in a cubic grid: one radially projecting
from the corpus callosum and two parallel to the corpus callosum. These three
orientations are all orthogonal to one another (Figure \ref{fig1-5}F; Movie S3).
The volume also shows fascicles that radiate from the striatum and diverge,
almost at right angles, at the corpus callosum (Figure \ref{fig1-5}E; Movie S3).
To quantify this finding in an unbiased manner, we determined the orientation of
each of the fibers present in the volume and calculated the angles at which
these fibers would intersect (Figure \ref{fig1-5}G). In all three dimensions,
the fibers indeed oriented themselves approximately orthogonally to each other
(Figure \ref{fig1-5}H). We used a similar approach to examine the fascicle
orientations and found that they diverge almost orthogonally with respect to the
corpus callosum in one of the axes (Figure \ref{fig1-5}I). These results are
corroborated by the autocorrelation results (Figure S3 and S4). This finding was
made possible by the high-resolution and large-volume visualization capability
of our method. A low-resolution approach would overlook the individual fibers
while a low-volume approach would be unable to capture the entire connectional
anatomy.

We then tested whether this application of SWITCH could be scaled to larger
tissues. We applied the SWITCH approach for labeling an intact mouse hemisphere,
but with 4 days of incubation in PBST containing 10 mM SDS and lipophilic dyes
(SWITCH-Off step) and 1 day in PBST (SWITCH-On step). We imaged this larger
volume using a custom-built, high-speed light-sheet microscope [@Tomer2012;
@Tomer2014] within 2 hr and observed uniform labeling of all myelinated fibers
across the entire tissue (Figure \ref{fig1-5}J; Movie S4). As demonstrated, the
SWITCH-labeling approach is scalable to organ-scale tissues. Just by scaling the
incubation time with respect to the tissue size, we were able to label the whole
tissue. The cost of the dye molecules used for labeling the hemisphere was less
than one dollar. We also demonstrated that this approach can be used for
visualizing myelinated fibers in spinal cords (Movie S5). These results show
that the SWITCH-labeling method can be used to uniformly label tissues ranging
from a 1-mm-thick block to an entire hemisphere for quantitative analysis.

### SWITCH Enables Scalable and Uniform Antibody Labeling

We then asked whether SWITCH-mediated labeling could be applied to the use of
antibodies. We hypothesized that SDS could again be used as an effective
inhibitor of antibody-antigen binding in small concentrations. Indeed, when we
assayed for antibody labeling at various concentrations of SDS, we found that
0.5 to 1.0 mM was a high enough concentration to inhibit binding for many
antibodies (Figure \ref{fig1-6}A).

![SWITCH Increases Uniformity of Antibody Labeling in Thick Tissues. \label{fig1-6}](source/figures/SWITCH/figure6.jpg){ width=55% }

\begin{figure*}
\caption*{
(A) Antibody staining of cleared 100-µm mouse brain sections in PBST and various
concentrations of SDS in PBS. SDS effectively inhibits antibody-antigen binding
in a concentration-dependent manner. Scale bar, 200 µm. (B and C) Histone H3
staining of 1-mm-thick mouse cerebral cortex blocks in PBST (B) and using SWITCH
(C). Control sample was incubated in antibodycontaining PBST for 12 hr then
washed for 12 hr. SWITCH sample was incubated in antibody-containing SWITCH-Off
solution for 12 hr then washed in SWITCH-On solution for 12 hr. Sections from
the top, middle, and bottom of the blocks are shown. 3D renderings were
generated from the ROIs shown. SWITCH sample showed vast increase in uniformity
of labeling compared to control. Scale bars, 150 µm (B, left), 200 µm (others).
}
\end{figure*}

Based on the results of our binding assay, we chose PBS containing 0.5 mM SDS as
a SWITCH-Off buffer and PBST as a SWITCH-On buffer. We hypothesized that,
because very little antibody-antigen binding is occurring in the SWITCH-Off
condition, antibodies would effectively be able to diffuse to equilibrium
throughout the sample more rapidly than in PBST, in which antibodies are rapidly
depleted at the surface (Figure \ref{fig1-6}B). To test this, we attempted to
label 1-mm-thick mouse brain blocks using anti-histone H3 antibodies. We labeled
one sample using a 12 hr SWITCH-Off/12 hr SWITCH-On cycle and another using a
standard immunohistochemistry protocol with 12 hr of primary antibody incubation
in PBST followed by a 12 hr wash. For the SWITCH-On step, antibodies were not
added to PBST. The result was a large increase in penetration depth and overall
signal uniformity in the SWITCH sample relative to the control (Figures
\ref{fig1-6}B and \ref{fig1-6}C; Movie S6).

## Discussion

We have developed SWITCH, a simple method that enables scalable proteomic
imaging of intact systems without requiring any specialized equipment or
reagents. SWITCH is complementary to many pioneering technologies, each of which
has its own unique advantages. For example, matrix-assisted laser desorption
ionization mass spectrometry (MALDI-MS) and laser-ablation inductively coupled
plasma mass spectrometry (LA-ICP-MS) allow visualization of a large subset of
proteins and other biomolecules without a priori knowledge of targets. Recent
advances in imaging mass spectrometry combined with immunohistochemistry (IHC)
have significantly improved resolution [@Angelo2014; @Giesen2014], which was
limited in MALDI-MS and LA-ICP-MS. This approach remarkably demonstrated
analysis of more than 100 targets at subcellular resolution.

Multiplexing strategies for IHC that rely on iterative staining and elution have
been developed. Among several pioneering techniques is array tomography, which
involves cutting a tissue sample into tens or hundreds of nanometer-thick
sections for staining and imaging [@Micheva2010]. These sections can be
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
(Hopwood 1967). This pH-dependent reactivity means that after uniformly
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
cortex. The same finding was reported in mouse visual cortex (Gonchar et al.
2008), but such co-expression patterns among calcium-binding proteins may differ
among brain regions and between individuals and species [@Anelli2006], which,
therefore, calls for more comprehensive large-scale investigation.

We observed many NeuN-negative interneurons. NeuN, a neuron-specific RNA-binding
protein known as Rbfox3 protein [@Kim2009], has been widely used as a
pan-neuronal marker for statistical analysis of many types of mature neurons
[@Baleriola2014; @Pickrell2015]. Only a few types of neurons are
exceptions, such as cerebellar Purkinje cells, olfactory bulb mitral cells, and
retinal photoreceptor cells [@Mullen1992]. However, even though we
applied strict criteria to prevent weak NeuN+ cells from being identified as
NeuN- cells, substantial portions of CB+, CR+, and PV+ neurons were still NeuN-
while all SMI+ neurons were NeuN+. This resultis supported by a recent report
that some CR+ are not NeuN+, and CR and NeuN immunoreactivities have a negative
correlation in the avian brainstem [@Bloom2014]. Likewise, in our
experiments on human visual association cortex, cells with strong
immunoreactivity against calcium-binding protein markers were frequently
negative or very weakly positive for NeuN. These findings, together with a
series of exceptional reports such as those on NeuN+ cultured astrocytes
[@Darlington2008] and GFAP+ neuron-like cells [@Oka2015],
indicate that classical cell-type markers, particularly NeuN, may need to be
used more carefully in light of their selectivity and function.

The SWITCH method has the potential to modulate a wide range of probe-target
binding reactions. Probe-target interactions are governed by a multiplicity of
non-covalent bonds such as hydrogen bonds, electrostatic forces, van der Waals
bonds, and hydrophobic interactions [@Mian1991]. These weak forces can be
effectively controlled by changing the surrounding chemical environment (e.g.,
ionic strength, pH, chemical additive, and temperature) [@Kamata1996]. For
instance, we discovered that the addition of SDS alone, in different
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
Recently developed methods of stochastic electrotransport [@Kim2015] could
potentially be combined with SWITCH to facilitate these experiments.

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
<http://dx.doi.org/10.1016/j.cell.2015.11.025> as well as in the appendix.

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

```
Received: August 31, 2015
Revised: October 9, 2015
Accepted: November 10, 2015
Published: December 3, 2015
```

\newpage

## References
