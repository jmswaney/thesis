# 3D Imaging and Multiscale Analysis of Intact Human Cerebral Organoids

\slshape

Alexandre Albanese\*, **Justin Swaney**\*, Dae Hee Yun, Nick Evans, Jenna
Antonucci, Silvia Velasco, Changho Sohn, Paola Arlotta, Lee Gehrke,
Kwanghun Chung [^1]

[^1]: \* indicates co-first authorship.

\upshape

## Summary

Cerebral organoids grown from patient-derived stem cells self-pattern into
cytoarchitectures mimicking the developing human cortex. These 3D models offer
an unprecedented chance to study human cortical brain development and
dysfunction. Molecular cell phenotyping and cytoarchitecture analysis currently
require dissociation or sectioning which causes the loss of spatial information
and can bias data interpretation. Here, we present the SCOUT pipeline for
volumetric fluorescence imaging and multiscale analysis of intact cerebral
organoids. Our integrated technology platform can rapidly clear, label, and
image multiple intact organoids. Automated algorithms and neural networks then
extract hundreds of features characterizing molecular, cellular, contextual,
cytoarchitectural, and morphological properties from three-dimensional datasets
in a quantitative and comprehensive approach. High-dimensional analysis of 42
organoids and over 95 million cells reveals quantitative multiscale phenotypes
for organoid maturation, Zika virus infection, and culture protocol comparisons.
SCOUT provides the groundwork for multiscale phenotyping of biological systems
for improved understanding of development and disease.

## Introduction

Embryonic and inducible pluripotent stem cells can grow into virtually any cell
type from the body. Two-dimensional stem cell differentiation protocols have
enabled the study human development, biology and disease. Recently, organoids
have emerged from the optimization of three-dimensional differentiation
protocols that drive the self-patterning of differentiated cells into
cytoarchitectures resembling tissue subregions. Recently, several protocols have
achieved the production of intestinal [@Sato2009; @Gjorevski2016], retinal
[@Eiraku2011], kidney [@Takasato2015; @Homan2019], vasculature [@Wimmer2019] and
brain organoids [@Kadoshima2013; @Lancaster2013; @Yoon2019; @Velasco2019]
amongst others. Each organoid contains a mixture of cell types, intercellular
interactions and extracellular microenvironments that can replicate a tissue’s
natural environment. The structural complexity of these organoids provides novel
in vitro models to study the intricate physiological and pathological phenomena
not replicated in conventional two-dimension cell culture models.

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
especially problematic in non-anatomical tissues due to the unique topography of
individual organoids. The loss of spatial information can bias data
interpretation by missing rare events, increase the experimental variance and
erroneously estimate whole-tissue features.

Cerebral organoid heterogeneity produces a quantifiable variability at both
inter- and intra-batch levels (Quadrato et al. 2017). Many groups have sought to
remedy cerebral organoid heterogeneity through optimization of differentiation
protocols (Yoon et al. 2019; Velasco et al. 2019; Qian et al. 2016). However, a
potentially unresolvable source of heterogeneity is the independent asynchronous
development of multiple neuroepithelial units (neural rosettes, ventricles) each
producing their own cells and morphogenic gradients [@Knight2018]. The random
configuration of ventricles in each organoid does not recreate the embryo’s
physiological conditions where a single neuroepithelial tube matures into the
entire central nervous system. The organoid’s random topography of ventricles
also makes it difficult to interpret cell populations and cytoarchitectures in a
given subregion without knowledge of the broader spatial context. Thus, a
comprehensive and quantitative phenotyping strategy requires new technologies
that enable whole-tissue analysis by combining molecular phenotyping by antibody
staining and multiscale contextual analysis.

Here, we present a novel pipeline for multiscale analysis of intact cerebral
organoids. We adapted the SHIELD protocol for whole-tissue clearing [@Park2018]
and eFLASH technology for accelerated antibody staining [@Yun2019; @Kim2015;
@Murray2015] to generate optically-transparent fluorescently-labeled
whole-organoids. Organoid processing from cell culture to microscope takes less
than ten days and imaging with light-sheet fluorescent microscopy requires
approximately 15 minutes per sample. We then developed an analytical pipeline
for Single-cell and Cytoarchitecture analysis of Organoids using Unbiased
Techniques (SCOUT) for quantitative analysis of single cells, ventricles, and
cytoarchitectures. Holistic tissue analysis ensures unbiased quantification of
heterogeneous organoid samples tissues without any loss of spatial context or
rare events. SCOUT enables quantification of previously inaccessible features
and decreases the variance of conventional features prone to histological
sampling biases. For comparative studies, we developed a framework for unbiased
hyper-dimensional analysis based on 276 features describing the volumetric data
of individual organoids. These features provide a framework to assess the
correlation of features at different size scales and provide a quantitative
overview of phenotypic changes. SCOUT quantified significant shifts in organoid
size, ventricle volume, cell populations and cytoarchitectural changes in a
series of comparative experiments, which provide quantitative phenotypic
assessment of three dimensional biological systems.

## Results

### Whole-Organoid Staining

To achieve whole organoid antibody staining and imaging (Figure
\ref{phenotyping-1}A), we adapted the SHIELD (Park et al. 2018) poly-epoxide
tissue reinforcement protocol to preserve biomolecules during de-lipidation.
Multiple epoxide groups in the polyglycerol 3-polyglycidyl ether molecule (P3PE)
react with available amines in the tissue to form stabilizing inter-and
intra-molecular covalent bonds. We adapted the original SHIELD protocol for
optimal preservation of organoids to ensure bright antibody staining of
transcription factors (see Methods). After immersion in PROTOS-based optical
clearing solution, cerebral organoids were optically transparent (Figure
\ref{phenotyping-1}B). Microscopy of SHIELD-cleared organoid tissue sections
confirmed the preservation of eGFP endogenous fluorescence, epitopes, and mRNA
(Figure \ref{phenotyping-1}C). For whole-organoid staining, we employed eFLASH
technology where a rotating electric field accelerates transport of fluorescent
probes into the tissue for homogenous antibody staining. The eFLASH protocol was
adapted for cerebral organoids to achieve simultaneous staining of 8-10
organoids in 35h using a small amount of primary antibody (see Methods). We
achieved whole-organoid staining with various markers including SOX2, TBR1,
MAP2, ꞵ3-tubulin, and vimentin (Figure \ref{phenotyping-1}D-F). Axially
sweeping light-sheet fluorescent microscopy (LSFM) enabled three-channel imaging
of intact organoids at single-cell resolution (0.6 x 0.6 x 2.0 µm voxel size)
within approximately 15 minutes per organoid, generating approximately 150 GB of
data per organoid (see Methods). 

![Pipeline for intact organoid analysis (A) Cerebral organoids1,2 are grown from stem cells, fixed in 4% PFA, then post-fixed with SHIELD3 poly-epoxide crosslinker. Organoids are then cleared in SDS solution at 55°C, rinsed, then labelled with antibodies using eFLASH4 for rapid uniform staining. Samples are imaged by light-sheet microscopy for high-throughput (15 min per organoid) quantitative microscopy. (B) Quantitative analysis applies automated algorithms and deep learning to measure multiscale features. We applied this pipeline for unbiased high-dimensional phenotyping of different experimental models. (C) After de-lipidation and immersion in refractive index matching solution (dPROTOS)3, organoids are optically transparent and can be imaged with standard confocal microscopy. Grid = 1 mm (D) SHIELD preserves endogenous fluorescence, mRNA and protein epitopes. \label{phenotyping-1}](source/figures/Phenotyping/figure1.jpg){ width=100% }

