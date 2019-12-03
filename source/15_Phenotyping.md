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
dissociation or sectioning and the loss of spatial information can bias data
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

To achieve whole organoid antibody staining and imaging (Figure
\ref{phenotyping-1}a), we adapted the SHIELD (Park et al. 2018) poly-epoxide
tissue reinforcement protocol to preserve biomolecules during detergent and
heat-based de-lipidation. Multiple epoxide groups in the polyglycerol
3-polyglycidyl ether molecule (P3PE) react with available amines in the tissue
to form stabilizing inter-and intra-molecular covalent bonds. We adapted the
original SHIELD protocol to prevent over-fixation in our samples and maintained
a near-neutral pH during de-lipidation to ensure bright antibody staining of
transcription factors (Figures \ref{phenotyping-Sup1}, \ref{phenotyping-Sup2}).
After immersion in dPROTOS optical clearing solution, cerebral organoids were
optically transparent (Figure \ref{phenotyping-1}b). Microscopy of
SHIELD-cleared organoid tissue sections confirm the preservation of eGFP
endogenous fluorescence, epitopes, and mRNA (Figure \ref{phenotyping-1}c). For
whole-organoid staining, we employed eFLASH technology where a rotating electric
field accelerates transport of fluorescent probes into the tissue for homogenous
antibody staining. The eFLASH protocol was adapted for cerebral organoids to
achieve simultaneous staining of 8-10 organoids in 35h using 3-15 µg of primary
antibody (see Methods). We achieved whole-organoid staining of nuclear and
cytoplasmic proteins (Figure \ref{phenotyping-1}d-f). Radial glia in whole d35
organoids were stained with vimentin, lipid binding protein, nestin, and SOX2.
Neurons were stained with β3-tubulin, MAP2, and TBR1. 

![Pipeline for intact organoid analysis (A) Cerebral organoids are grown from stem cells, fixed in 4% PFA, then post-fixed with SHIELD poly-epoxide crosslinker. Organoids are then cleared in SDS solution at 55°C, rinsed, then labelled with antibodies using eFLASH for rapid uniform staining. Samples are imaged by light-sheet microscopy for high-throughput (15 min per organoid) quantitative microscopy. (B) Quantitative analysis applies automated algorithms and deep learning to measure multiscale features. We applied this pipeline for unbiased high-dimensional phenotyping of different experimental models. (C) After de-lipidation and immersion in refractive index matching solution (dPROTOS), organoids are optically transparent and can be imaged with standard confocal microscopy. Grid = 1 mm (D) SHIELD preserves endogenous fluorescence, mRNA and protein epitopes. \label{phenotyping-1}](source/figures/Phenotyping/figure1.jpg){ width=100% }

