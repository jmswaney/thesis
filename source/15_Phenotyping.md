# 3D Imaging and Multiscale Analysis of Intact Human Cerebral Organoids

\slshape

Alexandre Albanese\*, **Justin Swaney**\*, Dae Hee Yun, Nick Evans, Jenna
Antonucci-Johnson, Vincent Pham, Chloe Delepine, Mriganka Sur, Lee Gehrke,
Kwanghun Chung [^1]

[^1]: \* indicates co-first authorship.

\upshape

## Abstract

Cerebral organoids grown from patient-derived stem cells self-pattern into
cytoarchitectures that mimic the developing human cortex. These 3D culture
models offer an unprecedented chance to study human cortical brain development
as neural progenitors surrounding ventricles mature into cortical neurons and
glial cells. Analysis of cells and cytoarchitecture currently requires
dissociation or sectioning and  the loss of spatial information  can bias data
interpretation. Here, we present a pipeline for volumetric fluorescence imaging
and multiscale analysis of intact cerebral organoids. Our integrated technology
platform can rapidly clear, label, and image a large number of intact organoids.
The SCOUT pipeline (Single-cell and Cytoarchitectural analysis of Organoids
using Unbiased Techniques) applies automated algorithms and neural networks to
extract hundreds of features characterizing molecular, cellular, contextual,
cytoarchitectural, and morphological features from three dimensional image
datasets in a quantitative and unbiased manner. Organoid processing from cell
culture to microscope takes less than ten days and imaging with light-sheet
fluorescent microscopy requires approximately 15 minutes per sample. SCOUT
analysis pipeline automates single-cell segmentation at 90% accuracy, ventricle
segmentation at 97% accuracy and utilizes spatial information for unprecedented
data analysis. Segmented ventricles were used as the seed point for automated
analysis of radial cell patterning. High-dimensional analysis of 42 organoids,
4591 ventricles and over 95 million cells provided a quantitative overview of
the multiscale changes associated with maturation, Zika virus infection, and
different culture protocols. SCOUT quantified significant shifts in organoid
size, ventricle volume, cell populations and cytoarchitecture clusters,
providing the first detailed list of tissue-wide phenotypic changes. SCOUT
represents the first high-throughput unbiased quantification of 3D tissue models
and establishes the necessary groundwork for multiscale morphological
phenotyping. This technological breakthrough improves analysis of complex three
dimensional culture systems and provides more accurate models of biology and
disease.

## Introduction

Embryonic and inducible pluripotent stem cells can grow into virtually any cell
type from the body. Two-dimensional stem cell differentiation protocols have
enabled the study human development, biology and disease. Recently, organoids
have emerged from the recent development of three-dimensional differentiation
protocols that drive the self-patterning of differentiated cells into
cytoarchitectures resembling tissue subregions. Recently, several protocols have
achieved the production of intestinal [@Sato2009; @Gjorevski2016],
retinal [@Eiraku2011], kidney [@Takasato2015; @Homan2019],
vasculature [@Wimmer2019] and brain organoids [@Kadoshima2013; @Lancaster2013;
@Yoon2019; @Velasco2019] amongst others. Each organoid contains a mixture of
cell types, intercellular interactions and extracellular microenvironments that
can replicate a tissue’s natural environment. The structural complexity of these
organoids provides novel in vitro models to study the intricate physiological
and pathological phenomena not replicated in conventional two-dimension cell
culture models.

Cerebral organoids allow us to study early human neurodevelopment from
neuroepithelium formation, neural migration and formation of rudimentary
networks. Cerebral organoids mimic cortical development by forming ventricles
lined with radial glia progenitors that differentiate into cortical neurons.
[@Renner2017; @Qian2016] Cerebral organoids recapitulate genetic and epigenetic
features of prenatal human brain development [@Camp2015; @Luo2016;
@Quadrato2017] and have been used to identify cytoarchitectural changes brought
on by microcephaly (Lancaster et al. 2013), lissencephaly [@Bershteyn2017], Rett
syndrome [@Mellios2018], Autism [@Mariani2015], and Zika virus infection
[@Watanabe2017]. These studies are important for characterizing the impact of
disease on early cortical development. However, most published work has relied
on the manual analysis of histological tissue sections to characterize
cytoarchitecture and cell populations. The loss of spatial information is
problematic considering the unique features of individual organoids and can lead
to biased data interpretation. 