\begin{figure*}
\caption*{
(E) 3D renders of day 35 cerebral organoid stained using cytoplasmic or nuclear epitopes. Left: blue is Syto16 nuclear dye, green is β3-tubulin (neuronal marker) and red is vimentin (glial marker). Right: blue is Syto16, green is Tbr1 (deep layer neurons) and red is Sox2 (progenitor cells /radial glia) (F) Day 35 whole-organoid staining of different antibodies. Scale bars (yellow: 100 µm, white: 200 µm)
}
\end{figure*}

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

### SCOUT Analysis of Single Cells

For fully automated unbiased multi-scale analysis of the 3D organoid datasets,
we developed the SCOUT pipeline. The basic principles of our analyses should be
adaptable to any combinations of experiment-specific markers or highly
multiplexed in situ molecular imaging modalities. In this proof-of-concept
study, however, we chose anti-SOX2 to label radial glial progenitors and
anti-TBR1 to label the early post-mitotic neurons in addition to a nucleic acid
stain (Figure \ref{phenotyping-2}A, B). The 3D datasets enabled single-cell
nucleus identification and segmentation throughout the organoid. We applied
curvature-based seeded watershed on nuclear dye images [@Atta-Fosu2016] and
achieved an accuracy of 90% (Figure \ref{phenotyping-Sup1}). Next, we
co-localized segmented nuclei with SOX2 and TBR1 channels for molecular
phenotyping of individual cells (Figure \ref{phenotyping-2}C). Since expression
of these two markers is mutually exclusive, we identified three populations in
individual organoids: SOX2+ progenitors, TBR1+ neurons, and double negative (DN)
cells. Morphological analysis of individual nuclei shows a ~10µm average
diameter for all three cell types, although we detect a range of different
volumes in each population (Figure \ref{phenotyping-2}D, E).

![Single cell detection and analysis (A) Scheme of single cell morphological characterization. (B) Demonstration of automated nuclei detection in 3D datasets. Syto16 in blue, Sox2 in red, Tbr1 in green. Scale bar = 100 µm. (C) Expression of TBR1 and SOX2 in individual nuclei. Dot plot shows gating parameters and population frequency. (D)  Representative images of segmented nuclei for each cell type showing a range of morphological features sorted by sorted by principal component analysis. (E) Morphological analysis of individual cells shows a consistent equivalent diameter ~10 µm for all cell types. (F) Scheme of contextual analysis showing the proximity of each cell to the nearest SOX2 and TBR1 cells. Bar graph shows the results of contextual analysis shown below with “proximity score gates” to define six distinct populations. Gates captured >99% of all cells. (G) Middle optical section of a day 35 organoid dataset showing detected cells colored according their spatial context-based subcategorization. Inset shows zoomed view of dotted rectangle region. Right subpanels show instances of six different subpopulations identified by SCOUT. (H) Detailed scheme of the proximity analysis used for microenvironment analysis. In brief, the quantify the distance of each cell’s nearest SOX2 and TBR1 cells using a 25µm radius to normalize proximities. The proximity score between 0 (distant) and 1 (adjacent) reflects the cell’s microenvironment as a function of progenitors and mature neurons. (I) Proximity analysis of SOX2 cells shows high proximity to other SOX2 cells. (J) Images showing microenvironment change as SOX2 cells increase their proximity score to TBR1 cells. Low proximity to TBR1 (left) reflects cells lining the ventricle whereas higher proximity shows cells at the edge of the ventricular zone (right). \label{phenotyping-2}](source/figures/Phenotyping/figure2.jpg){ width=100% }

\begin{figure*}
\caption*{
(K) Proximity analysis of TBR1 cells shows a high proximity to other TBR1 cells and a rare population of cells with a high SOX2 proximity. (L) Representative replicate images of TBR1 cells found in the major and rare microenvironment analysis. Scale bar = 50µm.
}
\end{figure*}

Our 3-D organoid-wide datasets provide spatial (x-,y-,z-coordinates) and
selected molecular information (e.g., antibody used) of all cells within intact
cerebral organoids. This provides an opportunity to interrogate the spatial
context of individual cells with known molecular phenotypes in an unbiased
manner. To characterize the spatial context of each cell, we computed a
“positional proximity score” based on each cell’s distance to its nearest SOX2+
and TBR1+ cells. In essence, this score reflects each cell’s relative proximity
to SOX2-rich ventricular zones and neuron-rich TBR1+ preplate-like regions
(Figure \ref{phenotyping-2}F-H). 

Proximity analysis confirms the organoid’s patterning since SOX2+ cells show
high proximity (>0.65) to other SOX2+ cells (Figure \ref{phenotyping-2}F, I). In
other words, SOX2-proximal cells are >99.6% SOX2+. We observe the same
phenomenon with TBR1+ cells where >98.6% of TBR1-proximal cells are TBR1+
(Figure \ref{phenotyping-2}G, K). This initial characterization validates the
proximity score’s ability to identify SOX2- and TBR1-rich regions. The lowest
proximity scores (<0.15) occurred for DN-adjacent DN cells at the core of the
organoid and in featureless regions away from the ventricles. Proximity analysis
detected three intermediate populations (0.15-0.65): SOX2-adjacent DN cells in
the ventricular zone, TBR1-adjacent DN in neuron-rich regions and SOX2/TBR1
co-adjacent DN cells. We hypothesized that the location of these DN
subpopulations likely correlates with their identity given that a TBR1-adjacent
DN cell is most likely a post-mitotic TBR1- neurons and a SOX2-adjacent DN cell
may represent an early population of intermediate progenitors migrating to form
a sub-ventricular zone. Although follow up experiments are necessary to confirm
any assumptions about cell identity, the contextual subcategorization of
unlabeled cells according to their context achieves a richer single-cell
analysis. More generally, our proximity analysis demonstrates an initial attempt
to combine molecular phenotyping and spatial context for population
subcategorization in highly patterned tissues.

Next, we used the proximity analysis to investigate the spatial context of
labelled cells. When focusing on SOX2 cells possessing a high proximity to other
SOX2 cells ($P_i^{SOX2}$ = 0.7-0.8), we detect a range of TBR1 proximities
(Figure \ref{phenotyping-2}I, J). Sampling individual cells along the TBR1
proximity axis reveals the identification SOX2+ cells bordering the ventricle
($P_i^{TBR1}$ <0.1), in the middle of the ventricular zone ($P_i^{TBR1}$ =
0.2-0.4) and in close contact to TBR1 cells ($P_i^{TBR1}$ = 0.5). Each of these
cell populations possess a unique radial distance from the ventricle and towards
the neuron-rich region. When focusing on TBR1 cells, the majority of cells are
found in TBR1 rich regions (Figure \ref{phenotyping-2}K, L). However, we
detected a rare population of TBR1 cells with an unusually high SOX2 proximity
($P_i^{SOX2}$ = 0.6) corresponding to TBR1 cells in the ventricular zone (Figure
\ref{phenotyping-2}L). These rare cells may represent newly differentiated cells
migrating away from the ventricular zone. These initial findings highlight the
possibility of using a cell’s proximity to other known cell types to identify
different microenvironments in whole organoids. 

