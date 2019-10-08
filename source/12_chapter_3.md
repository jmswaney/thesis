# Multiplexed and scalable super-resolution imaging of three-dimensional protein localization in size-adjustable tissues

## Summary

The biology of multicellular organisms is coordinated across multiple size
scales, from the subnanoscale of molecules to the macroscale, tissue-wide
interconnectivity of cell populations. Here we introduce a method for
super-resolution imaging of the multiscale organization of intact tissues. The
method, called magnified analysis of the proteome (MAP), linearly expands entire
organs fourfold while preserving their overall architecture and
three-dimensional proteome organization. MAP is based on the observation that
preventing crosslinking within and between endogenous proteins during
hydrogel-tissue hybridization allows for natural expansion upon protein
denaturation and dissociation. The expanded tissue preserves its protein
content, its fine subcellular details, and its organ-scale intercellular
connectivity. We use off-the-shelf antibodies for multiple rounds of
immunolabeling and imaging of a tissue’s magnified proteome, and our experiments
demonstrate a success rate of 82% (100/122 antibodies tested). We show that
specimen size can be reversibly modulated to image both inter-regional
connections and fine synaptic architectures in the mouse brain.

## Introduction

Biological systems such as the mammalian brain consist of thousands of distinct
cell types forming highly interconnected functional networks [@White1986;
@DeFelipe2010; @Helmstaedter2013; @Craddock2013; @Oh2014]. Understanding how
these diverse cells interact to generate system-level responses is essential for
many fields of biology. Deciphering these complex interactions requires tools
that can simultaneously characterize the molecular identity and fine
sub-cellular architectures of individual cells as well as their system-level
connectivity, because these properties together determine many cell functions.
To date, technologies provide only a subset of the required multilevel
information.

Proteomic imaging techniques can potentially provide multilevel information in
both animals and human samples [@Phizicky2003; @Hanash2004; @Agato2004;
@Berglund2008; @Uhlen2010]. The proteome is an ideal substrate for the
integrated analysis of functional components owing to proteins’ unmatched
diversity, functional roles, and distinct subcellular localization at
single-molecule precision. The existing large antibody libraries (close to
100,000 antibodies), once rigorously validated, could enable the detection of
more than 70% of the human proteome and corresponding cellular architectures
(Uhlen, M et al 2010).

For example, multiplexed proteomic imaging techniques (e.g., array tomography
and SWITCH) can provide molecular details for individual cells and may allow
reconstruction of their surrounding tissue environment [@Micheva2007; @Kay2013;
@Murray2015]. Emerging intact tissue clearing approaches preserve proteins and
the continuity of neural fibers, which may enable reconstruction of
immunolabeled neural architectures [@Dodt2007; @Richardson2015].
Super-resolution imaging of immunolabeled thin tissue sections has been
successfully used to characterize minute subcellular structures (e.g., synapses)
[@Rust2006; @Betzig2006; @Hess2006; @Maglione2013]. In addition to conventional
super-resolution approaches, Chen et al. [-@Chen2015] have recently demonstrated that
protease digestion of a hydrogel-tissue hybrid homogenizes its mechanical
characteristics and allows approximately fourfold linear expansion of the
hybrid. Using this approach, termed expansion microscopy (ExM), they
demonstrated super-resolution imaging of thin tissue sections with custom-made
antibody probes and diffraction-limited microscopes (Chen et al. 2015).

Despite the success of these new technologies, integrated reconstruction of
the fine subcellular architectures, molecular details, and intercellular
connectivity of diverse cell types in large-scale biological systems remains
an unmet goal in biology. For instance, the protease digestion step in ExM
causes a loss of proteins, which limits the number of protein structures that
can be imaged in the same sample. In addition, intercellular connectivity is
largely lost in ExM as it requires tissue sectioning to allow immunolabeling of
an unprocessed tissue with limited permeability. By contrast, emerging
whole-tissue clearing methods preserve neural connectivity and endogenous
proteins, but accurate reconstruction of neural architectures remains
challenging owing to the low resolution of diffraction-limited microscopy.

Here we present MAP, a method that enables multiscale proteomic imaging of
intact biological systems for combined extraction of the molecular identity,
subcellular architectures, and intercellular connectivity of diverse cell types
within a single tissue. MAP preserves both the three-dimensional (3D) proteome
content and organization and the organ-wide cellular connectivity within an
intact tissue-hydrogel hybrid, while rendering it reversibly size-adjustable up
to four- to fivefold for multiresolution imaging.

## Results

### Organ-scale tissue expansion without loss of proteins