Cerebral organoid heterogeneity produces a quantifiable variability at both
inter- and intra-batch levels (Quadrato et al. 2017). Many groups have sought to
remedy cerebral organoid heterogeneity through optimization of differentiation
protocols (Yoon et al. 2019; Velasco et al. 2019; Qian et al. 2016). However, a
potentially unresolvable source of heterogeneity is the independent asynchronous
development of multiple neuroepithelial units (neural rosettes, ventricles) each
producing their own cells and morphogenic gradients [@Knight2018]. The random
configuration of ventricles in each organoid does not recreate the embryo’s
physiological conditions where a single neuroepithelial tube matures into the
entire central nervous system. The organoid’s random configuration of ventricles
also makes it especially difficult to interpret local cell populations and
cytoarchitectures with incomplete knowledge of spatial context. Unbiased and
quantitative organoid phenotyping requires new technologies to achieve
whole-tissue analysis capable of combining antibody staining and multiscale
contextual analysis of single cells.

Here, we present a novel pipeline for multiscale analysis of intact cerebral
organoids. We adapted the SHIELD protocol for whole-tissue clearing [@Park2018]
and eFLASH technology for accelerated antibody staining [@Yun2019; @Kim2015;
@Murray2015] to generate optically-transparent fluorescently-labeled
whole-organoids. We then developed an analytical pipeline for Single-cell and
Cytoarchitecture analysis of Organoids using Unbiased Techniques (SCOUT) for
quantitative analysis of single cells, ventricles, and cytoarchitectures.
Holistic organoid analysis ensures unbiased quantification of these
heterogeneous tissues without any loss of spatial context or rare events. SCOUT
enables quantification of previously inaccessible features and decreases the
variance of conventional features prone to histological sampling biases. For
comparative studies, we developed a framework for unbiased hyper-dimensional
analysis based on 276 features describing the volumetric data of individual
organoids. These features provide a framework to assess the correlation of
features at different size scales and provide a quantitative overview of
phenotypic changes.

## Results

### Whole-organoid staining

To achieve whole organoid antibody staining and imaging (Figure 1A), we adapted
the SHIELD (Park et al. 2018) poly-epoxide tissue reinforcement protocol to
preserve biomolecules during detergent and heat-based de-lipidation. Multiple
epoxide groups in the polyglycerol 3-polyglycidyl ether molecule (P3PE) react
with available amines in the tissue to form stabilizing inter-and
intra-molecular covalent bonds. We adapted the original SHIELD protocol to
prevent over-fixation in our samples and maintained a near-neutral pH during
de-lipidation to ensure bright antibody staining of transcription factors
(Figures S1, S2 & STAR methods). After immersion in dPROTOS optical clearing
solution, cerebral organoids were optically transparent (Figure 1B). Microscopy
of SHIELD-cleared organoid tissue sections confirm the preservation of eGFP
endogenous fluorescence, epitopes, and mRNA (Figure 1C). For whole-organoid
staining, we employed eFLASH technology where a rotating electric field
accelerates transport of fluorescent probes into the tissue for homogenous
antibody staining. The eFLASH protocol was adapted for cerebral organoids to
achieve simultaneous staining of 8-10 organoids in 35h using 3-15 µg of primary
antibody (see STAR methods). We achieved whole-organoid staining of nuclear and
cytoplasmic proteins (Figure 1D-F). Radial glia in whole d35 organoids were
stained with vimentin, lipid binding protein, nestin, and SOX2. Neurons were
stained with β3-tubulin, MAP2, and TBR1. 

As an initial proof-of-concept, we developed our SCOUT pipeline using a nuclear
dye and two antibodies imaged with light-sheet fluorescent microscopy (LSFM) for
high-throughput organoid phenotyping. We used anti-SOX2 to label radial glial
progenitors and anti-TBR1 to label the early post-mitotic neurons in organoids
at day 35. However, analysis is adaptable to other combination of
experiment-specific markers. We chose to label transcription factors to ensure
the straightforward identification of dye-labeled nuclei with antibody staining
to identify progenitor and neuronal cells. The position of SOX2 and TBR1 cells
relative to the ventricle enables the identification of basic cytoarchitectural
patterning in cerebral organoids. Based on previous work, these markers enable
identification of a SOX2+ ventricular zone and an early preplate-like layer of
TBR1+ neurons (Qian et al. 2016; Watanabe et al. 2017). 

### SCOUT analysis of single cells