### SCOUT Analysis of Ventricles and Regional Architectures

Next, we sought to characterize ventricles and the radial cell patterning they
produced (Figure \ref{phenotyping-3}). The position of SOX2 and TBR1 cells
relative to the ventricle enables the identification of basic cytoarchitectural
patterning in cerebral organoids. Based on previous work, these markers enable
identification of a SOX2+ ventricular zone and an early preplate-like layer of
TBR1+ neurons. First, we identified the total number and general morphology of
ventricles inside our organoids. We adapted U-Net [@Ronneberger2015], a
convolutional neural network, to detect SOX2-lined ventricles based on 9
manually segmented [@Yushkevich2006] datasets containing 7596 nuclear dye images
(Figure \ref{phenotyping-Sup2}). We performed manual segmentation using the SOX2
antibody channel, but trained the convolutional neural network on nuclear dye
images to potentially eliminate the necessity of SOX2-antibody in future
studies. Automated ventricle segmentation by U-Net achieved a Dice coefficient
of 97.2% on a 20% holdout test set and provided morphological analysis of the
three-dimensional ventricles (Figure \ref{phenotyping-3}B,
\ref{phenotyping-Sup2}).

![Ventricle segmentation and cytoarchitecture phenotyping. (A) Scheme of automated cytoarchitecture analysis. We quantified radial organization6,7 of cell populations around ventricles using “virtual cortical columns” 50 µm in diameter and 300 µm high perpendicular to the ventricle surface. (B) Demonstration of automated ventricle segmentation using U-Net convolutional neural network. Representative optical section of a volumetric dataset with detected ventricles in magenta. (C) 3D render of ventricle highlighted in panel B with normal used to orient virtual cortical columns shown in yellow. (D) Graph showing that the total number of normal per ventricle depends on the ventricle’s surface area. (E) UMAP embedding of detected cytoarchitectures in a single organoid color-coded according to each cluster. (F) Representative image and average profile plot of individual cytoarchitecture clusters showing the radial distribution of SOX2 (red), double negatives (blue) and TBR1 (green) cells. (G) 3D render of segmented cells and ventricles from a \ day 35 organoid. On the left side ventricles are white and six cell populations are colored according to the index in Figure 2G: SOX2 in red, SOX2-adjacent in magenta, co-adjacent in yellow, TBR1-adjacent in cyan, TBR1 in green and core DN in blue. On the right, we mapped the detected cytoarchitectures on the surface of rendered ventricles using the colors in panel F. (H) Three-channel heat map from 100 random cytoarchitectures. Each row shows the number of cells detected in all six 50 µm increments moving away from the ventricle surface. Intensity of red, blue and green represent SOX2, DN and TBR1, respectively. (I) The frequency of SOX2, DN and TBR1 cells detected in a ventricle’s virtual cortical columns correlates with the ventricle equivalent diameter. Strongest correlation occurs for increased DN and increased TBR1 in larger ventricles. \label{phenotyping-3}](source/figures/Phenotyping/figure3.jpg){ width=100% }

Ventricles are an important anatomical landmark in the heterogeneous topography
of cerebral organoid. They provide the origin of radial patterning that occurs
when progenitor glia cells produce post-mitotic neurons. We quantified radial
organization of cell populations around ventricles by generating “virtual
cortical columns” 50µm in diameter and 300µm long perpendicular to the
ventricle’s surface (Figure \ref{phenotyping-3}A-C). Each column captures SOX2,
TBR1, and DN cell counts in 6 x 50 µm-tall stacked cylindrical regions. We
generated thousands of virtual cortical columns uniformly distributed across the
surface of all ventricles for unbiased quantification of radial
cytoarchitectures in the organoid. As expected, the number of columns generated
per ventricle was proportional to its surface area (Figure
\ref{phenotyping-3}D). Unsupervised hierarchical clustering after UMAP embedding
to reduce dimensionality [@McInnes2018] revealed five distinct cytoarchitectures
that we named TBR1+DN-low, TBR1+DN-high, “surface”, “DN only”, and “adjacent
ventricles” (Figure \ref{phenotyping-3}E, F). The “surface” columns are close to
the organoid’s surface. The “adjacent ventricles” columns are characterized by a
double peak in SOX2 density where two adjoining ventricles were in close
proximity. When we mapped the virtual columns onto the surface of the
ventricles, we observed a strong positional correlation between columns within
the organoid (Figure \ref{phenotyping-3}G). Sampling one hundred random virtual
columns reveals a spectrum of different cell profiles and we explored whether
ventricle properties could predict emergent cell patterns (Figure
\ref{phenotyping-3}H, I). Quantification of cell type frequency for arising from
independent ventricles reveals a significant correlation between ventricle size
and SOX2 frequency due to the thicker ventricular zones surrounding large
ventricles. We also detected a correlation between ventricle size and TBR1 cell
frequency, suggesting that lager ventricles are farther along in cortical
development and may occupy regions of the organoid that best replicate
physiological conditions. Given the heterogeneity of organoids, conventional
quantification of the “average cytoarchitecture” based on tissue sections is
prone to noise and misinterpretation. SCOUT, on the other hand, provides
independent analysis of multiple cytoarchitectures and ventricles to provide
unbiased full-spectrum analysis of cell patterning.

### SCOUT Whole-Organoid Analysis and Correlation

SCOUT provides the ability to measure absolute frequency of cell populations in
individual organoids. We could therefore quantify the accuracy of conventional
histological analysis based on two-dimensional tissue sections. First, we
compared how three different 100µm thick “pseudo-sections” generated from our 3D
datasets of day 35 organoids predicted whole-tissue cell type frequencies
(Figure \ref{phenotyping-4}A). The pseudo-sections consistently misestimated the
SOX2, TBR1 and DN whole-organoid frequency and produced significant
intra-organoid heterogeneity biased by the pseudo-section’s position inside the
organoid. To better understand the impact of positional bias, we assessed the
correlation between cell type frequency and the distance from the surface for
individual ventricles (Figure \ref{phenotyping-4}B). This analysis reveals a
significant positional bias for all cell types. TBR1 and SOX2 cell frequency is
highest at the organoid’s surface and decreases in the deeper regions of the
tissue. Inversely, DN cell frequency increases as a ventricle moves away from
the surface and reaches ~80% for ventricles near the organoid’s core. This data
mirrors our correlation between ventricle size and the frequency of SOX2 and
TBR1 cells (Figure \ref{phenotyping-3}I) since larger ventricles are usually
found at our organoids’ surface. These trends highlight that histological
sections possess cell frequency biases dependent on their position within the
organoid. 