\begin{figure*}
\caption*{
(E) 3D renders of day 35 cerebral organoid stained using cytoplasmic or nuclear
epitopes. Left: blue is Syto16 nuclear dye, green is β3-tubulin (neuronal
marker) and red is vimentin (glial marker). Right: blue is Syto16, green is Tbr1
(deep layer neurons) and red is Sox2 (progenitor cells /radial glia) (F) Day 35
whole-organoid staining of different antibodies. Scale bars (yellow: 100 µm,
white: 200 µm)
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

### SCOUT analysis of single cells

Using LSFM with a 10X objective (see Methods), three-channel data acquisition at
0.6 x 0.6 x 2.0µm voxel size took on average ~15 min per organoid. The 3D
datasets enabled single-cell nucleus identification and segmentation throughout
the organoid (Figure \ref{phenotyping-2}a). We applied curvature-based seeded
watershed on nuclear dye images [@Atta-Fosu2016] and achieved an accuracy of 90%
(Figure \ref{phenotyping-Sup3}). Next, we co-localized segmented nuclei with
SOX2 and TBR1 channels for molecular phenotyping of individual cells (Figure
\ref{phenotyping-2}b). Since expression of these two markers is mutually
exclusive, we identified three populations in individual organoids: SOX2+
progenitors, TBR1+ neurons, and double negative (DN) cells. Morphological
analysis of individual nuclei shows a ~10µm average diameter for all three cell
types, although we detect instances of different volumes for each population
(Figure \ref{phenotyping-2}c,d).

Our datasets include the position and marker expression for every cell inside
these highly patterned cerebral organoids (Lancaster et al. 2013; Qian et al.
2016; Watanabe et al. 2017). This allows us to examine the spatial context of
individual cells. To explore the value of a cell’s spatial context, we combined
antibody-based molecular phenotyping data with a “positional proximity score”
based on each cell’s distance to its nearest SOX2+ and TBR1+ cells. We designed
this score to reflect each cell’s proximity to the SOX2-rich ventricular zones
and neuron-rich TBR1+ preplate-like regions (Figure \ref{phenotyping-2}f,g).
Spatial context quantification reveals that SOX2+ and TBR1+ cells had the
highest proximity scores (>0.65) to themselves. In other words, SOX2-adjacent
cells are >99.6% SOX2+ and TBR1-adjacent cells are >98.6% TBR1+ cells. The
lowest proximity scores (<0.15) occurred for DN-adjacent DN cells at the core of
the organoid away from the ventricles. Proximity analysis detected three
intermediate populations (0.15-0.65): SOX2-adjacent DN cells in the ventricular
zone, TBR1-adjacent DN in neuron-rich regions and SOX2/TBR1 co-adjacent DN
cells. We hypothesized that the location of these DN subpopulations likely
correlates with their identity given that a TBR1-adjacent DN cell is most likely
a post-mitotic TBR1- neurons and the infrequent SOX2-adjacent DN cells may
represent an early population of intermediate progenitors migrating to form a
sub-ventricular zone. This analysis demonstrates the combination of molecular
phenotyping and spatial context enables cellular subcategorization in highly
patterned tissues. 

![Single cell detection and analysis (A) Scheme of single cell morphological characterization. (B) Demonstration of automated nuclei detection in 3D datasets. Syto16 in blue, Sox2 in red, Tbr1 in green. Scale bar = 100 µm. (C) Expression of Tbr1 and Sox2 in individual nuclei. Dot plot shows gating parameters and population frequency. (D)  Representative images of segmented nuclei for each cell type showing a range of morphological features sorted by sorted by principal component analysis. (E) Morphological analysis of individual cells shows a consistent equivalent diameter ~10 µm for all cell types. (F) Scheme of contextual analysis showing the proximity of each cell to the nearest SOX2 and TBR1 cells. Bar graph shows the results of contextual analysis shown below with “context gates” to define six distinct populations. Gates captured >99% of all cells. (G) Middle optical section of a day 35 organoid dataset showing detected cells colored according their spatial context-based subcategorization. Inset shows zoomed view of dotted rectangle region. Right subpanels show instances of six different subpopulations identified by SCOUT. \label{phenotyping-2}](source/figures/Phenotyping/figure2.jpg){ width=100% }

### SCOUT analysis of ventricles and radial organization

Next, we sought to characterize ventricles and the radial cell patterning they
produced (Figure \ref{phenotyping-3}). First, we identified the total number and
general morphology of ventricles inside our organoids. We adapted U-Net
[@Ronneberger2015], a convolutional neural network, to detect SOX2-lined
ventricles based on 9 manually segmented [@Yushkevich2006] datasets containing
7596 nuclear dye images (Figure \ref{phenotyping-Sup4}). We performed manual
segmentation using the SOX2 antibody channel, but trained the convolutional
neural network on nuclear dye images to potentially eliminate the necessity of
Sox2-antibody in future studies. Automated ventricle segmentation by U-Net
achieved a Dice coefficient of 97.2% on a 20% hold-out test set and provided
morphological analysis of the three dimensional ventricles (Figure
\ref{phenotyping-3}b, Figure \ref{phenotyping-Sup4}). 

![Ventricle segmentation and cytoarchitecture phenotyping. (A) Scheme of automated cytoarchitecture analysis. We quantified radial organization of cell populations around ventricles using “virtual biopsies” 50 µm in diameter and 300 µm high perpendicular to the ventricle surface. (B) Demonstration of automated ventricle segmentation using U-Net convolutional neural network. Representative optical section of a volumetric dataset with detected ventricles in magenta. (C) 3D render of ventricle highlighted in panel B with normal used to orient virtual biopsies shown in yellow. (D) Graph showing that the total number of normal per ventricle depends on the ventricle’s surface area. (E) UMAP embedding of detected cytoarchitectures in a single organoid color-coded according to each cluster. (F) Representative image and average profile plot of individual cytoarchitecture clusters showing the radial distribution of SOX2 (red), double negatives (blue) and TBR1 (green) cells. (G) 3D render of segmented cells and ventricles from a day 35 organoid. On the left side ventricles are white and six cell populations are colored according to the index in Figure 2G: SOX2 in red, SOX2-adjacent in magenta, co-adjacent in yellow, TBR1-adjacent in cyan, TBR1 in green and core DN in blue. On the right, we mapped the detected cytoarchitectures on the surface of rendered ventricles using the colors in panel F. (H) Three-channel heat map from 100 random cytoarchitectures. Each row shows the number of cells detected in all six 50 µm increments moving away from the ventricle surface. Intensity of red, blue and green represent SOX2, DN and TBR1, respectively. (I) The frequency of SOX2, DN and TBR1 cells detected in a ventricle’s virtual biopsies correlates with the ventricle equivalent diameter. Strongest correlation occurs for increased DN and increased TBR1 in larger ventricles. \label{phenotyping-3}](source/figures/Phenotyping/figure3.jpg){ width=100% }

Ventricles are an important anatomical landmark in the heterogeneous landscape
of a cerebral organoid. They provide the origin of radial cytoarchitecture
orientation that occurs when progenitor glia cells produce post-mitotic neurons.
We quantified radial organization of cell populations around ventricles by
generating “virtual biopsies” 50µm in diameter and 300µm long perpendicular to
the ventricle’s surface (Figure \ref{phenotyping-3}a-c). Each biopsy captures
SOX2, TBR1, and DN cell counts within 50 µm-tall stacked cylindrical regions. We
generated thousands of virtual biopsies uniformly distributed across the surface
of all ventricles for unbiased quantification of radial cytoarchitectures in the
organoid. As expected, the number of biopsies generated per ventricle was
proportional to its surface area (Figure \ref{phenotyping-3}d). Performing
unsupervised hierarchical clustering after UMAP embedding to reduce
hyper-dimensionality [@McInnes2018] revealed five distinct cytoarchitectures:
TBR1+DN-low, TBR1+DN-high, surface, “DN only”, and “adjacent ventricles” (Figure
\ref{phenotyping-3}e,f). When we mapped cytoarchitecture clusters onto the
surface of the ventricles, we observed a strong positional correlation within
the organoid (Figure \ref{phenotyping-3}g). As expected, surface
cytoarchitecture appears at the surface organoid due to the abrupt disappearance
of cells beyond the organoid’s border. We also detected “adjacent ventricles”
cytoarchitecture on ventricle surfaces facing towards nearby ventricles. A
survey of a hundred random biopsies shows a spectrum of different cell profiles
and we explored whether ventricle size may affect cell frequency (Figure
\ref{phenotyping-3}h, i). Quantification of cell type frequency in each
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

SCOUT provides the ability to measure absolute frequency of cell populations in
individual organoids. We could therefore quantify the accuracy of conventional
histological analysis based on two-dimensional tissue sections. First, we
compared how three different 100µm thick “pseudo-sections” generated from our 3D
datasets of day 35 organoids predicted whole-tissue cell type frequencies
(Figure \ref{phenotyping-4}a). These results show that individual slices
consistently miss the SOX2, TBR1 and DN whole-organoid “true frequency” and
reveal an intra-organoid heterogeneity biased by the pseudo-section’s position
within the organoid. To address the possibility of positional bias within
individual organoids, we quantified the correlation between cell type
frequencies for each ventricle and their distance from the surface (Figure
\ref{phenotyping-4}b). This analysis reveals a significant positional bias for
each cell type. TBR1 cells are predominantly at the surface of the organoid and
decrease with depth. Inversely, DN cell frequency increases as a ventricle moves
away from the surface increases and reaches ~80% for ventricles near the
organoid’s core. This mirrors our findings correlating ventricle size with TBR1
frequency (Figure \ref{phenotyping-3}i) since larger ventricles tend to be at
the organoid’s surface in our organoids. These trends highlight that an
organoid’s histological section will possess cell frequency biases dependent on
its overall position in the tissue. 

![Whole organoid analysis for unbiased quantitative studies. (A) Scheme (top) and analysis of three different 100 µm pseudo-sections from a 3D dataset. Pie charts (right) show the variable depth-dependent cell frequency for individual slices. Bottom shows the estimated cell frequency for each cell type with the actual whole-organoid frequency (dotted line). (B) Analysis of cell frequencies for 1187 independent ventricles pooled from 12 day 35 organoids. Cell frequency for each organoid was determined by combining the counts of cells detected in all “virtual biopsies” used for cytoarchitecture analysis. (C) Comparison of pseudo-slice heterogeneity with biological inter-organoid variability. Each histogram shows the distribution of 10,000 pseudo-sections 100µm thick for 12 organoids (black) versus the distribution of whole-organoid frequency (colored histogram, ticks show independent organoid values). (D) Comparison of cell frequency standard deviation for the pseudo-sections sampling variability (2D) versus whole-organoid biological variability (3D). The number of pseudo-sections required to match biological variability is shown for each cell population. (E) Comparison of the relative standard error for 276 multiscale features in 12 d35 organoid replicates where each dot is colored based on to the scale of its analysis. (F) Heat map of Pearson’s correlation coefficient investigating the relationship between the 276 multiscale features and their variation in 12 d35 organoids. Right shows the cropped region where we see a combination of single-cell (red) and whole-organoid (blue) features where r >0.88. (G) Network of feature correlation when the absolute Pearson’s correlation coefficient is >0.75. Cropped region shows the same multiscale correlation as the heat map in panel F. The SOX2 cell count and organoid volume were the most central nodes in this cluster, both having a degree of 30.  \label{phenotyping-4}](source/figures/Phenotyping/figure4.jpg){ width=100% }

To compare how this sampling-biased heterogeneity compares with biological
inter-organoid variability, we compared the statistical distribution of cell
type frequencies in 10 organoids with the statistical distribution of possible
estimates using 100µm thick “pseudo-sections” in these same organoids (Figure
\ref{phenotyping-4}c,d). Variability caused by uniform pseudo-section sampling
was greater than the biological inter-organoid variability. Theoretically, to
reduce the heterogeneity of histological sampling to match the inter-organoid
variability in cell type frequency, more than five to seven histological
sections would be necessary per organoid. This represents the number of 100µm
sections that would be required to equate the standard deviation of the sample
mean with that of the inter-organoid distribution over each cell type frequency.

To understand inter-organoid differences, we combined all of our multiscale
analyses into a set of 276 descriptors capturing single cell, cytoarchitecture
and whole-tissue features in a single organoid (Table \ref{feature-table}).
Comparative analysis among day 35 organoid replicates reveals unequal variance
in specific features. When looking at the relative standard error of these
features, we see a wide range of heterogeneity (Figure \ref{phenotyping-4}e).
Some of the most variable features include average ventricle volume, total count
of DN cells, and organoid volume. Most consistent features are the single cell
morphology descriptors, which are virtually identical in all replicates.
Interestingly, the frequency of SOX2 and TBR1 cells was more consistent than
their absolute number. Given the large variability of certain features, we
computed pairwise correlations between multiscale features to see if certain
features in single-cell features could predict whole-tissue topography (Figure
\ref{phenotyping-4}f). The most interesting multiscale correlation occurs around
SOX2 and TBR cell counts. A network analysis of pairwise correlations (r > 0.75)
reveals a cluster of correlated multiscale features where SOX2 count and
organoid volume were the most central nodes (degree of 30) impacting ventricle
size, TBR1 count, co-adjacent DN counts and average SOX2 distance from the
surface (Figure 4G). The analyses show that SCOUT can reduce positional
bias-related variance, quantify biological heterogeneity in replicates, and can
provide the correlation of multiscale features.

### SCOUT analysis of organoid maturation

Next, we used SCOUT for comparative analysis between day 35 and day 60 cerebral
organoids to detect maturation-related multiscale changes (Figure
\ref{phenotyping-5}). We compared individual features of each time point using
independent two-tailed t-tests and detected 28 significant (p<0.01%) changes we
rank-ordered according to largest fold-change (Figure \ref{phenotyping-5}b,c).
Day 60 organoids showed a four-fold increase in total volume and a two-fold
increase in ventricle size. As expected, growth produced a large increase in
cell numbers (19X DN, 4X TBR, 2X SOX2; Figure \ref{phenotyping-5}d). Non-uniform
cell expansion caused a 56% reduction in SOX2 cell frequency and two-fold
increase in the Tbr1/Sox2 ratio. We suspect the low expansion of progenitor
cells is caused by our addition of BDNF at day 40 of organoid culture, which
drives neurogenesis and suppresses progenitor expansion [@Fukumitsu2006].

![Hyper-dimensional analysis of multiscale changes during cerebral organoid maturation. (A) Representative image of day 35 and 60 organoids taken from volumetric datasets. (B) Volcano plot highlighting unbiased detection of multiscale differences with dots colored according to scale of analysis. (C) Heat map outlining major differences between twelve d35 vs. eight d60 organoids. (D) Dot plots showing organoid volume, total cells, average ventricle volume, and total counts of antibody-labelled subsets. (E) Cell subpopulation frequencies for independent replicates (top) and average values (bottom). (F) Quantitative analysis of cytoarchitecture frequencies for independent replicates (top) and average values (bottom). (*** p<0.001, ** p<0.01) (G) UMAP embedding of the cytoarchitectures detected in d35 and d60 organoids. Left shows the distribution of cytoarchitectures in d35 organoids where each color represents a different organoid. Middle UMAP shows cytoarchitectures according to age of organoids (d35 blue and d60 red). Right UMAP shows the distribution of cytoarchitectures in the d60 organoids where each color represents a different organoid. (H) Analysis of cell proximity to SOX2 and TBR1 in “adjacent” (left) and “TBR1, DN-high” (right) as a function of the distance from the ventricle surface. \label{phenotyping-5}](source/figures/Phenotyping/figure5.jpg){
width=100% }

Cell type frequency was relatively consistent in replicate organoids, supporting
the importance of whole-organoid analysis to reduce histology-related
variability (Figure \ref{phenotyping-5}e). In d60 cerebral organoids, as
progenitor cells generated radially organized cell populations, a visible layer
of DN cells appears between SOX2 and TBR1 regions (Figure \ref{phenotyping-5}a).
This new cell layer reduced the proximity of SOX2 and TBR1 cells to one another
(43% decrease for SOX2, 34% decrease for TBR1). Maturation also produced a 7X
increase in“TBR1-adjacent DN cells” frequency and the emergence of a “Tbr1+DNhi”
cytoarchitecture (31.2%) characterized by abundant DN cells appearing after the
SOX2 ventricular zone and continuing into the TBR1 region (Figure
\ref{phenotyping-5}f,g). In these cytoarchitectures, DN cells likely represent a
combination of intermediate progenitors and non-TBR1 neurons that emerge over
the course of organoid maturation. These new cell populations increased the
inter-ventricle and ventricle-to-surface distances causing a 70% reduction in
“Adjacent” and“Surface” cytoarchitectures, respectively. As organoids mature,
they replaced these early cytoarchitectures with “TBR1+DNhi” (31.2%) and
“TBR1+DN-low” (28%), highlighting a general increase in TBR1+ cells around the
maturing ventricles. Another important change in cytoarchitecture is the
doubling of “DN only”cytoarchitectures from 14% to 28% as a consequence of the
14-fold increase in“core DN” cells. The “DN only”cytoarchitectures are usually
oriented towards the organoid core where no ventricles or cell markers are
detected. This region grows in d60 organoids since the reduced surface-to-volume
ratio in these large organoids likely interferes with the transport of oxygen,
nutrients and growth factors.

Although organoids appear heterogeneous when comparing random cross sections,
full-spectrum cytoarchitecture reveals a relatively consistent distribution of
radial organization in our biological replicates. To assess the consistency of
specific cytoarchitecture clusters, we “gated” on the “Adjacent” and “TBR1+DNhi”
to compare SOX2 and TBR1 proximity of individual cells relative to their
distance from the ventricle surface (Figure \ref{phenotyping-5}h). This analysis
confirms that cells found within the “Adjacent” cytoarchitectures consistently
show a slight increase in TBR1 proximity at ~75 µm then return to high SOX2
proximity. In contrast, the more mature TBR1+DNhi regions show a one-time
transition from SOX2-proximity to TBR1-proximity ~150µm away from the ventricle
surface.

### Comparative analysis of Zika infection

After investigating maturation-induced changes, we quantified how cerebral
organoids were altered by Zika virus infection (Figure \ref{phenotyping-6}).
Previous studies have used cerebral organoids to monitor the tropism of Zika
virus infection and how it produces microcephaly in newborns [@Cugola2016].
Initial studies suggest that infection of neural progenitors causes a reduced
output of mature neurons and decreased size of brain tissue. Using a clinical
isolate from Puerto Rico, we infected organoids at day 21 with 0.1 MOI and
waited 14 days post-infection to assess the multiscale impact of viral
infection. SCOUT-analysis detected 18 significant differences (p<0.01; Figure
\ref{phenotyping-6}b,c). Notably, we detected a ~50% reduction in organoid size,
ventricle volume and total ventricle counts (Figure \ref{phenotyping-6}d). At
the cellular level, we detected a 75% total decrease and 50% frequency decrease
of both SOX2+ and TBR1+ cells (Figure \ref{phenotyping-6}e). The combined loss
of ventricles and SOX2 cells lead to a 67% decrease (31% to 10%) in the
“Adjacent”cytoarchitecture, while TBR1 loss caused the 24 to 40% increase in “DN
only”cytoarchitectures. Zika-infection produced an aggressive phenotype that
limited organoid size, ventricle growth, and the expansion of SOX2 and TBR1
cells (Figure \ref{phenotyping-6}f). Given the importance of SOX2 cell number in
the emergence of higher order features (Figure \ref{phenotyping-4}f) it is
unsurprising that the significant loss of neural progenitors produced an
important decrease in the complexity of tissue topography and cell patterning.
Quantification of the Zika infection phenotype is consistent with previous
reports and may mirror the mechanisms underlying viral microcephaly in newborns.
Unfortunately, it remains unclear whether the loss of TBR1+ neurons is due to
disrupted progenitor differentiation or neuron-specific cell death. However,
SCOUT can help discern between these two possibilities in future experiments. 

![Hyper-dimensional analysis of multiscale changes caused by Zika virus infection. (A) Top: representative image of age-matched day 34 mock and Zika virus-infected organoid (14 days post-infection) taken from volumetric datasets (scale bar 1 mm). Bottom: rendering of segmented ventricles from each group with their surfaces colored according to detected cytoarchitecture. (B) Volcano plot highlighting unbiased detection of multiscale differences with dots colored according to scale of analysis. (C) Heat map outlining major differences between ten mock vs. six Zika-infected organoids. (D) Dot plots showing organoid volume, ventricle count, ventricle volume, and total counts SOX2 and TBR1 cells. (E) Comparison of cell subpopulation frequencies (top) and cytoarchitecture frequency (bottom). (*** p<0.001, ** p<0.01) (F) UMAP embedding of the cytoarchitectures detected in mock (blue) and Zika-infected organoids (red) showing a shift in cytoarchitecture. \label{phenotyping-6}](source/figures/Phenotyping/figure6.jpg){ width=100% }

### Comparative analysis of different cerebral organoid protocols

High-dimensional phenotyping of multiple whole organoids provides one a strategy
to overcome the inter-organoid heterogeneity (Quadrato et al. 2017). However, a
recent study by Velasco et al. addressed biological heterogeneity by comparing
different brain organoid culture protocols (2019). Their patterned dorsal
forebrain organoids showed an impressive organoid-to-organoid consistency in
morphology and cellular composition, assessed by single-cell RNA sequencing. We
compared day 56 “Velasco organoids” with our day 60 organoids, cultured
according to a modified version of the Lancaster protocol (Figure
\ref{phenotyping-7}). We applied dual SMAD inhibition for the first half of
neuroepithelium induction, added BDNF after day 40 and used Petri dishes on a
shaker instead of a spinning bioreactor [@Lancaster2014]. Comparative analysis
detects 29 different features whose p <0.01 (Figure \ref{phenotyping-7}b,e).
Most noticeably, the Velasco organoids and their ventricles were smaller,
showing an average 60% and 84% decrease, respectively (Figure
\ref{phenotyping-7}c). At the cellular level, Velasco organoids show a 2X higher
frequency of SOX2 cells and 3X increase in TBR1 frequency (Figure
\ref{phenotyping-7}f). The proximity between the SOX2 and TBR1 cells also
increased twofold due to the absence DN cells between the progenitor zone and
TBR1 cells (Figure \ref{phenotyping-7}a,g). DN cells were less frequent overall,
which produced a 70% reduction in core DN cells and an 80% reduction in
TBR1-adjacent DN cells. 

![Hyper-dimensional analysis of multiscale changes in different culture protocols. (A) Representative image of day 56 Velasco and our day 60 organoids taken from volumetric datasets.(yellow bar = 1 mm; white bar = 100 µm) (B) Heat map outlining major differences between different organoid culture protocols. (C) Dot plots showing organoid volume, average ventricle volume, and total counts of cell types. (D) Comparative analysis of the fold-change in the relative standard error of quantified features. Dotted line shows zero, bars reflect better homogeneity in Velasco (blue) organoids and our organoids (red). Graph shows 72% of features (141/195) were more consistent in Velasco organoids (E) Volcano plot highlighting unbiased detection of multiscale differences with dots colored according to scale of analysis. (F) Comparison of cell subpopulation frequencies (top) and cytoarchitecture frequency (bottom). (*** p<0.001, ** p<0.01, *<0.05). (G) Representative image and average profile plot of individual cytoarchitecture clusters showing the radial distribution of SOX2 (red), double negatives (blue) and TBR1 (green) cells in the Velasco-specific TBR1-rich cytoarchitecture and the day 60-specific Tbr1+DN-high cytoarchitecture. Arrows show the higher TBR1 frequency (green) and DN band between SOX2 and TBR1 (blue). (H) Frequency of SOX2 (red), TBR1 (green) and DN (blue) for 250 random ventricles pooled from all organoids. Cell frequency was determined by considering the detected cells all of a ventricle’s virtual biopsies. \label{phenotyping-7}](source/figures/Phenotyping/figure7.jpg){ width=100% }

Cytoarchitectures were vastly different in these two protocols. The Velasco
organoid’s abundant TBR1 cells produced the appearance of a new “TBR1-rich
cluster” (~21% of total biopsies), where TBR1 counts are ~35% higher and DN
counts are 70% lower compared to the “TBR1+DN-high” cytoarchitecture favored in
our day 60 organoids (Figure \ref{phenotyping-7}g,h). Velasco organoids also
show more “Adjacent”cytoarchitectures, consistent with smaller organoids. The
66% reduction in “DN only” cytoarchitecture reflects less “core cells” which can
be attributed to smaller organoid size or the improved tissue transport when
using a spinning bioreactor. Interestingly, Velasco organoids possessed better
feature consistency across multiscale features. We quantified the variance of
all 276 features and compared the fold-change in both organoid groups. The
Velasco organoids show decreased variance in ~70% of features (Figure
\ref{phenotyping-7}d). The dramatic differences in these two groups was expected
given their different culture protocols. However, this proof-of-concept provides
the foundation for establishing quantitative unbiased assessment of different
culture protocols. These finding suggest that a combination of holistic analysis
and protocol optimization can address the widely reported problem of organoid
heterogeneity.


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
generated using Blender.

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


