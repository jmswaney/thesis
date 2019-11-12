# Conclusion

## Thesis summary

This thesis addresses several major challenges associated with scaling up
experimental techniques used in neuroscience research. These advances enable
neuroscientists to answer long-standing biological questions in new ways by
lowering the barrier for staining and imaging, providing scalable image
processing tools for analysis, and engineering new culture systems for the study
of large-scale brain models.

By building from tissue clearing technologies such as CLARITY, we developed the
SWITCH method for controlling reaction kinetics of fixative molecules and
molecular probes when processing large tissue samples. The robust GA fixation
used in SWITCH also enabled over 20 rounds of antibody staining within the same
human clinical brain sample. Then, resolution limitations associated with
conventional fluorescence microscopy techniques were addressed by developing
MAP, a technique for physical and tunable expansion of hydrogel-embedded
whole-brain scale tissue samples. MAP allows synaptic resolution imaging with
confocal microscopy and is compatible with long working distance objectives for
imaging thick tissue samples.

In order to rapidly stain large tissue samples, we developed eFLASH, which uses
a rotating electric field and a gradually swept buffer composition to achieve
whole-brain antibodies staining with conventional antibodies. We also present a
scalable image processing pipeline for extracting meaningful biological
information from such whole-brain volumetric images and use this pipeline to
study eFLASH-stained mouse and marmoset tissue at single-cell resolution. An
efficient algorithm for nonrigid coregistration of whole-brain scale volumetric
images based on nuclei matching is also presented. The nuclei-based 3D
coregistration algorithm is shown to be compatible with mouse and marmoset
models and allows warping of an entire mouse brain hemisphere with 6 hours.

Building on these computational analysis tools, a multiscale phenotyping
pipeline called SCOUT is presented for understanding single-cell,
cytoarchitectural, and whole-tissue scale changes in cerebral organoids models.
An automatic 3D ventricle segmentation based solely on nuclear staining using
deep learning is presented. Using SCOUT, the multiscale phenotypic changes
associated with maturation, Zika virus infection, and culture protocol
variations were quantified. In this analysis, the distance from the organoid
surface was repeatedly identified as an important factor in predicting orgnaoid
cytoarchitecture. This supports the hypothesis that cerebral organoids are
affected by nutrient transport limitations.

To address these nutrient transport limitations, a orgnaoid vascularization
strategy is presented using two-photon stereolithography to directly print
biocompatible and porous vascular systems. The two-photon SLA printer achieved 4
um lateral fabrication resolution and was able to directly print engineered pore
structures. The porous vascular systems showed improved effective nutrient
transport with and without perfusion. Printed vascular systems were successfully
integrated into cerebral organoids with limited cytotoxicty and undisrupted
neuronal differentiation. This suggests that the synthetic material is
biocompatible and suitable for organoid culture.


## Future work

The technological contributions of this thesis may enable many future biological
applications. These future applications may draw from individual aims of the
thesis or collectively depending on the context. For example, neuroscientists
interested in visualizing brain-wide protein epxression with antibody staining
may adopt the eFLASH technique. If quantification of these volumetric images is
required for comparative studies, then eFLASH may be used in combination with
the scalable image processing pipeline. By combining eFLASH and our scalable
image processing pipeline, neuroscientists will be able to study their brain
models without dissecting predetermined brain regions.

Using MAP, neuroscientists will be able to more easily quantify synaptic details
using confocal microsopy. Several labs are currently using MAP for such analyses
already. Interestingly, MAP offers tunable tissue expansion, which may be used
to adjust the effective imaging resolution as needed in large tissues. There is
an inherent trade off between the size of the tissue and the image data size, so
the ability to modulate the tissue size as needed may prove valuable when
applying MAP to larger tissues where the final dataset size may become
intractable.

The single-cell 3D coregistration algorithm presented in this thesis may enable
multiplexed fluorescence imaging of a single whole-brain sample. Such a detailed
description of a single brain would be invaluable to understanding the
multiscale intrinsic complexity of the brain. By combining eFLASH, our scalable
image processing pipeline, and the nuclei-based 3D coregistration algorithm, a
multiround staining and imaging approach may provide the most complete image of
protein expression within a single tissue to date. In the same way that
multimodal brain atlases are valuable tools to the neuroscience community, such
a hyperdimensional volumetric image of the entire brain would be an asset to
future studies. Finally, the coregistration algorithm presented here may be an
indespensible tool to extract as much phenotypic information when dealing with
precious samples such as human clinical brain samples.

Future work based on SCOUT may continue to utilize deep learning and
high-throughput imaging technologies to deliver on the promise of organoids as
powerful new in vitro biological models. Specifically, live-imaging modalities
combined with real-time ventricle segmenation may elucidate the mechanisms by
which cerebral organoids form ventricles and neural rosettes. This detailed view
of cerebral orgnaoids with immediate phenotypic feedback could enable rapid
protocol optimization as well as detailed pertubration analysis with drugs and
morphogens. 

The organoid vascularization strategy demonstrated here may serve as a
proof-of-concept for future studies that utilize two-photon stereolithography
for 3D printing biocompatible culture devices. The high resolution offered by
two-photon SLA allows direct printing of porous materials, which is valuable in
more contexts than just neuroscience research. However, these engineered pore
structures may allow new models of the blood-brain barrier to be developed with
separate media for the lumen and extracellular space. A natural next step for
the printed vasculature is to combine vascularization with orgnaoid "assembloid"
approaches, potentially giving rise to larger functional tissue cultures in
vitro. By delivering nutrients, drugs, or biological material into future 3D in
vitro tissue cultures, the printed vasculature may provide researchers new ways
to monitor and perturb their cultures.