Using LSFM with a 10X objective (see STAR Methods), three-channel data
acquisition at 0.6 x 0.6 x 2.0µm voxel size took on average ~15 min per
organoid. The 3D datasets enabled single-cell nucleus identification and
segmentation throughout the organoid (Figure 2A). We applied curvature-based
seeded watershed on nuclear dye images [@Atta-Fosu2016] and achieved an accuracy
of 90% (Figure S3). Next, we co-localized segmented nuclei with SOX2 and TBR1
channels for molecular phenotyping of individual cells (Figure 2B). Since
expression of these two markers is mutually exclusive, we identified three
populations in individual organoids: SOX2+ progenitors, TBR1+ neurons, and
double negative (DN) cells. Morphological analysis of individual nuclei shows a
~10µm average diameter for all three cell types, although we detect instances of
different volumes for each population (Figure 2C, D).

Our datasets include the position and marker expression for every cell inside
these highly patterned cerebral organoids (Lancaster et al. 2013; Qian et al.
2016; Watanabe et al. 2017). This allows us to examine the spatial context of
individual cells. To explore the value of a cell’s spatial context, we combined
antibody-based molecular phenotyping data with a “positional proximity score”
based on each cell’s distance to its nearest SOX2+ and TBR1+ cells. We designed
this score to reflect each cell’s proximity to the SOX2-rich ventricular zones
and neuron-rich TBR1+ preplate-like regions (Figure 2E-G). Spatial context
quantification reveals that SOX2+ and TBR1+ cells had the highest proximity
scores (>0.65) to themselves. In other words, SOX2-adjacent cells are >99.6%
SOX2+ and TBR1-adjacent cells are >98.6% TBR1+ cells. The lowest proximity
scores (<0.15) occurred for DN-adjacent DN cells at the core of the organoid
away from the ventricles. Proximity analysis detected three intermediate
populations (0.15-0.65): SOX2-adjacent DN cells in the ventricular zone,
TBR1-adjacent DN in neuron-rich regions and SOX2/TBR1 co-adjacent DN cells. We
hypothesized that the location of these DN subpopulations likely correlates with
their identity given that a TBR1-adjacent DN cell is most likely a post-mitotic
TBR1- neurons and the infrequent SOX2-adjacent DN cells may represent an early
population of intermediate progenitors migrating to form a sub-ventricular zone.
This analysis demonstrates the combination of molecular phenotyping and spatial
context enables cellular subcategorization in highly patterned tissues. 

### SCOUT analysis of ventricles and radial organization

Next, we sought to characterize ventricles and the radial cell patterning they
produced (Figure 3). First, we identified the total number and general
morphology of ventricles inside our organoids. We adapted U-Net
[@Ronneberger2015], a convolutional neural network, to detect SOX2-lined
ventricles based on 9 manually segmented [@Yushkevich2006] datasets containing
7596 nuclear dye images (Figure S4). We performed manual segmentation using the
SOX2 antibody channel, but trained the convolutional neural network on nuclear
dye images to potentially eliminate the necessity of Sox2-antibody in future
studies. Automated ventricle segmentation by U-Net achieved a Dice coefficient
of 97.2% on a 20% hold-out test set and provided morphological analysis of the
three dimensional ventricles (Figure 3B, Figure S5). 

Ventricles are an important anatomical landmark in the heterogeneous landscape
of a cerebral organoid. They provide the origin of radial cytoarchitecture
orientation that occurs when progenitor glia cells produce post-mitotic neurons.
We quantified radial organization of cell populations around ventricles by
generating “virtual biopsies” 50µm in diameter and 300µm long perpendicular to
the ventricle’s surface (Figure 3A-D). Each biopsy captures SOX2, TBR1, and DN
cell counts within 50 µm-tall stacked cylindrical regions. We generated
thousands of virtual biopsies uniformly distributed across the surface of all
ventricles for unbiased quantification of radial cytoarchitectures in the
organoid. As expected, the number of biopsies generated per ventricle was
proportional to its surface area (Figure 3D). Performing unsupervised
hierarchical clustering after UMAP embedding to reduce hyper-dimensionality
[@McInnes2018] revealed five distinct cytoarchitectures: TBR1+DNlow,
TBR1+DNhigh, surface, “DN only”, and “adjacent ventricles” (Figure 3E, F). When
we mapped cytoarchitecture clusters onto the surface of the ventricles, we
observed a strong positional correlation within the organoid (Figure 3G). As
expected, surface cytoarchitecture appears at the surface organoid due to the
abrupt disappearance of cells beyond the organoid’s border. We also detected
“adjacent ventricles”cytoarchitecture on ventricle surfaces facing towards
nearby ventricles. A survey of a hundred random biopsies shows a spectrum of
different cell profiles and we explored whether ventricle size may affect cell
frequency (Figure 3H, I). Quantification of cell type frequency in each
ventricle’s virtual biopsies reveals a strong correlation between ventricle size
and cell type frequency. Correlation analysis revealed that ventricle size was
positively correlated with TBR1 cell frequency and negatively correlated with DN
frequency in our organoids. These observations suggest that lager ventricles may
be farther along in their development program or at positions within the
organoid that replicate physiological conditions more accurately. Given the
heterogeneity of organoids, conventional quantification of the“average
cytoarchitecture” based on tissue sections is prone to noise and
misinterpretation. SCOUT, on the other hand, provides independent analysis of
multiple cytoarchitectures and ventricles to provide unbiased full-spectrum
analysis of cell patterning.