![Whole organoid analysis for unbiased quantitative studies. (A) Scheme (top) and analysis of three different 100 µm pseudo-sections from a 3D dataset. Pie charts (right) show the variable depth-dependent cell frequency for individual slices. Bottom shows the estimated cell frequency for each cell type with the actual whole-organoid frequency (dotted line). (B) Analysis of cell frequencies for 1187 independent ventricles pooled from 12 day 35 organoids. Cell frequency for each organoid was determined by combining the counts of cells detected in all “virtual cortical columns” used for cytoarchitecture analysis. (C) Comparison of pseudo-slice heterogeneity with biological inter-organoid variability. Each histogram shows the distribution of 10,000 pseudo-sections 100µm thick for 12 organoids (black) versus the distribution of whole-organoid frequency (colored histogram, ticks show independent organoid values). (D) Comparison of cell frequency standard deviation for the pseudo-sections sampling variability (2D) versus whole-organoid biological variability (3D). The number of pseudo-sections required to match biological variability is shown for each cell population. (E) Comparison of the relative standard error for 276 multiscale features in 12 d35 organoid replicates where each dot is colored based on to the scale of its analysis. (F) Heat map of Pearson’s correlation coefficient investigating the relationship between the 276 multiscale features and their variation in 12 d35 organoids. Right shows the cropped region where we see a combination of single-cell (red) and whole-organoid (blue) features where r >0.88. (G) Network of feature correlation when the absolute Pearson’s correlation coefficient is >0.75. Cropped region shows the same multiscale correlation as the heat map in panel F. The SOX2 cell count and organoid volume were the most central nodes in this cluster, both having a degree of 30. \label{phenotyping-4}](source/figures/Phenotyping/figure4.jpg){ width=100% }

To compare how the “sampling-bias” heterogeneity of histological sections
measures up to the “biological” heterogeneity of sampling different organoids,
we compared the statistical distribution of cell type frequencies in 12
organoids (biological heterogeneity) with the statistical distribution of all
possible estimates (sampling bias) using 100µm thick “pseudo-sections” in these
same organoids (Figure \ref{phenotyping-4}C, D). Pseudo-section sampling
variability was greater than the variability caused by inter-organoid biological
heterogeneity. Theoretically, to reduce the variability of sampling bias to
match the inter-organoid biological variability, between five and seven
histological sections would be necessary per organoid. In other words, it would
take 5 to 7 100µm sections to match the standard deviation of inter-organoid
replicates for cell type frequencies.

To better understand the nature of inter-organoid differences, we combined all
of our multiscale analyses into a set of 276 descriptors capturing single cell,
cytoarchitecture and whole-tissue features in a single organoid (Table
\ref{feature-table}). Comparative analysis among day 35 organoid replicates
reveals unequal variance in specific features. When looking at the relative
standard error of these features, we see a wide range of heterogeneity (Figure
\ref{phenotyping-4}E). Some of the most variable features include average
ventricle volume, total count of DN cells, and organoid volume. Most consistent
features are the single cell morphology descriptors, which are virtually
identical in all replicates. Interestingly, the frequency of SOX2 and TBR1 cells
was more consistent than their absolute number. Given the large variability of
certain features, we computed pairwise correlations between multiscale features
to see if certain features in single-cell measurements could predict
whole-tissue topography (Figure \ref{phenotyping-4}F). The most interesting
multiscale correlations occurs around SOX2 and TBR cell counts. A network
analysis of pairwise correlations (r > 0.75) reveals a cluster of correlated
multiscale features where SOX2 count and organoid volume were the most central
nodes (degree of 30). Variation of these two features correlated with changes in
ventricle size, TBR1 count, co-adjacent DN counts and average SOX2 distance from
the surface (Figure \ref{phenotyping-4}G). These analyses show that SCOUT can
reduce positional bias-related variance, quantify biological heterogeneity in
replicates, and can provide a framework for the correlation of multiscale
features.

### SCOUT Analysis of Organoid Maturation

Next, we used SCOUT for comparative analysis between day 35 and day 60 cerebral
organoids to detect maturation-related multiscale changes (Figure
\ref{phenotyping-5}). We compared multiscale features between groups using
independent two-tailed t-tests and detected 28 significant changes that we
rank-ordered according to fold-change (Figure \ref{phenotyping-5}B, C). Day 60
organoids showed a four-fold increase in total volume and a two-fold increase in
ventricle size. As expected, growth produced a substantial increase in total
cell numbers (19X DN, 4X TBR1, 2X SOX2; Figure \ref{phenotyping-5}D). However,
cell expansion was non-uniform and produced a 56% reduction in SOX2 cell
frequency, which produced a two-fold increase in the average TBR1/SOX2 ratio. We
suspect the reduced expansion of progenitor cells was caused by the addition of
BDNF at day 40 of organoid culture, which drives neurogenesis and suppresses
progenitor expansion [@Fukumitsu2006]. Cell type frequency was relatively
consistent in replicate organoids, supporting the importance of whole-organoid
analysis to reduce histology-related variability (Figure \ref{phenotyping-5}E,
\ref{phenotyping-4}E). In d60 cerebral organoids, we observed a visible layer of
DN cells in between SOX2 and TBR1 regions (Figure \ref{phenotyping-5}A). This
new cell layer reduced the proximity of SOX2 and TBR1 cells to one another (43%
decrease for SOX2 and 34% decrease for TBR1). 

![Hyper-dimensional analysis of multiscale changes during cerebral organoid maturation. (A) Representative image of day 35 and 60 organoids taken from volumetric datasets. (B) Volcano plot highlighting unbiased detection of multiscale differences with dots colored according to scale of analysis. (C) Heat map outlining major differences between twelve d35 vs. eight d60 organoids. (D) Dot plots showing organoid volume, total cells, average ventricle volume, and total counts of antibody-labelled subsets. (E) Cell subpopulation frequencies for independent replicates (top) and average values (bottom). (F) Quantitative analysis of cytoarchitecture frequencies for independent replicates (top) and average values (bottom). (*** p<0.001, ** p<0.01) (G) UMAP embedding of the cytoarchitectures detected in d35 and d60 organoids. Left shows the distribution of cytoarchitectures in d35 organoids where each color represents a different organoid. Middle UMAP shows cytoarchitectures according to age of organoids (d35 blue and d60 red). Right UMAP shows the distribution of cytoarchitectures in the d60 organoids where each color represents a different organoid. (H) Analysis of cell proximity to SOX2 and TBR1 in “adjacent” (left) and “TBR1, DNhigh” (right) as a function of the distance from the ventricle surface. \label{phenotyping-5}](source/figures/Phenotyping/figure5.jpg){
width=100% }

Maturation also increased the frequency of “TBR1-adjacent DN cells” 7X, which
lead to the emergence of the “TBR1+DN-hi” cytoarchitecture (31.2%) characterized
by abundant DN cells appearing after the SOX2 ventricular zone and continuing
into the TBR1 region (Figure \ref{phenotyping-5}F, G). In these
cytoarchitectures, DN cells likely represent a combination of intermediate
progenitors and non-TBR1 neurons that emerge over the course of organoid
maturation. The abundance of these new cell populations increased both
inter-ventricle and ventricle-to-surface distances causing a 70% reduction in
“Adjacent” and “Surface” cytoarchitectures, respectively. As organoids mature,
they replaced these early cytoarchitectures with “TBR1+DN-hi” (31.2%) and
“TBR1+DN-low” (28%), highlighting a general increase in TBR1+ cells around the
maturing ventricles. Another important change in cytoarchitecture is the
doubling of “DN only” cytoarchitectures from 14% to 28% as a consequence of the
14-fold increase in “core DN” cells. The “DN only”cytoarchitectures are usually
oriented towards the organoid core where no ventricles or cell markers are
detected. This region grows in d60 organoids since the reduced surface-to-volume
ratio in these large organoids likely interferes with the transport of oxygen,
nutrients and growth factors.