The key to MAP is to prevent intra- and interprotein crosslinking during the
hydrogel-tissue hybridization step [@Chung2013], and then to dissociate and
denature proteins to allow natural expansion of the hybrid (Fig. 1a). We
hypothesized that a high concentration of acrylamide monomers might effectively
prevent protein crosslinking by quenching reactive methylols formed by the
protein-formaldehyde reaction. If the acrylamide monomer concentration is low,
the reactive methylols would react with amide groups within the same protein or
adjacent proteins to form methylene bridges (Fig. 1a, left column)
[@Puchtler1985]. Such intra- and interprotein crosslinking would prevent
dissociation of protein complexes and limit subsequent tissue expansion
[@Sung1996]. With increased acrylamide concentration (Fig. 1a, right column),
methylols might preferentially react with excess acrylamide monomers,
effectively reducing interprotein crosslinking while maximally tethering
individual proteins to an expandable hydrogel mesh. Dissociation and
denaturation of protein complexes with heat and anionic surfactant then
facilitates natural expansion of the hydrogel-tissue hybrid while preserving
overall spatial organization of the proteome.

To test our hypothesis, we first measured the effect of acrylamide concentration
on tissue expansion. We prepared albumin-containing tissue phantoms and
post-fixed them in 4% paraformaldehyde (PFA) with different concentrations
(0–20%) of acrylamide. We incubated the tissue phantoms in detergent solution at
95 °C for 1 h to denature and disrupt protein aggregates. As expected, phantoms
fixed in higher concentrations of acrylamide showed higher degrees of expansion
in water (Fig. 1b). We observed a similar trend in mouse brain tissues that
were perfused with different concentrations of acrylamide, polymerized,
denatured, and expanded (Fig. 1c). Thus, we used high concentrations of
acrylamide in order to maximize expansion during MAP in all subsequent
experiments.

Using this approach, we achieved a fourfold linear expansion of a whole mouse
brain within 7 d without protease treatment (Fig. 1f). Tissue expansion was
reversible and tunable using buffers with different salt concentrations and
osmolarities (Fig. 1d,e). This method is applicable to other organs including
heart, lung, spinal cord, liver, intestine, and kidney, and also cerebral
organoids (Fig. 1g,h and Supplementary Fig. 1).

### Preservation of multiscale architectures

We next asked whether MAP retains multiscale structural information and enables
super-resolution imaging with diffraction-limited microscopes. To estimate the
amount of distortion incurred from expansion, we imaged gel-embedded cultured
cells before and after MAP processing (Fig. 2a). At the subcellular scale, MAP
expansion improved visualization of microtubules and allowed imaging of single
tubular structures (Fig. 2b,c). The estimated distortion error (root-mean-square
error, RMSE) was less than 3% of measured length at both the subcellular scale
(Fig. 2d) and the multicellular scale (Fig. 2g). The degree of gel expansion was
not a function of cell density, as indicated by the consistent local expansion
within differently populated cell clusters (Fig. 2e,f).

To test whether MAP preserves multiscale tissue architectures, we imaged a
100-μm-thick mouse brain block labeled with lectin before and after MAP (Fig.
2h). The distortion analysis showed less than 4% error (Fig. 2i), which was at
most a twofold increase, compared to the inevitable distortion from sample
mounting for imaging (Fig. 2i, remounting). Both the intra-vascular space with
low protein concentration and the extra-vascular space with high protein
concentration showed similar degrees of expansion (Fig. 2h, insets), suggesting
that the effect of protein concentration and cell density on gel expansion is
minimal. Diffraction-limited microscopy revealed fine 3D details of
immunolabeled cells such as cytoskeletal filament structures (Fig. 2j,k,m) and
better-resolved axonal fibers (Fig. 2l) after the MAP process. These results
together indicate that MAP preserved multiscale structural information of
biological samples and enabled super-resolution imaging with diffraction-limited
microscopes, achieving ~60-nm lateral resolution.

### Labeling proteome with conventional antibodies

We next asked if MAP preserves the 3D proteome composition and organization, and
enables super-resolution imaging of fine subcellular architectures using
commercially available antibodies. Antibody targets were selected from a wide
range of antigens including membrane proteins, cytoplasmic proteins, nuclear
proteins, neurofilament proteins, and synaptic proteins to survey the overall
proteomic landscape (Fig. 3 and Supplementary Table 1). To validate the
antibodies, we tested whether antibody staining of MAP-processed tissues shows
comparable structures to PFA-fixed tissues, and antibodies from different host
species targeting the same protein, if available, provide concordant images
(Supplementary Figs. 2 and 3). We found that 100 of 122 antibodies were
compatible with MAP-processed samples, and 43 of 51 target molecules were
successfully visualized (Fig. 3, Supplementary Table 1, and Supplementary Figs.
2 and 3). This high success rate indicates that loss of epitopes by protein
denaturation was minimal. Moreover, some antibodies (e.g., calbindin and
calretinin) showed negative staining when different antibodies targeting the
same endogenous protein showed strong signal (Fig. 3b and Supplementary Table
1). This result demonstrates that MAP preserves the tissue proteome with minimal
loss of specific epitopes and that the library can be effectively probed using
off-the-shelf antibodies without any modification.