### SCOUT whole-organoid analysis and correlation

With the ability to measure absolute frequency of cell populations in individual
organoids, we could quantify the accuracy of conventional histological analysis
based on two-dimensional tissue sections. First, we compared how three different
100µm thick “pseudo-sections” generated from our 3D datasets of day 35 organoids
predicted whole-tissue cell type frequencies (Figure 4A). These results show
that individual slices consistently miss the SOX2, TBR1 and DN whole-organoid
frequency and reveal an intra organoid heterogeneity caused by the
pseudo-section’s position within the organoid. To address the possibility of
positional bias within individual organoids, we quantified the correlation
between cell type frequencies for each ventricle and their distance from the
surface (Figure 4B). This analysis reveals a significant positional bias for
each cell type. TBR1 cells are predominantly at the surface of the organoid and
decrease with depth. Inversely, DN cell frequency increases as a ventricle’s
distance from the surface increases and reaches ~80% for ventricles near the
organoid’s core. Thus, an organoid’s histological section will possess cell
frequency bias dependent on its position within the tissue. 

To compare how this sampling heterogeneity compares with inter-organoid
variability, we compared the statistical distribution of cell type frequencies
in 10 organoids (biological heterogeneity) and the statistical distribution of
possible estimates using 100µm thick “pseudo-sections” in these same organoids
(Figure 4C, D). Pseudo-section sampling variability was greater than
inter-organoid biological variability. To reduce the heterogeneity of
histological sampling to match the inter-organoid variability in cell type
frequency, more than five to seven histological sections would be necessary per
organoid.

To quantify inter-organoid differences, we combined our holistic analysis into a
set of 276 organoid descriptors capturing single cell, cytoarchitecture and
whole-organoid features (Table S1). When looking at the relative standard error
of these features, we see a wide range of heterogeneity (Figure 4E). Some of the
most variable features include average ventricle volume, total count of DN, and
organoid volume. Interestingly, the frequency of SOX2 and TBR1 cells was much
more consistent than their absolute number. Given the large variability of
certain features, we computed pairwise correlations between multiscale features
to see if certain features at the single-cell scale could predict whole-tissue
features (Figure 4F). The most interesting correlation occurs around Sox2 and
Tbr1 total counts. A network analysis of pairwise correlations (r > 0.75)
reveals a significant link between the total number of these cells with organoid
size, ventricle size, and SOX2 position close to the surface. These studies show
that SCOUT can quantify heterogeneity in biological replicates and can start to
elucidate the correlation of phenomena at multiple scales.

### SCOUT analysis of organoid maturation

Next, we used SCOUT for comparative analysis between day 35 and day 60 cerebral
organoids to detect maturation-related changes in cell populations and
cytoarchitectures (Figure 5). We compared individual features of each time point
using independent two-tailed t-tests and detected interesting interpretable
changes at multiple scales (Figure 5C, volcano plot). We detected 89 parameters
where p <0.01% that we then rank-ordered according to largest differences using
the absolute value of their fold-change (Figure 5D; heat-map). The d60 organoids
look dramatically different with a four-fold increase in their volume and a
two-fold increase in average ventricle volume. As expected, growth produced a
large increase in all cell populations (19X DN, 4X TBR, 2X SOX2; Figure 5E).
Non-uniform cell expansion caused a 56% reduction in SOX2 cell frequency and
two-fold increase in the Tbr1/Sox2 ratio. We suspect the low expansion of
progenitor cells is caused by our addition of BDNF at day 40 of organoid
culture, which drives neurogenesis and suppresses progenitor expansion
[@Fukumitsu2006].