Although organoids appear heterogeneous when comparing random cross-sections,
full-spectrum cytoarchitecture reveals a relatively consistent distribution of
radial organization in our biological replicates. To confirm the consistency of
cytoarchitecture clusters, we “gated” on the “Adjacent” and “TBR1+DN-hi” to
compare SOX2 and TBR1 proximity of individual cells relative to their distance
from the ventricle surface (Figure \ref{phenotyping-5}H). This analysis confirms
that cells found within the “Adjacent” cytoarchitectures consistently show a
slight increase in TBR1 proximity at ~75 µm then return to high SOX2 proximity.
In contrast, the more mature TBR1+DN-hi regions show a one-time transition from
SOX2-proximity to TBR1-proximity ~150µm away from the ventricle surface.

### Comparative Analysis of Zika Infection

Organoids offer a unique opportunity to study human brain development in vitro
and to model diseases that can cause dysfunction in the maturing brain. Brain
organoids were quickly applied in 2016 to understand the mechanisms of Zika
virus-related microcephaly during the 2015-2016 American epidemic [@Cugola2016].
In newborns, Zika-related pathologies include microcephaly, ventriculomegaly and
cortical migrational abnormalities [@SoaresdeOliveira-Szejnfeld2016]. Previous
studies have used cerebral organoids to monitor the cell type-specific
susceptibility of Zika virus infection and how it produces microcephaly in
newborns (Cugola et al. 2016, Watanabe et al. 2017). Initial studies suggest
that infection alters the morphology of progenitor-rich ventricular zones and
reduces the production of mature neurons [@Thawani2018]. These initial studies
are mostly based on histological sections, which are susceptible to positional
bias (Figure \ref{phenotyping-4}A). Another concern with viral infection is the
possibility of region-specific phenotypes due to non-uniform virus infection,
transport and replication in various subregions. Fortunately, SCOUT analysis of
3D datasets allows for full-spectrum analysis of infected organoids that can
achieve a comprehensive quantitative analysis and can catch rare events. 

Using a clinical isolate from Puerto Rico, we infected organoids at day 21 with
0.1 MOI and waited 14 days post-infection (dpi) to assess the multiscale impact
of viral infection (Figure \ref{phenotyping-6}, \ref{phenotyping-Sup4}).
SCOUT-analysis detected 22 significant differences (Figure
\ref{phenotyping-6}B). Notably, we detected a ~50% reduction in organoid size,
ventricle volume and total ventricle counts (Figure \ref{phenotyping-6}C,
\ref{phenotyping-Sup5}). The loss of ventricles correlates with a 72% decrease
in SOX2 cells and a 75% decrease in“adjacent” cytoarchitecture (from 31% to 8%).
Zika infection also changed the morphology of ventricular zones producing an
irregular and sparse arrangement of SOX2 cells (Figure \ref{phenotyping-6}A,
\ref{phenotyping-Sup5}). 

![Hyper-dimensional analysis of multiscale changes caused by Zika virus infection. (A) Representative image of age-matched day 34 mock and Zika virus-infected organoid (14 days post-infection) taken from volumetric datasets (scale bar  = 1 mm). (B) Heat map outlining major differences between nine mock vs. six Zika-infected organoids. (C) Dot plots showing organoid volume, ventricle count, ventricle volume, and total counts SOX2 and TBR1 cells. (D) Comparison of cell subpopulation frequencies (*** p<0.001, ** p<0.01). (E) Comparison of cytoarchitecture frequencies (*** p<0.001, ** p<0.01). (F) UMAP embedding of the cytoarchitectures detected in mock (grey) and Zika-infected organoids (red) showing a shift in cytoarchitecture. (G) UMAP embedding of cytoarchitecture clusters with a representative image for each. Scale bar = 50 µm (H) Average profile plot of mock (top row) and Zika infected (bottom row) cytoarchitecture clusters showing the radial distribution of SOX2 (red), double negatives (blue) and TBR1 (green) cells. \label{phenotyping-6}](source/figures/Phenotyping/figure6.jpg){ width=100% }

\begin{figure*}
\caption*{
(I) Distribution in mock and Zika infected organoids of the mean position of SOX2 cells in virtual cortical columns classified as either “Surface-TBR1” or “Surface-DN.” This measure was used to approximate the average ventricular zone thickness for each group. The overall distribution mean shows a significant drop in Zika infected organoids. (J) Correlation of ventricle diameter with frequency of TBR1 cells detected in virtual cortical columns. (K) Rendering of segmented ventricles from each group with their surfaces colored according to detected cytoarchitecture. Clusters are represented using the same colors as panel E and G.
}
\end{figure*}

We also detected a ~90% decrease in TBR1 cell count and frequency in response to
Zika infection. The absence of mature neurons shifted infected organoid
cytoarchitectures from “Adjacent” and “Surface-TBR1” to predominantly “DN” (52%)
and “Surface-DN” (27%), both of which have virtually negligible TBR1 cell counts
(Figure 6E-H). Interestingly, TBR1 counts were reduced >70% in the Zika-specific
instances of “DN”, “Surface DN”, “Surface TBR1” and “Adjacent” cytoarchitectures
(Figure 6H). Comparison of cytoarchitecture profiles also reveals a decrease in
the width of SOX2 distribution in the infected “Surface-TBR1” cytoarchitecture.
To quantify possible changes in ventricular zone thickness, we compared the mean
radial distance of SOX2 in “Surface-TBR1” and “Surface-DN” cytoarchitectures and
found a ~30% decrease in Zika infected organoids (Figure 6I). These analyses
highlights our pipeline’s ability to distinguish group-specific differences in
pre-clustered cytoarchitectures.

Zika-infection produced an aggressive phenotype that limited organoid size,
ventricle growth, and the expansion of SOX2 and TBR1 cells (Figure
\ref{phenotyping-6}J, K). Given the correlation of SOX2 cell number with
features at longer length scales (Figure \ref{phenotyping-4}F), it is
unsurprising that Zika-related loss of neural progenitors produced an important
decrease in the complexity of tissue topography and cell patterning. We
hypothesized that dramatic tissue remodeling would impact the microenvironment
of individual cells, so we compared proximity scores of TBR1 cells in mock- and
Zika-infected organoids. This analysis reveals that while mock organoids show
predominantly TBR1 cells grouped together in densely populated regions, Zika
infection shifts TBR1 microenvironments to either SOX2-adjacent clusters or in
sparse TBR regions (Figure \ref{phenotyping-Sup6}).  

SCOUT offers the first quantitative and comprehensive assessment of Zika-related
loss in cell types, ventricles and morphological changes in an organoid-wide and
unbiased manner. Our characterization of the Zika infection phenotype is
consistent with previous reports and may mirror the mechanisms of viral
microcephaly in newborns. Unfortunately, it remains unclear whether the loss of
TBR1+ neurons is due to disrupted progenitor differentiation or neuron-specific
cell death. However, SCOUT can help discern between these two possibilities in
future experiments. 

### Comparative Analysis of Different Cerebral Organoid Protocols

