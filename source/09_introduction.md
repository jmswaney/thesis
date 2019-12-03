# Introduction

## Multiscale intrinsic complexity of the brain

The human brain is a complex biological system with components spanning multiple
length scales, including synapses, neurons, and various brain regions. Synapses
transfer signals via neurotransmitters and form local connections between
neurons [@Sudhof2008]. Neurons project over long distances, allowing these local
synaptic connections to be used to construct a large-scale intercellular network
[@Knosche2011]. Glia support neuronal function and influence synaptic remodeling
[@Araque2010; @Stogsdill2017], and microglia patrol the parenchyma to clear
debris and respond to inflammatory signals [@Lenz2018]. Although the human brain
consists of approximately 100 billion neurons, this number pales in comparison
to over 100 trillion synapses within the same brain [@Herculano-Houzel2009].
This combinatorial explosion of intercellular interactions in the brain is
simultaneously what gives rise its emergent properties and what makes it so
difficult for neuroscientists to understand [@Bassett2011; @Postle2006].

The pioneering work of Ramón y Cajal depicted neural structures with
unprecidented detail and revealed the existence of different types of neurons
based on morphology [@Garcia-Lopez2010]. Since then, it has become clear that
the brain is no exception to the intimate link between structure and function
seen throughout biology [@Batista-Garcia-Ramo2018]. Above the single-cell scale,
interesting patterns in cellular organization, or cytoarchitecture, begin to
emerge. Different cytoarchitectural appearances seen within Nissl-stained brain
sections serve as the basis for defining more macroscopic brain regions
[@Ero2018]. These regions are often defined hierarchically, with the coarsest
partitioning being the lobes of the brain. 

In this description of the brain at various length scales, two broad strategies
for studying overall brain function begin to emerge naturally. One is a
bottom-up approach, in which cellular details such as electrophysiological
properties, gene expression levels, and subcellular structures are emphasized.
These details are often used to sub-categorize cells in the hopes that given the
functional roles of these subtypes, we may be able to understand how they are
wired together [@Lake2016]. That is, bottom-up approaches based on cellular
sub-typing are analogous to trying to understand how a circuit board works by
first identifying its electrical components. Another strategy is a top-down
approach, in which the functional associations of each brain region, anatomical
features, and large-scale patterns in electrical activity (also known as
"brain waves") are emphasized [@LopesdaSilva1991]. By taking a more holistic
view of the brain, top-down approaches hope to address how the brain works as a
complete system through the interaction of different brain regions. However,
studying the brain as a complete system has proven to be experimentally
challenging due to its scale and intrinsic complexity.

Recent advances in brain atlases allow neuroscience researchers to use bottom-up
and top-down strategies in tandem, which has been very useful [@Nowinski2017].
By defining a common coordinate system for a typical brain, information from
multiple brain samples can be effectively pooled into an aggregate dataset of
protein expression, gene expression, and electrophysiological properties via
alignment to the anatomical reference brain. Taking this approach, the Allen
Brain Atlas has acted as a catalyst allowing neuroscientists to ask exciting new
questions [@Jones2009]. Although the atlas approach can provide aggregate
phenotypic information in terms of population averages, it is still limited in
its ability to describe a single brain.

The complete network of neural connections in the central nervous system is
often referred to as the *connectome* [@Toga2012]. In order to observe the
connectome, new technological advances are needed to fully capture the
multiscale intrinsic complexity of a single brain. Although atlas approaches may
be able to elucidate consistent region-to-region projections using sparse
labeling techniques such as viral labeling, a complete picture of the connectome
remains elusive [@Oh2014]. Such a detailed depiction of the entire biological
system would bridge the gap between bottom-up and top-down approaches for a
single brain and be arguably as profound as the original drawings from Ramón y
Cajal.

## Trends toward more complex brain models

In neuroscience, researchers often use model systems as proxies for the human
brain, and each brain model has its own set of advantages and disadvantages in a
given biological context. Researchers typically use brain models that have been
previously demonstrated to be useful to study the neurological phenomena or
complex phenotypes of interest. This is because validating new biological models
of the brain is quite difficult, and it is often unclear how well-established
models approximate what occurs in humans.

Some of the simplest models of the brain are 2D cell cultures of human neurons
[@Gordon2013]. These models allow easy access for monitoring the entire culture
system throughout experimentation. Such 2D cell cultures have been widely
adopted for drug screening purposes due to their high-throughput and scalability
[@Sharma2012]. However, lead compounds identified in primary cell drug screens
often do not succeed in clinical trials, suggesting that there is more to the
biological story than what 2D cell cultures are telling us [@Hefti2008].