Cell frequencies were relatively consistent in each group, suggesting once again
that inter-organoid variability is significantly reduced by whole-organoid
analysis (Figure 5G). In cerebral organoids, as progenitor cells divide and
produce radially-organized cell populations, a layer of DN cells appears between
SOX2 and TBR1 cells (Figure 5A), which reduced the proximity of SOX2 cell
proximity to TBR1 (43% decrease for SOX2, 34% decrease for TBR1). Maturation
also produced a 7X increase in “TBR1-adjacent DN cells” frequency and the
emergence of a “Tbr1+DNhi” cytoarchitecture (31.2%) characterized by abundant DN
cells after the SOX2 ventricular zone and into the population of TBR1 cells
(Figure 5H: cyto profiles). In these cytoarchitectures, DN cells likely
represent a combination of intermediate progenitors and non-TBR1 neurons that
develop with organoid maturation. These new cell populations increased
inter-ventricle and ventricle-to-surface distances and produced a 70% reduction
in “Adjacent” and “Surface” cytoarchitectures, respectively. As organoids
mature, they replace these cytoarchitectures with “$TBR1+DN^{hi}$” (31.2%) and
“$TBR1+DN^{low}$” (28%), highlighting a general increase in TBR1+ neurons around
the ventricles. Another important change in cytoarchitecture is the doubling of
“DN only” cytoarchitectures from 14% to 28% as a consequence of the 14-fold
increase in “core DN” cells. The “DN only” cytoarchitectures are usually
oriented towards the organoid core where no ventricles or cell markers are
detected. This region grows in d60 organoids since the reduced surface-to-volume
ratio in these large organoids likely interferes with the transport of nutrients
and growth factors.

Although organoids appear heterogeneous when comparing random optical sections,
full-spectrum cytoarchitecture reveals a relatively consistent distribution of
radial organization in our biological replicates. To confirm cytoarchitecture
consistency and to demonstrate the flexibility of SCOUT analysis, we “gated” on
specific cytoarchitectures to determine consistency of patterning. We gated on
the “Adjacent” and “TBR1+DNhi” cytoarchitectures to compare SOX2- and TBR1-
proximity of individual cells as a function of their distance from the ventricle
surface. Analysis confirms that cells found within the “Adjacent”
cytoarchitectures consistently show a slight increase in TBR1 proximity at ~75
µm then return to high SOX2 proximity. In contrast, the more mature TBR1+DNhi
regions show a single transition from SOX2-proximity to TBR1-proximity ~150µm
away from the ventricle surface.

### Comparative analysis of Zika infection

After quantification of maturation-induced changes, we quantified multiscale
changes caused by Zika virus infection (Figure 6). Previous studies used
cerebral organoids to monitor tropism and lethality of Zika virus causing
microcephaly in newborns [@Cugola2016]. Initial studies suggest that infection
of neural progenitors causes a reduced output of mature neurons and decreased
size of brain tissue. Using a clinical isolate from Puerto Rico, we infected
organoids at day 21 with 0.1 MOI and waited for 14 days post-infection to assess
the multiscale impact of viral infection. SCOUT-analysis detected 49 features
whose p<0.01. Notably, we detected a ~50% reduction in organoid size, ventricle
volume and total ventricle counts (Figure 6B). At the cellular level, we
detected a 75% decrease in total number and 50% decrease in frequency of both
SOX2+ progenitors and TBR1+ neurons. The dramatic loss of ventricles and SOX2
cells lead to a 67% decrease (31% to 10%) in the “Adjacent” cytoarchitecture,
while TBR1 loss caused the 24 to 40% increase in “DN only” cytoarchitectures.
Zika-infection produced an aggressive phenotype where smaller organoids which
lack ventricles, SOX2 cells and TBR1 cells. Our quantification of the Zika
infection phenotype is consistent with previous reports and may mirror the
mechanisms underlying viral microcephaly in newborns. Unfortunately, it remains
unclear whether the loss of TBR1+ neurons is due to disrupted progenitor
differentiation or neuron-specific cell death caused by viral infection.
However, SCOUT can help discern between these two possibilities in future
experiments. 

### Comparative analysis of different cerebral organoid protocols