Recent advances have established a rich repertoire of organoid models,
differentiation protocols and cell culture techniques. Cellular diversity and
inter-organoid variability in these different protocols is typically assessed by
single-cell RNA sequencing. For cerebral organoids, Velasco et al. and Yoon et
al. have demonstrated reliable and reproducible generation of dorsal forebrain
organoids with consistent frequency of different cell populations. However, few
studies have attempted to quantify the diversity and variability of multiscale
features important for early cortical development. Our high-dimensional
phenotyping pipeline can provide the first quantitative assessment of changes
and provide phenotypic descriptions of different organoid protocols and batches.

![Hyper-dimensional analysis of multiscale changes in different culture protocols. (A) Representative image of day 56 Velasco and our day 60 organoids taken from volumetric datasets. (yellow bar = 1 mm; white bar = 100 µm) (B) Heat map outlining major differences between different organoid culture protocols. (C) Dot plots showing organoid volume, average ventricle volume, and total counts of cell types. (D) Comparative analysis of the fold-change in the relative standard error of quantified features. Dotted line shows zero, bars reflect better homogeneity in Velasco (blue) organoids and our organoids (red). Graph shows 72% of features (141/195) were more consistent in Velasco organoids (E) Volcano plot highlighting unbiased detection of multiscale differences with dots colored according to scale of analysis. (F) Comparison of cell subpopulation frequencies. (*** p<0.001, ** p<0.01, *<0.05). (G) Comparison of cytoarchitecture frequency (*** p<0.001, ** p<0.01, *<0.05). (H) Representative image and average profile plot of individual cytoarchitecture clusters showing the radial distribution of SOX2 (red), double negatives (blue) and TBR1 (green) cells in the Velasco-specific TBR1-rich cytoarchitecture and the day 60-specific Tbr1+DN-high cytoarchitecture. Arrows show the higher TBR1 frequency (green) and DN band between SOX2 and TBR1 (blue). (I) Frequency of SOX2 (red), TBR1 (green) and DN (blue) for 250 random ventricles pooled from all organoids. Cell frequency was determined by considering the detected cells all of a ventricle’s virtual cortical columns. (J) Top shows UMAP embedding of the cytoarchitectures detected in Velasco (blue) and day 60 organoids (red). Middle UMAP shows cytoarchitectures collected from three Velasco organoids. Bottom UMAP shows cytoarchitectures from three day 60 organoids. \label{phenotyping-7}](source/figures/Phenotyping/figure7.jpg){ width=100% }

As a proof-of-concept, we compared day 56 “Velasco organoids” with our day 60
organoids, cultured according to a modified version of the Lancaster protocol
(Figure \ref{phenotyping-7}, \ref{phenotyping-Sup7}). Our protocol supplements
this original protocol with dual SMAD inhibition for the first half of
neuroepithelium induction, adds BDNF after day 40 and used Petri dishes on a
shaker instead of a spinning bioreactor. In contrast, the Velasco protocol used
WNT inhibition and TGF-β inhibition for the first 18 days, and followed a
different maturation schedule. At day 35, organoids are transferred into
spinning bioreactor with medium containing soluble Matrigel. This is a
significant difference from Matrigel droplet embedding of organoids on day 12
using our protocol. Comparative analysis detects 29 significant differences
(Figure \ref{phenotyping-7}B, E). Most noticeably, the Velasco protocol
organoids and their ventricles were smaller, showing an average 60% and 84%
decrease, respectively (Figure \ref{phenotyping-7}F). At the cellular level,
Velasco organoids show a 2X higher frequency of SOX2 cells and 3X increase in
TBR1 frequency (Figure \ref{phenotyping-7}F). The proximity between the SOX2 and
TBR1 cells also increased twofold due to the absence DN cells between the
progenitor zone and TBR1 cells (Figure \ref{phenotyping-7}A, H). DN cells were
less frequent overall, which produced a 70% reduction in core DN cells and an
80% reduction in TBR1-adjacent DN cells. 

Cytoarchitectures were vastly different in these two protocols. The Velasco
organoid’s abundant TBR1 cells caused the appearance of a new “TBR1-rich
cluster” (~21% of total virtual cortical columns), where TBR1 counts are ~35%
higher and DN counts are 70% lower compared to the “TBR1+DN-high”
cytoarchitecture favored in our day 60 organoids (Figure
\ref{phenotyping-7}G-J). Velasco organoids also show more “Adjacent”
cytoarchitectures, consistent with smaller organoids. The 66% reduction in “DN
only” cytoarchitecture reflects less “core cells” which can be attributed to
smaller organoid size or the improved tissue transport when using a spinning
bioreactor. 

Interestingly, Velasco organoids possessed better feature consistency across all
scales. We quantified the variance of all 276 features and compared the
fold-change in both organoid groups. The Velasco organoids show decreased
variance in 72% of features (Figure \ref{phenotyping-7}D). This is also apparent
in the cytoarchitecture analysis where clustering shows more consistent grouping
of Velasco cytoarchitectures compared to our day 60 organoids using UMAP (Figure
\ref{phenotyping-7}J). Even a random sampling of 250 virtual cortical columns in
each groups shows a higher consistency of cell frequencies in Velasco organoids.

Divergence of features in these two groups is expected given the numerous
differences in medium recipes, inhibitors used, culture timing and Matrigel
usage.  Nevertheless, this proof-of-concept study provides the foundation for
establishing quantitative unbiased assessment of different organoid models and
culture protocols. Our imaging-based holistic analysis pipeline in combination
with single-cell RNA sequencing may facilitate the development of advanced
organoid models with high developmental reproducibility in both molecular and
anatomical features. 

## Discussion

SCOUT provides a much-needed pipeline for the phenotypic description and
comparative analysis of three-dimensional culture models. Here, we provide the
first attempt at unbiased quantification of multiscale changes in different
cerebral organoid models. The combination of tissue clearing, rapid antibody
labelling and LSFM enables the analysis of large organoid cohorts. Initial
tissue preparation requires approximately ten days and enables rapid
fluorescence imaging. A single organoid takes ~15 min to image at 10X providing
sufficient resolution for single-cell analysis. We envision SCOUT as a method to
generate robust statistically-powered hypotheses via high-throughput volumetric
analysis of intact organoids. This initial set of studies confirms the
quantification of multiscale feature correlation, maturation-induced growth,
Zika virus-induced damage, and protocol-specific improvements in cerebral
organoids. SCOUT also enables previously unattainable quantification of cellular
context, ventricle morphology, and cytoarchitecture distribution in previously
published models. 

The current list of quantified features and multiscale correlations will
continue to evolve as we gain more experience quantifying three-dimensional
cellular biology in the developing brain. In this study, we applied some new
concepts such as cell proximity analysis and virtual cortical column-based
cytoarchitecture analysis in three-dimensional environments. Our analysis
centered on the SOX2 and TBR1 cell populations because of an interest in radial
organization of progenitors and neurons in cerebral organoids. However, these
antibodies could be substituted to address any number of biological questions.
Adaptation of this pipeline is most straightforward for the analysis of other
transcription factors such as TBR2, CTIP2 or SATB2 which are common in cerebral
organoid studies. Fluorescent probes that generate non-nuclear staining will
require some optimization to ensure accurate co-localization of the segmented
nuclei and new markers. 