By far the most commonly used brain model used in experimental neuroscience
research is the mouse brain [@Ellenbroek2016]. Due to its low cost, amenability
to genetic manipulation, and relatively small size, mouse models are a
convenient model of the human brain. Neuroscientists have used mouse models to
study a wide range of topics, including human disease pathologies [@Leung2016],
mechanisms of learning and memory [@Han2013], and the behavioral underpinnings
of social interaction [@Ko2017]. However, a complete view of the mouse brain
model is more difficult to obtain than with 2D cell cultures.

Recently, cerebral orgnaoids have emerged as a more complex in vitro brain model
[@DiLullo2017]. Cerebral organoids are derived from human pluripotent stem cells
and, therefore, may be more relevant to human neurodevelopment than mouse models
[@Qian2019]. Cerebral organoids are just a single manifestation of a larger
trend of in vitro biological modeling with organoids, and similar models have
been developed for the kidney [@Nishinakamura2019], liver [@Wu2019], and
intestine [@Wallach2017]. While cerebral organoids and 2D neuronal cultures both
contain human cells, cerebral organoids are 3D tissue cultures, with
extracellular matrix material and a more diverse set of cell types, including
neural progenitors, neurons, and astrocytes [@Lancaster2013]. This complexity is
added intentionally, presumably in the hopes that cerebral organoids will be
able to model more complex phenotypes accurately. If this proves to be true,
then the experimental possibilities of such an in vitro model are vast.

Another model that has become more commonplace in neuroscience research is the
*Callithrix jacchus*--also known as the common marmoset [@Kishi2014]. Marmosets
are a relatively small non-human primate that is phylogenetically more closely
related to humans. Therefore, there has been recent interest in using marmoset
models for studying more human-like behaviors rather than mouse models
[@Miller2016].

These recent trends toward more complex and larger brain models are evident, and
they originate from some of the inherent limitations of the brain models that
are currently available to neuroscientists. However, as these trends continue
toward the larger scale, neuroscientists will be hard-pressed to adapt the
technologies and experimental techniques that were developed for 2D cell culture
and mouse models. Scaling up the techniques used in experimental neuroscience to
larger, more complex brain models is the focus of this thesis.


## Thesis aims

### Aim 1 - Create methods for staining and imaging whole-brain scale models {.unnumbered}

Building upon tissue clearing technologies such as CLARITY [@Chung2013], new
methods for preserving, clearing, magnifying, and staining whole-brain scale
tissues are presented. First, the SWITCH technique is introduced to decouple the
transport and reaction kinetics of fixative molecules and probes [@Murray2015].
Then an expansion-based technique called MAP is introduced to improve the
imaging resolution of conventional fluorescence microscopy down to synaptic
resolution [@Ku2016].

### Aim 2 - Develop computational tools for analyzing whole-brain imaging data {.unnumbered}

Drawing from open-source tools in the Python community, a scalable image
processing pipeline is presented with a detailed protocol for single-cell
analysis of whole-brain scale volumetric images [@Swaney2019]. Then, an
efficient 3D coregistration algorithm is presented that matches corresponding
nuclei between multiple rounds of imaging of the same brain. This single-cell
coregistration algorithm my enable multiplexed fluorescence imaging of a single
whole-brain sample. Finally, a multiscale phenotyping pipeline is presented for
understanding the complexity in cerebral organoids as a new brain model. This
pipeline is used to measure multiscale pehnotypic changes in response to
maturation, Zika virus infection, and different culture protocols.

### Aim 3 - Scale up cerebral organoid culture by addressing nutrient transport limitations {.unnumbered}

To increase the scale to which 3D in vitro brain models such as cerebral
organoids can be cultured, an organoid vascularization strategy using two-photon
stereolithography is presented. A detailed design for a high-resolution
two-photon 3D printer is provided that can achieve 4 µm fabrication resolution
and directly print engineered pore structures. Vasculature printed from
biocompatible resins were shown to integrate with cerebral orgnaoids cultured
with and without perfusion with limited cytotoxicity. Future work may build on
this vascularization to create new models of the blood-brain barrier or to
perturb cerebral organoids using the integrated micro-vessels.

\newpage

## References