### Super-resolution imaging of 3D subcellular architectures

Preservation of both nanoscopic structures and the proteome in MAP enables
super-resolution imaging of a broad range of fine subcellular architectures.
Antibodies targeting filament proteins successfully visualized details of the
cytoskeletal networks of various cell types (Fig. 3c–e and Supplementary Videos
1–4). No apparent filament fragmentations were observed in the magnified
tissues. Labeling of glial fibrillary acidic protein (GFAP) enabled
visualization the fine foot-process structures surrounding blood vessels (Fig.
3e and Supplementary Video 3) [@Kosaka1986; @Khakh2015]. Neurofilament medium
subunit (NF-M) enabled visualization of both processes and synapses [@Yuan2015],
a subset of which co-localized with the postsynaptic marker, GABA B R1 (the
C-terminal domain of the GABA B receptor subunit-1) (Fig. 3f and Supplementary
Video 4). Labeling of calcium-binding proteins (parvalbumin, calbindin, and
calbindin) robustly enabled visualization of morphological details of positive
cells (Fig. 3b). A small subset of calbindin-positive fibers showed expression
of calbindin in their dendritic spines (Fig. 3g). Many synaptic protein markers
were compatible with MAP (Fig. 3f,h,j,l,m and Supplementary Table 1). Staining
of synaptic proteins clearly visualized distinct and well-separated elliptical
disk-shaped clusters of pre- and post-synaptic proteins (Fig. 3h,l,m and
Supplementary Video 5), enabling their quantitative analysis (Fig. 3k).

### Highly multiplexed immunolabeling

Another potential advantage of the MAP technology is that it enables highly
multiplexed labeling and imaging of the magnified 3D proteome within a single
tissue. We successfully performed seven rounds of immunostaining of a
MAP-processed 100-μm-thick mouse brain tissue with no obvious signs of tissue
damage (Fig. 4). Outstanding mechanical stability of the MAP-processed sample
enabled repeated manual handling of the tissue with tools that are widely used
in biology laboratories. The images after destaining of the imaged anti-GFP
antibody (first round) and after solely adding secondary antibodies targeting
the eluted anti-GFP antibody (second round) showed little signal, suggesting
that the destaining process effectively eliminates antibodies. For the following
five rounds of labeling, we continued to use anti-GFP as a landmark in addition
to two other antibodies for each round. The consistent GFP signals show that the
same antigen can be repeatedly labeled without loss of antigenicity. Successful
visualization of ten other targets demonstrated that MAP facilitated exploration
of diverse proteins, structures, and cell types within a single tissue.

### MAPing neural projections

We next explored the potential utility of MAP for mapping inter-areal neural
connectivity. If MAP could preserve continuity of neural fibers within
magnified, intact brain tissue along with its 3D proteome, highly specific
antibodies would enable visualization of a subset of neural projections
connecting different brain regions. The sparse labeling and enhanced spatial
resolution offered by MAP may allow more accurate reconstruction of the
labeled projections. In addition, highly multiplexed proteomic imaging may
enable reconstruction of many different cell types with integrated molecular
and fine morphological details in a single tissue.

To explore this possibility, we first asked if the continuity of neural
processes is preserved within a magnified sample. We expanded a 0.5-mm-thick
Thy1-eGFP mouse brain coronal block and then imaged GFP-labeled neurons and
their projections [@Feng2000]. MAP preserved the continuity of the GFP-expressing
projections spanning a large tissue volume (Fig. 5a–f) as well as their fine
morphological details (e.g., dendritic spines) (Fig. 5g). Immunolabeling of
various cytoplasmic proteins including neurofilament proteins (e.g., NF-H and
SMI-32), calcium-binding proteins, and metabolic enzymes (e.g., tyrosine
hydroxylase) confirmed that MAP preserved the continuity of neural fibers of
various cell types (Fig. 5h–n and Supplementary Videos 6–8). The preserved
continuity enabled detection of single fibers selected in the immunostained
tissue volumes (Fig. 5m–q and Supplementary Videos 7 and 8).

To test if MAP enables more accurate tracing of densely packed fibers, we imaged
neurofilament-stained samples before and after MAP processing using a high
numerical aperture (NA; 0.95) water-immersion objective. Two individuals not
involved in image acquisition traced fibers within the sample volume (Fig.
5r,s). When we compared the concordance between the two tracing results, the
discordant rate was significantly lower after MAP (Fig. 5t,u; SMI-312, n = 4, P
= 0.020; NF-H, n = 4, P = 0.010), even though MAP enabled the tracers to detect
more fibers (total numbers of traced fibers were 160 before MAP and 214 after
MAP). This result demonstrates that MAP indeed enabled more accurate
reconstruction of immunolabeled neural fibers.