Future improvements include the possibility of increasing the number of markers
to provide a richer phenotypic analysis of organoids. Several strategies can
increase the number of detectable markers such as barcoding of primary
antibodies, multi-round tissue staining, or the addition of laser lines and
filter sets to the microscope. Another challenge is the inability to disentangle
correlation and causation in our current study. However, this can be addressed
with strategic experimental design that utilizes time-point analysis and
fluorescent reporter systems to catch emergence of new features over time.

In its current state, SCOUT provides the first attempt at holistic cerebral
organoid characterization. Although organoids are an exciting in vitro model for
human brain development, their heterogeneity can be problematic when using
two-dimensional tissue sections for cellular and morphological analysis.
Whole-organoid analysis also produces variance, but we were capable of detecting
significant differences among the experimental groups and trends were consistent
among replicates. Combining SCOUT with improved culture protocols such as the
Velasco organoids will establish consistent three-dimensional models where
analysis can discriminate multiscale changes with impressive signal-to-noise.
This will hopefully empower the discovery of mechanisms underlying the biology
and dysfunction of human brain development.

## Methods

### Cerebral Organoid Culture

Organoids were cultured according to the protocol by Lancaster et al. (2014)
using the SC101A iPS cell line (Systems Biosciences). The iPSC cells were
cultured on Matrigel-coated (Corning) plates using mTeSR medium (Stemcell
Technologies), passaged using ReLeSR at 80% confluency, and organoids were made
before the 15th passage of initial cells. For organoids, single cells were
detached with Accutase (Stemcell Technologies) when iPS cells were at 60-80%
confluency. We seeded 9,000 cells in ultra-low attachment round bottom 96-well
plates in hESC medium32 with 4 ng/mL bFGF (Peprotech) 50 µM Y-27632
Rock-inhibitor (Tocris) for the first 4 days then without for an additional two
days. At day 6, organoids were transferred to ultra-low attachment 24-well
plates in neural induction medium (Lancaster et al. 2014) with addition of SMAD
inhibitors (Mellios et al. 2018) 10µM SB-431542 and 1µM dorsomorphin (Tocris).
At day 9, neural induction medium was replaced with fresh medium without the
SMAD inhibitors. At day 12, organoids were embedded in 15µL growth-factor
reduced Matrigel droplets (Corning). We cultured 12 organoids per 60mm Petri
dish for suspension culture in 5mL cerebral organoid differentiation medium
(Lancaster et al. 2014) without vitamin A for 4 days. At day 16, medium was
replaced with cerebral organoid differentiation medium with vitamin A (Lancaster
et al. 2014) and placed on shaker at 85 rpm. Medium was replaced twice per week
and at day 40, we added 14 ng/mL BDNF to organoid medium (Quandrato et al.
2017).

### SHIELD Sample Preparation

Organoids were rinsed once with PBS, then fixed with freshly prepared 4% PFA in
PBS (EM grade, Electron Microscopy Sciences) at room temperature for 30 minutes
on a shaker. Organoids were rinsed three times in PBS, transferred into ice cold
2% polyglycerol 3-polyglycidylether (wt./v) in 0.1M phosphate buffer pH 7.2 and
incubated for two days at 4°C. Organoids were subsequently transferred into
pre-warmed 0.1M sodium carbonate buffer (pH 10) and incubated at 37°C for 24h.
Organoids were washed extensively with PBS for 8h, cleared in 0.2M SDS + 50 mM
phosphate buffer pH 7.3 for 48h at 55°C while shaking in EasyClear system
(LifeCanvas), and washed extensively in PBST (PBS, 0.1% Triton X-100, 0.02%
sodium azide) for 24h. 

### eFLASH Sample Preparation