Our analysis provides high-dimensional phenotyping for multiple whole organoids
as a strategy to overcome the problematic organoid heterogeneity (Renner et al.
2017; Quadrato et al. 2017). A recent study10 by Velasco et al. addressed
heterogeneity by screening different organoid culture protocols. Their patterned
dorsal forebrain organoids showed impressive organoid-to-organoid consistency in
morphology and in their cellular composition, as assessed by single-cell RNA
sequencing. We compared these organoids with our day 60 organoids, which were
grown with a modified version of the Lancaster protocol where we applied dual
SMAD inhibition for the first half of neuroepithelium induction, added BDNF
after day 40 and used Petri dishes on a shaker instead of a bioreactor
[@Lancaster2014]. Comparative analysis detects 112 features whose p <0.01. Most
noticeably, the Velasco organoids and their ventricles were smaller, showing an
average 60% and 84% decrease, respectively (Figure 7A-C). At the cellular level,
Velasco organoids show a 2X higher frequency of SOX2 cells and 3X increase in
TBR1 frequency. The proximity between the SOX2 and TBR1 cells also increased 2X
due to the absence DN cells between the progenitor zone and TBR1 cells (Figure
5A, Figure 7A). DN cells were less frequent overall and we detected a 70%
reduction in the organoid core and an 80% reduction in TBR1-adjacent regions. 

Cytoarchitectures were vastly different in these two organoid protocols. The
Velasco organoid’s abundant TBR1 cells produced the appearance of a new
“TBR1-rich cluster” (~21% of total biopsies), where TBR1 counts are ~35% higher
and DN counts are 70% lower compared to the “TBR1+DNhigh” cytoarchitecture
favored in our day 60 organoids. Velasco organoids also show more “Adjacent”
cytoarchitectures, consistent with smaller organoids. The 66% reduction in “DN
only” cytoarchitecture may also reflect smaller organoids, or the improved
tissue transport when culturing organoids in a bioreactor. Interestingly,
Velasco organoids were much more consistent across their multiscale features. We
quantified the variance of all 276 features and compared the fold-change in both
organoid groups. The Velasco organoids show decreased variance in 70% of all
features. The dramatic differences in these two organoid groups is expected
given their drastically different culture protocols. However, this
proof-of-concept study demonstrates the potential of SCOUT to evaluate the
multiscale features and to quantify inter-organoid variance produced by
different culture protocols. These finding suggest that a combination of
holistic analysis and protocol optimization can address the widely reported
problem of organoid heterogeneity.


## Discussion

SCOUT provides a much-needed pipeline for the phenotypic description and
comparative analysis of three-dimensional tissue culture models. Here, we
provided the first attempt for unbiased quantification of multiscale changes in
different cerebral organoid groups. SCOUT can be applied to generate robust
statistically-powered hypotheses through the volumetric analysis of numerous
intact organoids. This initial set of studies confirms the possibility of
quantifying maturation-induced growth, Zika virus-induced damage, and
protocol-specific improvements in cerebral organoids. We provided the first ever
quantification of ventricle size, cytoarchitecture distribution and multiscale
cellular analysis in well-studied models. 

Our current list of features and multiscale correlation will continue to evolve
as we gain more experience quantifying three-dimensional cellular biology in the
developing brain. In this study, we combined some new concepts such as cell
proximity analysis with some widely-used general strategies for characterization
of radially-organized cell populations. Analysis was based on SOX2 and TBR1
because we were interested in the radial organization of progenitors and mature
neurons in relatively young organoids. However, these antibodies could be
substituted to address the biological question being investigated. Additional
challenges moving forward include the possibility of increasing the number of
markers to provide a richer phenotypic analysis of organoids. Several strategies
can increase the number of detectable markers in future studies such as
barcoding of primary antibodies, multi-round tissue staining, or the addition of
more laser lines and filter sets to the microscope. Another challenge is the
inability to disentangle correlation and causation in our current study.
However, this can be addressed with strategic experimental design that utilizes
time-point analysis and fluorescent reporter systems to catch emergence of new
features over time.

In its current state, SCOUT provides the first attempt at holistic cerebral
organoid characterization. Although organoids are an exciting in vitro model for
human brain development, their heterogeneity can be especially problematic when
using two-dimensional tissue sections for cellular and morphological analysis.
Whole organoid analysis produced some variance, but trends were generally
consistent and we were capable of detecting numerous differences in each
experiment. Combining SCOUT with improved culture protocols such as the Velasco
organoids will establish consistent three-dimensional models where analysis can
discriminate multiscale changes with impressive signal-to-noise. This will
hopefully empower the discovery of mechanisms underlying the biology and
dysfunction of human brain development.