### Immunolabeling and imaging of mm-thick tissues

Reconstruction of individual neurons requires labeling and imaging of thick
brain tissues because nerve fibers can extend across a large volume. To test
whether MAP is applicable to large-scale brain tissues, we expanded a 1-mm-thick
mouse brain block (5-mm thick after expansion, Fig. 6b) and passively stained it
with anti-GFP antibody (Fig. 6a). We then imaged the sample using both a high NA
(0.95), short working distance (WD) (2 mm) water-immersion objective and a low
NA (0.6), long WD (8 mm) CLARITY objective. Both objectives showed fine
dendritic spines of GFP-expressing neurons throughout the entire volume (Fig.
6e). Imaging of the sample did not require depth-dependent modulation of the
laser power, indicating that staining was uniform and that signal attenuation by
light scattering was negligible (Fig. 6c,d). MAP is also compatible with
stochastic electrotransport [@Kim2015], a method that enables rapid tissue
labeling. Using stochastic electrotransport, we were able to label an 8-mm-thick
expanded tissue uniformly within only 2 d (Fig. 6f–j). The sample was highly
transparent. We were able to image the 8-mm-thick sample successfully with the
same laser power up to the working distance of the objective (Fig. 6h).

## Discussion

As a step toward organ-scale reconstruction of diverse cell types and their
surrounding environment and to advance the study of complex system-level
interactions, we developed a simple and scalable method that enables
preservation, reversible expansion, and imaging of the 3D proteome organization
within an intact tissue. We discovered that the protein content of a whole organ
can be preserved and magnified by preventing intra- and interprotein
crosslinking, then denaturing and dissociating the protein complexes to allow
natural expansion of hydrogel-tissue hybrids. The expanded hybrids secure both
fine subcellular architectures and organ-scale cellular connectivity. These
multiscale properties can be directly imaged by using off-the-shelf antibodies
to label the structures’ constituent proteins. The high success rate that we
achieved with commercial antibodies might be because synthetic peptides or
denatured protein fragments are commonly used for conventional antibody
production [@Uhlen2005]. An existing large antibody library, once validated, can
be used without any modification. This technique is easy to implement, and it
does not require any special equipment or chemicals.

MAP enables repeated interrogation of the same expanded specimen. This is
possible because the preserved epitopes, which have already reached complete
denaturation by harsh treatment (95 °C, 200 mM sodium dodecyl sulfate (SDS)) for
expansion, do not undergo any substantial modification during the milder
antibody elution step (70 °C, 200 mM SDS). We performed seven rounds of staining
of the same tissue without any signs of tissue damage. However, the practical
limit of this approach must be carefully examined.

MAP has the potential to enable scalable super-resolution imaging of large-scale
samples. Unlike other methods, thick tissues can be labeled on a practical time
scale because antibody-labeling occurs after complete lipid removal and tissue
permeabilization. The great transparency of the MAP-processed samples allows
high-resolution imaging of the physically expanded tissue with minimal loss of
resolution. Currently, 1.0 NA, 2.5-mm WD water-immersion objectives are best
suited for MAP. Although the 1.0 NA, 8-mm WD CLARITY objective has the longest
WD, it does not provide high-quality images because it is optimized for
immersion media with a high refractive index (RI). Further development of
high-NA, long-WD water objectives or the development of high-RI immersion media
that are compatible with MAP would extend the utility of MAP. Another challenge
in the MAP approach is the dilution of fluorescent signals that accompanies
physical volumetric expansion. Fourfold linear expansion decreases signal
density by 64-fold. Therefore, much higher laser power is required, which in
turn causes photobleaching. Future studies will need to explore the
compatibility of signal amplification techniques with MAP.

The reversible modulation of physical sample size that is attained with MAP
enables multiscale proteomic imaging of a single tissue to capture both
system-scale properties and fine local details in a practical way. For example,
following sample shrinkage, global projection patterns of labeled neurons may be
imaged using high-speed microscopy techniques and long WD objectives (e.g., 25×,
1.0 NA, 8-mm WD objective, currently available) [@Tomer2014]. After imaging, the
same tissue can be expanded for super-resolution imaging of regions of interest.
The expanded tissue may need to be sliced before imaging to meet the objective’s
WD limit. A microscope with a built-in vibrating-blade microtome could also be
used for whole-mount imaging to avoid loss of connectivity information
[@Ragan2012; @Economo2016; @Albanese2016]. This approach may allow us to
drastically reduce the imaging time and costs associated with data storage and
handling of expanded samples.