SHIELD-processed and cleared organoids were stained using an adapted version of
the eFLASH protocol (Yun et al. 2019). We incubated organoids in eFLASH sample
buffer (0.3M Tris, 0.2M CAPS, 20% D-sorbitol, 1 mM SDS, 2% bovine serum albumin,
0.02% sodium azide) overnight at room temperature. Organoids were then placed in
the SmartLabel system (Lifecanvas) with 1.4 mL sample buffer in the sample cup.
For SCOUT pipeline, we added 6µL Syto16 (1 mM solution, ThermoFischer #S7578),
15µg goat anti-SOX2 antibody (R&D Systems #AF2018), 10µg Fab fragment anti-goat
IgG Alexa Fluor 594 (Jackson ImmunoResearch #805-587-008), 30µg rabbit anti-TBR1
Alexa Fluor 647 (Cell Signaling Technology #45664S). System was filled with OFF
main buffer (0.3M Trizma base, 0.2M CAPS, 20% D-sorbitol, 1 mM SDS) and we
applied 90V at 0.01 rpm for 16h. The following day, we added 0.2mL 20% Triton
X-100 solution to the sample chamber, drained the system, rinsed the system with
deionized water, and filled it with ON main buffer (10mM phosphoric acid, 60mM
Trizma base, 20% D-sorbitol). We applied 90V at 0.01 rpm for 21h, removed
samples and rinsed them in PBST overnight. To increase antibody signal and
minimize signal loss in the immersion medium, we fixed antibody-stained samples
in freshly prepared PBS + 4% PFA for 12h at room temperature. 

### Whole-Organoid Imaging

Prior to imaging, organoids were equilibrated in Protos-based immersion medium
(Murray et al. 2015; Yun et al. 2019) in two steps. First, we incubated
organoids in a 1:1 mix of Protos and PBS for 4h. Then, we replaced the solution
with Protos immersion medium for at leash 6h. Images in Figure 1 were acquired
using the Leica TCS SP8 laser-scanning confocal microscope with a white light
laser source for excitations at 488, 594 and 647 nm using a 20X 0.5-NA
water-immersion objective (Leica #15506147, HCX APO L 20x/0.50 W U-V-I). For
rapid volumetric imaging in subsequent figures, Protos-immersed samples, were
mounted in a 1.5% agarose block prepared in Protos. We were able to mount 6-8
organoids per block at a time. After agarose polymerization, the block was
equilibrated in 25 mL Protos medium overnight. Samples were mounted and imaged
with a SmartSPIM  axially swept light-sheet microscope (LifeCanvas Technologies)
equipped with three lasers (488nm, 561nm, 642nm) and a 10x objective (Olympus
XLPLN10XSVMP, 0.6NA, 8mm WD, lateral resolution 0.66um in XY). We imaged samples
at a 0.6 x 0.6 x 2 µm voxel size.

### Preprocessing LSFM images of cerebral organoids

Cerebral organoid images from the LSFM system (LifeCanvas, SmartSPIM) originally
stored in an uncompressed binary format were first destriped and stitched
according to a previously reported image processing pipeline [@Swaney2019]. This
pipeline generates z-slice images with lossless compression that are used to
compute image histograms for each channel. After normalizing each channel to the
99th percentile of the histogram, each channel is then partitioned into (64, 64,
1)  voxel chunks using the Zarr Python package. This chunk-compressed
representation allows for parallel processing of each image data chunk.

### 3D nuclei detection using curvature-based seeded watershed

To detect all nuclei in volumetric nuclear stain images, a curvature-based
nuclei filtering strategy was developed. An image filter based on the
eigenvalues of the Shape Operator (also known as the Weingarten matrix) was
created by defining a probability distribution over the image curvature and
intensity as evidence for a nucleus centroid (Figure \ref{phenotyping-Sup3}).
This nucleus probability map highlights nuclei even in densely-packed regions
such as the ventricular zone in cerebral organoids. The probability map was
computed for each image chunk after Gaussian smoothing to remove noise. Nuclei
centroids were extracted from these probability maps through local maxima
detection. The optimal parameters for Gaussian smoothing that maximize the
detection F1-score were determined by validation with a set of 150 labeled
nuclei centroids. To segment each nucleus, the detected nuclei centroids were
used as seed points for performing a watershed segmentation of a nucleus
foreground mask. This nucleus foreground mask was obtained through binarization
of the nucleus probability map. Binarization of the nuclei probability map was
accomplished by applying a threshold.

### Nuclei detection accuracy measurement

To assess the accuracy of our nuclei detection strategy, nuclei centroids were
hand-annotated using a previously reported image alignment tool called Nuggt.
1,237 nuclei centroids were hand-annotated in organoid subregions including the
ventricular zone and subventricular zone. Detected nuclei were considered true
positives (TP) if they fell within 5 voxels of a ground-truth centroid and false
positives (FP) if not. Since multiple detections may lie within 5 voxels of a
given ground-truth centroid, double-counting TPs was avoided by matching ground
truth and detected centroids using the Hungarian method for solving the linear
sum assignment problem. The result of this matching procedure are lists of all
TPs, FP, and false negatives (FN). These accuracy statistics were used to
compute the overall accuracy and F1-score of the nuclei detection strategy. Our
curvature-based seeded watershed algorithm was benchmarked against the
difference of Gaussian (DoG) and Laplacian of Gaussian (LoG) blob detection
algorithms implemented in the scikit-image Python package.

### Cellular subcategorization using in situ cytometry and spatial proximity analysis

Protein expression of transcription factors was measured by sampling the SOX2
and TBR1 antibody staining in a 3-voxel diameter spherical ball centered around
the nuceli centroids. The mean fluorescence intensity within each sphere was
computed for each channel and gated to define SOX2-/+ and TBR1-/+ cell
populations. The result of this gating strategy is a labeled point cloud of
nuclei centroids.

Spatial proximity analysis of the labeled nuclei point cloud was accomplished by
first constructing a KD-tree representation of the point cloud for efficient
querying of nearest nuclei. The spatial proximity to the nearest $n$ cells of type
$t$ was calcualted using the following formula for each detected nucleus $i$:

$$P^{(t)}_i=\prod_{j=1}^{n}\frac{1}{1+d_{i,j}/\sigma^{(t)}}$$

where $d_{i,j}$ is the distance between the $i$-th nucleus and the $j$-th
nearest nucleus and $\sigma^{(t)}$ is a reference distance that controls the
proximity bandwidth (how close a neighboring nucleus must be to be considered in
close proximity). In our analyses, we chose $\sigma^{(t)}=25$ µm and $n=2$,
which provided the best separation of DN subpopulations.

### Automatic 3D ventricle segmentation using U-Net

To train a U-Net model for ventricle segmentation, downsampled volumetric images
of SOX2 staining were semi-automatically segmented using ITK-Snap. In total, 9
whole organoids were segmented, including 7596 binary 2D images. These images
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
contained vertices, faces, and normal vectors uniformly distributed over the
ventricle surfaces. The normal vectors and vertices were used to query which
nuclei centroids were within a 50 µm diameter and 300 µm tall cylindrical volume
around the surface normal. These cells were bin counted for each cell type over
size 50 µm intervals to construct the final radial cell profiles.

To determine cytoarchitectural types, 5000 radial cell profiles were sampled
from each organoid in a given dataset (i.e. from both d35 and d60 organoids in
the maturation analysis). These radial cell profiles were flattened into vectors
and concatenated into a matrix of cytoarchitecture observations and features.
This matrix was provided to UMAP to visualize the distribution of
cytoarchitectures in 2D and perform dimensionality reduction before clustering.
After performing UMAP embedding, the UMAP model was saved for future analysis.
The UMAP embedded cytoarchitectures were then grouped using hierarchical
clustering with a Euclidean distance metric and average linkage method. The
cluster labels were saved and used as training data in a nearest neighbor
cytoarchitecture classifier. Using the saved UMAP model and the pretrained
nearest neighbor cytoarchitecutre classifier, all profiles in each organoid were
classified efficiently. The resulting cytoarchitectural labels were used to
compute average profiles for each clusters as well as for coloring the faces of
the ventricles in a 3D render. This 3D render of ventricles pseudocolored by
cytoarchitecture was generated in Blender.

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
were stored in a matrix and bi-clustered using hierarchical clustering. To
construct a network from these pairwise correlations, the absolute value of the
correlation coefficients were thresholded at 0.75 to remove edges in the network
with smaller weights. This thresholded matrix of pairwise correlation
coefficients was used as an adjacency map in the NetworkX Python package. The
resulting network was then visualized in an interactive plot using the pyvis
Python package. 

### Estimation of intra-organoid section variability using psuedosections

To compare the intra-organoid variability of sections to the inter-organoid
variability in 3D analysis, the nuclei centroids and cell-type labels from 10
d35 organoids were used in both 2D and 3D analyses. Pseudo-sections were 100 µm
virtual sections of the same underlying 3D dataset of nuclei centroids and
cell-type labels that align with the XY plane and fall within the Z limited of
the organoid. 10,000 pseudo-sections were sampled from each organoid and used to
compute the overall (normalized) cell frequency for SOX2, TBR1, and DN cells.
Distributions of these pseudo-section cell-type frequencies were compared to the
distributions of cell-type frequencies obtained by comparing the 3D organoid
datasets directly. The central limit theorem was used to compute the sample size
of pseudo-sections needed to match the variance of the inter-organoid
distribution.

## Acknowledgments 

The authors would like to thank the entire Chung laboratory for support and
discussions. We want to thank S. Khan and L. DeLorenzo for their help annotating
training datasets for ventricle segmentation. A.A. was supported by postdoctoral
fellowships from the Picower Institute of Learning and Memory, the Canadian
Institutes of Health Research and the Natural Sciences and Engineering Research
Council of Canada. K.C. was supported by the Burroughs Wellcome Fund Career
Awards at the Scientific Interface, Searle Scholars Program. Packard award in
Science and Engineering, NARSAD Young Investigator Award, and the McKight
Foundation Technology Award. This work was supported by the JPB Foundation (PIIF
and PNDRF), the NCSOFT Cultural Foundation, the Institute for Basic Science
IBS-R026-D1, and the NIH (1-DP2-ES027992, U01MH117072).

## Author Contributions

K.C., A.A. and J.M.S. conceptualized the study. A.A., J.M.S. and K.C. wrote the
manuscript with input from all co-authors. J.S.M and A.A. made figures with
input from K.C. A.A. cultured organoids used in all figures except Figure 7.
A.A. optimized and performed organoid tissue processing, clearing and staining
with help from D.H.Y for eFLASH optimization and staining. N.E. mounted
organoids and acquired light-sheet fluorescent microscope data for Figures 2-7.
J.A. performed Zika virus infection on organoids grown by A.A. S.V. cultured
“Velasco organoids” used in figure 7. C.S. performed mRNA FISH probe staining in
Figure 1. J.M.S. and A.A. developed the analytical pipeline used for bioimage
analysis with input from K.C.

\newpage

## References