## Methods

### Preprocessing LSFM images of cerebral organoids

Cerebral organoid images from the LSFM system (LifeCanvas, SmartSPIM) originally
stored in an uncompressed binary format were first destriped and stitched
according to a previously reported image processing pipeline [@Swaney2019]. This
pipeline generates z-slice images with lossless compression that are used to
compute image histograms for each channel. After normalizing each channel to the
99th percentile of the histogram, each channel is then partitioned into (64, 64,
64) voxel chunks using the Zarr Python package. This chunk-compressed
representation allows for parallel processing of each image data chunk.

### 3D nuclei detection using curvature-based seeded watershed

To detect all nuclei in volumetric nuclear stain images, a curvature-based
nuclei filtering strategy was developed. An image filter based on the
eigenvalues of the Shape Operator (also known as the Weingarten matrix) was
created by defining a probility distribution over the image curvature and
intenisty as evidence for a nucleus centorid. This nucleus probability map
highlights nuclei even in densely-packed regions such as the ventricular zone in
cerebral organoids. The probability map was computed for each image chunk after
gaussian smoothing to remove noise. Nuclei centroids were extracted from these
probability maps through local maxima detection.

To segment each nucleus, the detected nuclei centroids were used as seed points
for performing a watershed segmentation of a nucleus foreground mask. This
nucleus foreground mask is obtain through binarization of the nucleus
probability map. Binarization of the nuclei probability map was accomplished
through graph cuts segmentation with a Poisson image intensity prior and
constant pairwise interaction penalty.

### Nuclei detection accuracy measurement

To assess the accuracy of our nuclei detection strategy, nuclei centroids were
hand-annotated using a previously reported image alignment tool called Nuggt.
Over 1,000 nuclei centroids were hand-annotated in organoid subregions inlcuding
the ventricular zone and subventricular zone. Detected nuclei were consisdered
true positives (TP) if they fell within 5 voxels of a ground-truth centroid and
false positives (FP) if not. Since multiple detections may lie within 5 voxels
of a given ground-truth centroid, double-counting TPs was avoided by matching
ground truth and detected centroids using the Hungarian method for solving the
linear sum assignment problem. The result of this matching procedure are lists
of all TPs, FP, false negatives (FN), and true negatives (TN). These accuracy
statistics were used to compute the overall accuracy and F1-score of the nuclei
detection strategy. Our curvature-based seeded watershed algorithm was
benchmarked against the difference of gaussian (DoG) and Laplacian of guassian
(LoG) blob detection algorithms implemented in the scikit-image Python package.

### Cellular subcategorization using in situ cytometry and spatial proximity analysis

Protein expression of transcription factors was measured by sampling the SOX2
and TBR1 antibody staining in a 3-voxel diameter spherical ball centered around
the nuceli centroids. The mean fluorescence intensity within each sphere was
computed for each channel and gated to define SOX2-/+ and TBR1-/+ cell
populations. The result of this gating strategy is a labeled point cloud of
nuclei centorids.

Spatial proximity analysis of the labeled nuclei point cloud was accomplished by
first constructing a KD-tree representation of the point cloud for efficient
querying of nearest nuclei. The spatial proximity to the nearest $k$ cells of type
$t$ was calcualted using the following formula for each detected nucleus $i$:

$$ P^{(t)}_i = \prod_{n=1}^{k} \frac{1}{1 + d_{i,n}/\sigma^{(t)}} $$

where $ d_{i,n} $ is the distance between the $i$-th nucleus and the $n$-th
nearest nucleus and $ sigma_{(t)} $ is a reference distance that controls the
proximity bandwidth (how close a neighboring nucleus must be to be considered in
close proximity).

### Automatic 3D ventricle segmentation using U-Net

To train a U-Net model for ventricle segmentation, downsampled volumetric images
of SOX2 staining were semi-automatically segmented using ITK-Snap. In total, 9
whole organoids were segmented, including 7600 binary 2D images. These images
were combined with the corresponding syto16 images at the same resolution and
split with a 20% hold-out test set before moving on to model training and
validation. The remaining training set was used with ten-fold cross-validation
to tune model hyperparameters and the overall model architecture. 