The advantages of MAP (Supplementary Table 2) may allow combined extraction of
rich molecular details, minute subcellular architectures, and cellular
connectivity from diverse cell types within a single tissue. Together with its
simplicity and broad applicability, MAP may complement existing methods and
enable new approaches in the study of complex biological systems.

## Methods

Methods and any associated references are available in the online version of the
paper.

Note: Any Supplementary Information and Source Data files are available in the
online version of the paper.

## Acknowledgements

The authors thank the entire Chung laboratory for support and helpful
discussions. K.C. was supported by Burroughs Wellcome Fund Career Awards at the
Scientific Interface, the Searle Scholars Program, Packard award in Science and
Engineering, JPB Foundation (PIIF and PNDRF) and NIH (1-U01-NS090473-01).
Resources that may help enable general users to establish the methodology are
freely available online (http://www.chunglabresources.org). K.C. is a co-founder
of LifeCanvas Technologies, a startup that aims to help the research community
adopt technologies developed by the Chung Laboratory.

## Author Contributions

T.K., J.S., J.-Y.P., and K.C. designed the experiments and wrote the paper with
input from other authors. T.K. stained and imaged mouse samples. J.S. performed
the gel and cell experiments. T.K. and J.S. analyzed the data. J.-Y.P. prepared
mouse tissues. J.-Y.P. and V.M. processed mouse MAP samples. A.A. performed the
cell and organoid experiments. E.M., Y.-G.P., and T.K. performed the antibody
validation test. J.H.C. performed stochastic electrotransport staining. Y.-G.P.
and T.K. obtained synaptic images. J.-Y.P., V.M., T.K., and J.S. performed
tracing. J.C. performed the gel experiment. K.C. supervised all aspects of the
work.

## Competing Financial Interests

The authors declare competing financial interests: details are available in the
online version of the paper.

## Methods

### BSA hydrogel denaturation and expansion

Stock solutions of 40% BSA, 40% acrylamide (AA), 32% paraformaldehyde (PFA), and
1% VA-044 were made and kept on ice throughout the experiment. A 10-mL solution
of 4% BSA, 4% AA, 4% PFA, 0.1% bis-acrylamide (BA), and 0.1% VA-044 was made in
phosphate-buffered saline (PBS). The solution was polymerized under vacuum at 37
°C for 2 h, and the resulting albumin-containing tissue phantom was sectioned.
Individual tissue phantom sections were washed in excess PBS with shaking for 12
h. After washing, four phantoms were placed in 10 mL of each of the following
PBS solutions for 4 h at 37 °C: 2% glutaraldehyde (GA), 4% PFA, 4% AA with 4%
PFA, and 20% AA with 4% PFA. Tissue phantoms were washed similarly, massed,
photographed, and then incubated in a 200 mM SDS solution with 50 mM sodium
sulfite for 1 h at 95 °C. Phantoms were washed again and incubated in deionized
(DI) water for 12 h. After expansion, phantoms were massed and photographed.

### General MAP protocol

i. Perfusion and hydrogel embedding. Thy1-eGFP-M mice (6–8 weeks old, male and
female) were housed in a reverse 12-h light/dark cycle with unrestricted access
to food and water. All experimental protocols were approved by the MIT
Institutional Animal Care and Use Committee and the Division of Comparative
Medicine and were in accordance with guidelines from the US National Institutes
of Health. After anesthesia, the mice were first washed transcardially with a
mixture of 2–5% AA, 0–0.05% BA, 0–0.8% sodium acrylate (SA), and PBS, followed
by perfusion with a mixture of 4% PFA, 30% AA, 0.05–0.1% BA, 10% SA, 0.1% VA-044
or V-50, and PBS. The perfusion solution could be slightly turbid. Upper
transparent solution was used after centrifugation during 3 min with 1,000g. All
solution was protected from light and kept on ice before perfusion. Control
samples were perfused first with PBS and then with 4% PFA and PBS. The brain and
other organs (heart, lung, liver, intestine, kidney, and spinal cord) were
harvested and incubated in 20–40 mL of the same fixative solution at 4 °C for
2–3 d and then for 1–3 d at room temperature (RT) with gentle shaking to ensure
uni- form chemical diffusion and reaction throughout the sample. Following the
diffusion and fixation steps, hydrogel-tissue hybridization was performed in
situ by incubating the tissues using Easy-Gel (LifeCanvas Technologies) with
nitrogen gas at 45 °C for 2 h.

ii. Tissue denaturation. Hydrogel-embedded tissues were incubated overnight in a
solution of 200 mM SDS, 200 mM NaCl, and 50 mM Tris in DI water (pH titrated to
9.0) at 37 °C with gentle shaking. The samples were then incubated at 70 °C for
0–50 h and 95 °C for 1–24 h depending on their size using EasyClear (LifeCanvas
Technologies). Whole organs were incubated for 24–48 h at 70 °C followed by
12–24 h at 95 °C. 1-mm-thick brain slices were incubated for 5 h at 70 °C and
then at 95 °C for 1 h.

iii. Expansion. Denatured tissues were incubated in 40–100 mL DI water at RT for
12–48 h with gentle shaking. During DI water incubation, the solution was
changed every 3–5 h.

### Expansion according to various AA and SA concentrations

After anesthesia, mice were washed transcardially with 4% AA, 0.05% BA, 0.8% SA,
0.1% VA-044, and PBS and then with 4% PFA, 0.05% BA, 0.1% VA-044, one of four AA
and SA combinations (5% AA + 0.8% SA, 10% AA + 1.7% SA, 20% AA + 3.3% SA, and
30% AA + 5% SA) in PBS. Tissues were incubated in 20 mL of the same fixative
solution at 4 °C for 2 d and 5 h at RT with gentle shaking. After
hydrogel-tissue hybridization the samples were incubated in denaturation
solution at 70 °C for 5 h and 95 °C for 1 h with gentle shaking. Denatured
tissues were incubated in 40 mL DI water at RT for 12 h with gentle shaking.
During DI water incubation, the solution was changed every 3–5 h. Fiji (National
Institutes of Health) was used to measure the size of the expanded samples
[@Schindelin2012].

### Shrinkage and RI matching

A customized RI matching solution was made by dissolving 50 g diatrizoic acid,
40 g N-methyl-d-glucamine, and 55 g iodixanol per 100 mL PBS (Kim, S.-Y. et al.
2015). The RI was targeted to 1.47. This solution was used for both shrinkage
and imaging. Depending on sample size, samples were incubated in 1–10 mL
solution at RT for 2–24 h with gentle shaking. The solution was changed every
1–12 h. For imaging tissues before MAP processing, samples were incubated in
1–10 mL of this solution without PBS at RT with gentle shaking for 2–5 h before
imaging.

### MAP processing of cerebral organoid

Cerebral organoids were made from stem cells following a previously described
protocol [@Lancaster2014]. Organoids were initially fixed in 4% PFA for 15 min,
incubated in a mixture of 4% PFA, 30% AA, 0.1% BA, 10% SA, 0.1% V-50, and PBS
for 24 h at 4 °C, followed by 24 h, at RT. Hydrogel embedding, tissue
denaturation, and expansion were processed similarly to “General MAP protocol.”

### Cultured cell experiment

For tubulin imaging in HeLa cells, 8-mm round glass coverslips were coated in
0.1% gelatin in ultrapure water (Millipore). Coverslips were placed in a 48-well
plate and seeded with 50,000 HeLa cells overnight. To obtain comparable images
before and after MAP processing, cells were washed, fixed with 3% PFA + 0.1% GA
in PBS for 10 min, and switched to a solution of 4% PFA, 30% AA in PBS for 8 h
at 37 °C. Cells were then placed in 0.1% sodium borohydride for 7 min at RT then
incubated in 100 mM glycine for 10 min at RT. Cells were washed and stained with
anti-tubulin (Abcam, ab6160), Alexa Fluor 594-conjugated secondary (Abcam,
ab150152) antibodies and TOTO-1 (Thermo Fisher Scientific). Cells were mounted
in 2,2′-thiodiethanol (Sigma) and imaged with a 63×, 1.3 NA glycerol-immersion
objective with the Leica microscope system. Cells were washed extensively and
embedded into a MAP hybrid polymer by addition of 20 μL of Cell-MAP solution
(20% AA, 7% SA, 0.1% BA, 0.5% TEMED, 0.5% ammonium persulfate in PBS). Ammonium
persulfate was added last from a freshly prepared 5% stock solution. Cell-MAP
solution was quickly added to the coverslip and left to polymerize for 4–5 min.
Gels were peeled off the coverslip using forceps, washed extensively and
denatured for 30 min in denaturation buffer at 95 °C. Cell-MAP gels were washed
extensively, restained with anti-tubulin antibody and TOTO-1 and reimaged.

### Immunostaining of brain tissue

For typical staining, MAP-processed 100- to 500-μm-thick mouse brain coronal
slices were incubated with primary antib0odies (typical dilution, 1:100) in PBS
with 1% (wt/vol) Triton X-100 (PBST) at 37 °C for 8–16 h, followed by washing at
37 °C for 1–2 h in PBST three times. The tissue was then incubated with
secondary antibodies (typical dilution, 1:100) in PBST at 37 °C for 6–16 h,
followed by washing at 37 °C for 1–2 h in PBST three times. For antibody
validation of a given antibody, 100-μm-thick PFA-fixed control and MAP-processed
samples were stained with the same titer of primary and, if necessary, secondary
antibodies overnight in PBST. See Supplementary Table 1 for the list of
antibodies used. To destain for multiplexed labeling, samples were incubated in
a denaturation solution 6–16 h at 70 °C, and washed with PBST at 37 °C for 1–2 h
three times.

### Mounting and imaging

Samples were mounted on a slide glass. Blu-Tack adhesive was applied on the
Petri dish or the slide glass, and samples were covered with a glass-bottom
Willco dish. The space between the bottom material and the Willco dish around
the sample was filled with either shrinkage solution or DI water according to
the sample immersion medium. Large expanded samples were additionally placed on
a 120-mm-diameter Petri dish, and the dish was filled with DI water. Expanded or
shrunk samples were stabilized for at least 1 h before imaging. Samples were
imaged with either the Olympus FV1200MPE microscope system or the Leica TCS SP8
microscope system. A 10×, 0.6 NA CLARITY-optimized objective (XLPLN10XSVMP;
8.0-mm WD) was used with the Olympus system to obtain wide-field images of
shrunk samples and z-stack images of large samples. The images of MAP-processed
samples were obtained with a 10×, 0.3 NA water-immersion objective, a 20×, 0.95
NA water-immersion objective, and a 40×, 1.25 NA oil-immersion objective with
the Olympus system, or a 10×, 0.3 NA water-immersion objective, a 25×, 0.95 NA
water-immersion objective, and 63×, 1.30 NA glycerol-immersion objective with
the Leica system. Single-photon confocal laser scanning imaging was performed
with 405-, 488-, 559-, and 635-nm lasers (Olympus) or a white-light laser
(Leica). Mai Tai DeepSee (Spectra-Physics) was used for multi-photon excitation
with 780-nm wavelength. The images were visualized and analyzed with Fiji or
Imaris (Bitplane).

### Large tissue staining

1- and 2-mm-thick mouse brain coronal slices were prepared by “General MAP
protocol,” and expanded. A 1-mm-thick slice was chopped to about 3 mm × 3 mm × 1
mm (dimensions before MAP). The sample was stained passively with Alexa Fluor
594-conjugated rabbit anti-GFP antibody (Life Technologies, A21312) for 3 d and
Alexa Fluor 594-conjugated donkey anti-rabbit IgG antibody (Abcam, ab150072) for
3 d. 20 μL of antibody was used in 500 μL PBST, and was washed with 40 mL PBST
for 1.5 d (three times in total) for each antibody. We used stochastic
electrotransport 28 to stain a 2-mm-thick slice with Alexa Fluor 647-conjugated
rabbit anti-GFP antibody (Life Technologies, A31852) and Alexa Fluor
647-conjugated donkey anti-rabbit IgG antibody (Abcam, ab181347). For each
antibody, we first electrotransported stochastically a solution containing 20 μL
of antibody in 4 mL of 0.6 M N-cyclohexyl-3-aminopropanesulfonic acid (CAPS),
0.2 M Tris, 100 mM NaCl, 20 mM SDS, 1% BSA with an electrophoresis buffer
containing 0.3 M CAPS, 0.2 M Tris, 20 mM SDS, 30% sorbitol for 21 h. It was then
electrotransported stochastically in a solution containing 4 mL of 0.3 M CAPS,
0.2 M Tris, 20 mM SDS, 30% sorbitol, 1% BSA, and 1% Triton X-100 with an
electrophoresis buffer containing 0.04 M Tris, 0.01 M phosphate, 30% sorbitol
for 8 h. These two steps complete the stochastic electrotransport labeling. The
stained sample was expanded in a solution containing 0.01% (wt/vol) heparin
sodium porcine mucosa (Sigma, SRE0027) and 1% Triton X-100 in DI water, and then
imaged.

### Cell distortion analysis

Before and after MAP processing tubulin images were first registered using a
scaled-rotation transformation in Fiji. Non-rigid invertible B-spline
registration was performed with an 8 × 8 control point grid in bUnwarpJ. Vectors
of different length were subjected to the resulting nonlinear transformation,
and the input-output difference norm was sorted based on the input vector length
and then averaged by root-mean-square. For morphological image processing of
nuclei, TOTO-1 images before and after MAP-processing were first registered
using a scaled-rotation transformation in Fiji. The registered images were
segmented by thresholding and converted to circular particles with equivalent
average radii calculated from the “Analyze Particles” function in Fiji. Matched
pairs of cells from the before and after images were randomly chosen, and the
expansion ratio was calculated from the ratio of the connecting line segment
lengths. The fraction in nuclei was obtained by summing the intensity profile
along the connecting line segment and averaging the sums from the before and
after binary masks.

### Tissue distortion analysis

After anesthesia, mice were first washed transcardially with 2% AA in PBS
followed by perfusion with 4% PFA and 30% AA in PBS. Thy1-eGFP-M mouse brains
were harvested and incubated in 20 mL of the same fixative solution at 4 °C
overnight and at 37 °C for 3 h. Brains were sectioned to 100-μm-thick coronal
slices with a vibrating microtome. Slices were stained and imaged to obtain
“before MAP” images, and then incubated in a solution containing 4% PFA, 30% AA,
0.1% BA, 10% SA, and 0.1% V-50 in PBS at RT for 8 h. Hydrogel-tissue
hybridization was performed in situ by incubating the tissues with nitrogen gas
at 45 °C for 2 h. Hydrogel-embedded tissues were incubated in denaturation
solution at 37 °C for 1 h and 95 °C for 0.5–1 h. Samples were then stained with
the same markers and imaged to obtain “after MAP” images.

To quantify distortion errors, regions of ~3 mm × 2.5 mm in size that included
cortex and hippocampus were stained with DyLight 594-conjugated lectin (Vector
Laboratories, DL-1177) before (8 μL in 200 μL PBST for up to 8 samples) and
after (2 μL in 200 μL PBST for each sample) MAP processing. Samples were
incubated in RI matching solution after staining and mounted and imaged before
MAP processing. Five samples were repeated for incubation, mounting and imaging
to measure mounting errors. After MAP processing, six samples were stained,
expanded in DI water, and imaged. Keypoints of the vasculature in volumetric
images were detected and matched between two image sets with a MATLAB code
implementing the 3D Harris Corner Detector and 3D SIFT algorithm as described
previously (Murray et al. 2015). Using custom-built graphical user interface
software developed with Delphi XE4 (Embarcadero Technologies), redundant
keypoints closely located to each other and keypoints at tissue margins were
removed. Tissue sizes were estimated by the area defined by a convex hull
encompassing all key-points, and the expansion ratio was calculated as the ratio
between two squared roots of the areas. The correspondence information was used
to generate a regularly spaced deformation mesh using a 3D thin plate spline
code written by Yang
(http://www.mathworks.com/matlabcentral/fileexchange/37576-3d-thin-plate-spline-warping-function).
Lengths between each pair of grid points were calculated in both pre-MAP and
post-MAP images, considering the expansion ratio. The difference between the two
lengths was measured as a distortion error. After averaging the squared errors
for each measurement length, the square root of the averages was collected from
the samples to obtain statistical values of error.

### Neurofilament tracing

Tracing of individual neurons was performed using either Fiji or Imaris. For
manual tracing of a long tyrosine hydroxylase fiber, a representative fiber was
chosen during confocal imaging acquisition and traced by moving the motorized
stage and adjusting the z-level. During the tracing, ambiguous crossovers were
resolved by obtaining high-magnification subvolume images. After tile-scanning,
the target fiber was re-identified from the image volume using Fiji and marked
to be displayed in a two-dimensional plane. For the semi-automatic tracing of
SMI-312 fibers in a dense region, the entire 800 μm × 800 μm × 150 μm (expanded)
data set was loaded along with a filament tool into a ‘Surpass’ instance using
Imaris. An autopath calculation was performed using a single starting point as
indicated in Supplementary Video 8. The fiber endpoint was designated by
selecting the portion of the fiber exiting the imaged volume. The fiber
representation was changed to a cone representation to visualize the filament
diameter as well as the tracing path. The tracing fidelity was confirmed by
inspection. To trace multiple fibers in a dense region, the full data set was
cropped to the region indicated in Figure 5o using the ‘3D crop’ tool, and
similar autopath calculations were performed for each fiber. For traceability
comparison between before and after MAP, we imaged the same tissues before and
after MAP processing at the same resolution near the optical sampling limit with
the Leica system and a 25×, 0.95 NA water-immersion objective. Two individuals
not involved in imaging acquisition performed manual tracing using autodepth
assistance in Imaris, and discordance ratios between manual tracing results
before and after MAP processing were calculated.

### Synaptic and fiber intensity profiles

The regions of interest were imported into Fiji. Lines were drawn perpendicular
to the synaptic junction or near the fibers of interest and intensity profiles
were obtained with adjusting the line width. For synaptic intensity profiles,
two Gaussian distributions were fit to the distinct peaks by simultaneous
minimization of the sum of squared residuals. Synaptic densities for bassoon and
VGluT2 were calculated from three non-overlapping xy-images (235 μm × 235 μm) of
expanded samples. The images were segmented by thresholding, and individual
synaptic structures for each channel were counted using the “Analyze Particles”
function in Fiji. The synaptic densities were calculated based on the frame
area, and the s.d. was calculated from the three replicates.

\newpage

## References