The U-Net model was implemented in Keras and slightly modifed from the original
architecture. Since our images were higher resolution than what was used in the
original U-Net paper, we added two layers before and after the U-Net bottleneck
to increase the receptive field of the model. This modifed U-Net model was
trained using a hybrid loss containing a weighted binary crossentropy (WBCE)
term and a Dice coefficient loss term. The WBCE term was weighted at 90% to the
Dice coefficient loss term's 10%. In our experience, the WBCE term helps the
model converge to sensible ventricle segmentations due to a simpler gradient
signal during training. However, the Dice coefficient loss is required to
compensate for the high degree of class imbalance in any given training image.

The test accuracy was assessed after all training and validation steps were
complete by computing the Dice coefficient for all test images. The reciever
operating characteristic curve was constructed using a random sample of 100
images from the test set to speed up computations. These test images were
segmented and thresholded at linearly spaced probability values between 0 and 1.
For each threshold, the TP, FP, and FN rates were computed from corresponding
pixels in the predictions and ground truth iamges. These rates were used to
compute the final precision and recall values as well as the maximum F1-score
and area under curve (AUC).

### 3D cytoarchitectural analysis of cerebral organoids

Binary ventricle segmentations were converted into a 3D mesh using the marching
cubes algorithm from the scikit-image Python package. The resulting mesh
contained vertices, faces, and normal vectors uniformly distrubuted over the
ventricle surfaces. The normal vectors and vertices were used to query which
nuclei centroids were within a 50 µm diameter and 300 µm tall cylinderical
volume around the surface normal. These cells were bin counted for each cell
type over size 50 µm intervals to construct the final radial cell profiles.

To determine cytoarchitectural types, 5000 radial cell profiles were sampled
from each organoid in a given dataset (i.e. from both d35 and d60 organoids in
the maturation analysis). These radial cell profiles were flattened into vectors
and concatenated into a matrix of cytoarchitecture observations and features.
This matrix was provided to UMAP to visualize the distribution of
cytoarchitectures in 2D and perform dimensionality reduction before clustering.
After performing UMAP embedding, the UMAP model was saved for future analysis.
The UMAP embedded cytoarchitectures were then grouped using hierarchical
clustering with a euclidean distance metric and average linkage method. The
cluster labels were saved and used as training data in a nearest neighbor
cytoarchitecture classifier. Using the saved UMAP model and the pretrained
nearest neighbor cytoarchitecutre classifier, all profiles in each organoid were
classified efficiently.

The resulting cytoarchitectural labels were used to compute average profiles for
each clusters as well as for coloring the faces of the ventricles in a 3D
render. This 3D render of ventricles pseudocolored by cytoarchitecture was
generated in Blender.

### Hyperdimensional statistical testing for comparative organoid studies

To perform statistical testing on all multiscale features, we used independent
two-tailed t-tests to obtain significance values for each feature. To reduce the
amount of false positives due to multiple comparisons, we also thresholded the
significant phenotypic changes at a two-fold change in mean. This thresholding
restricted the detected hits to those with large changes in mean so that those
significant differences that are due to small sample standard deviations are
removed.

### Pairwise correlation analysis of multiscale organoid features

For 12 d35 organoids, the Pearson correlation coefficient and associated P-value
was computed for all pairs of organoid features. These correlation coefficients
were stored in a matrix and biclustered using hierachical clustering. 

To construct a network from these pairwise correlations, the absolute value of
the correlation coefficients were thresholded at 0.75 to remove edges in the
network with smaller weights. This thresholded matrix of pairwise correlation
coefficients was used as an adjancency map in the NetworkX Python package. The
resulting network was then visualized in an interactive plot using the pyvis
Python package.

### Estimation of intra-organoid section variability using psuedosections

To compare the intra-organoid variability of sections to the inter-organoid
variablity in 3D analysis, the nuclei centroids and cell-type labels from 10 d35
organoids were used in both 2D and 3D analyses. Pseudosections were 100 µm
virtual sections of the same underlying 3D dataset of nuclei centroids and
cell-type labels that align with the XY plane and fall within the Z limited of
the organoid. 10,000 pseudosections were sampled from each organoid and used to
compute the overall (normalized) cell frquency for SOX2, TBR1, and DN cells.
Distributions of these psuedosection cell-type frequencies were comapred to the
distributions of cell-type frequencies obtained by comparing the 3D orgnaoid
datasets directly. The central limit theorem was used to compute the sample size
of psueodsections needed to match the variance of the inter-organoid
distribution.


\newpage

## References
