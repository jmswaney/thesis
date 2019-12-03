# Vascularization of cerebral organoids using two-photon stereolithography

\slshape

**Justin Swaney**\*, Alexandre Albanese\*, Srinu Pujari\*, Nicholas Evans, Dae
Hee Yun, Webster Guan, Kwanghun Chung [^1]

[^1]: \* indicates co-first authorship.

\upshape

## Abstract

Organoids derived from induced pluripotent stem cells (iPSC) enable the
production of patient-specific 3D tissues in vitro. Cerebral organoids mimic
human brain development and can grow beyond 4 mm in diameter with intricate,
self-assembled internal structures that resemble human corticogenesis. These
large organoids require long-term culture in spinning bioreactors to maximize
the transport of oxygen and nutrients, but cell death and hypoxia still occur
away from the organoid surface. Fetal development resolves the restricted
transport in large tissues by the integration of blood vessels in the first
trimester in utero. To address this issue in vitro, we fabricated synthetic
vasculature by high-resolution photopolymerization of polyethylene glycol (PEG)
based monomers using two-photon stereolithography (SLA). Micro-vessels were 100
µm in outer diameter, durable yet flexible, and permeable to bio-molecules in a
tunable manner. Cerebral organoid culture for 30 days with perfusion was
accomplished with a polydimethylsiloxane-based fluidic culture system and
resulted in vascular network integration with no indication of material
cytotoxicity. Future studies can use our printed vasculature to create and
perturb new models of human tissue.

## Introduction

Organoids are three-dimensional (3D) biological models wherein patient-derived
induced pluripotent stem cells (iPSCs) or embryonic stem cells (ESCs) are
differentiated into specific cell types [@Fatehullah2016]. These cells
self-assemble due to cues from the provided extracellular matrix (ECM) material
and culture media. Depending on the cues provided, various kinds of organoids
can be created, including renal, intestinal, and neural [@Takasato2015;
@Chen2017; @Lancaster2013]. To create a cerebral organoid, iPSCs or ESCs are
formed into a small spheres called an embryoid bodies (EBs). The EBs are
cultured in neural induction media and then seeded into matrigel to form
cerebral organoids. Cerebral organoids are cultured for several weeks in a
stirred bioreactor to allow for growth and maturation. After three months,
cerebral organoids can reach diameters of up to 4 mm. Cerebral organoids offer
several advantages over other biological models of the human brain. Being
derived from stem cells, organoids can model human development in vitro.
Cerebral organoids have been used to study developmental neurological disorders
such as microcephaly, autism, and Rett syndrome [@Mariani2015; @Mellios2017].
Since the iPSCs are patient-derived, organoids also offer personalized
therapeutic potential in disease modeling and drug development [@Lancaster2014].
Since organoids offer more realistic disease modeling, they could bridge the gap
between primary drug screens and animal trials [@Pampaloni2007]. For this
reason, pharmaceutical companies are investigating the use of organoid models
for lead optimization. Despite these recent successes, cerebral organoids are
still an incomplete model of the human brain.

One major shortcoming is the omission of a vascular system, which is needed to
provide nutrients uniformly throughout large tissues. As a result, cerebral
organoids are limited to approximately 4 mm in diameter as all nutrients must
diffuse in from the organoid surface [@McMurtrey2014]. As the nutrients diffuse
into the organoid, they are simultaneously consumed via metabolic processes
within the organoid. This nutrient reaction-diffusion is non-physiological, and
it may hinder the ability for cerebral organoids to model healthy brain
development [@Raja2016]. In vivo, nutrient delivery is solved by the vascular
system, an incredibly sophisticated and dynamic transport system. Capillaries
can be as small as 10 µm in diameter, and the average vessel-to-neuron distance
is only 20 µm in the human brain [@Murray2015]. These characteristics make
recreating the vascular system an extremely difficult engineering problem.

Vascularization of in vitro cultures has been studied extensively in tissue
engineering, and both cell-based and synthetic approaches have been proposed
[@Lovett2009]. Cell-based approaches such as extravasation rely on the ability
of endothelial cells to form capillary networks when subjected to shear forces
due to flow [@Jeon2015]. The resulting capillaries are approximately 10 µm in
diameter, but the overall network geometry is not controlled. Synthetic methods
such as 3D bio-printing extrude cell-laden inks into 3D vascular structures
[@Kolesky2016]. In this case, the printed vascular network geometry is
controlled, but the resulting capillaries are typically 500 µm in diameter due
to the fabrication resolution of the printer. In both types of vascularization,
however, there is usually no characterization of the changes in transport
phenomena involved with incorporating the vascular system. Instead, biological
assays showing increased cell proliferation and metabolic activity are used as
proxies for improvements in nutrient transport. Synthetic vascularization
strategies such as 3D bio-printing offer no way of modulating the nutrient
transport properties of the resulting vascular system, so measuring transport
would only serve to highlight this lack of flexibility.

Two-photon stereolithography (SLA) offers much higher resolution than other 3D
bio-printing methods [@Sun2004; @Kim2010]. Two-photon SLA relies on the
non-linear dependence of the photon absorption rate on light intensity to
achieve localized polymerization at the focal spot of a microscope objective. At
the focal spot, photoinitiators are excited to their singlet state through
two-photon absorption. The excited photoinitiators produce radicals which
participate in an initiation reaction of a radical polymerization. By scanning
the focal spot around in the focal plane, a single cross section of a 3D object
can be created. A 3D object is generated by lifting the objective to stack the
printed cross sections sequentially. Feature resolutions down to 100 nm have
been reported using two-photon stereolithography (Sun et al. 2004). At such high
resolution, microporous vessel walls could be fabricated directly, effectively
decoupling the mechanical properties of the material from the overall transport
properties of the vascular system. This decoupling of mechanical and transport
concerns may allow materials that are well suited for stereolithography to still
provide adequate nutrient transport into the cerebral organoid.

Here, the progress toward vascularized cerebral organoids using two-photon SLA
is presented. A two-photon SLA printer was built and a biocompatible resin was
developed for the fabrication of micro-vessels. The high fabrication resolution
enabled direct printing of engineered pore structures to modulate effective
transport properties with continuous perfusion from an external pump. Organoids
with printed vasculature that were cultured with perfusion showed mature neurons
and micro-vessel integration but hindered organoid growth when compared to
controls. Future work may focus on creating a more robust long-term perfusion
culture apparatus for the vascularized cerebral organoids with an integrated
live-imaging system. 

## Results

### Design of a high-resolution two-photon SLA 3D printer

To fabricate synthetic vascular structures with micron-scale resolution, we
designed and built a custom two-photon SLA 3D printer (Figure
\ref{Vascularization-1}). Using similar optics to a confocal two-photon
microscope, a Ti:Sapphire near-infrared (NIR) femtosecond pulsed laser beam is
first directed through an electro-optic modulator (EOM) to control the laser
intensity over time (Figure \ref{Vascularization-1}a). The control signal for
the EOM is provided as an analog voltage signal from a control computer. Next,
the beam is expanded to an appropriate size for a pair of 7 mm galvanometer
(galvo) scanning mirrors. The mid-plane of the XY-galvos is placed conjugate to
the scan lens to minimize the spot movement during scanning. By mounting the
XY-galvos close together and positioning the focal plane of the scanning mirror
directly between the mirrors, the resulting deflection in the projected beam is
shared equally in the X and Y directions. 

![Construction of a high-resolution two-photon SLA printer. (A) Diagram of laser beam path in the two-photon SLA system. Similar to a confocal point-scanning microscope, galvanometers (galvos) deflect the laser in the XY plane of the objective. A high-frequency electro-optic modulator (EOM) modulates the laser power during galvo scanning. (B) Diagram of the high-level object-oriented software architecture for the two-photon SLA system. (C) Photograph showing the physical two-photon SLA system. \label{Vascularization-1}](source/figures/Vascularization/figure1.jpg){ width=100% }

Then, a *4f* scanning system further expands the beam to slightly overfill the
back aperture of the printing objective. The NIR laser is directed through the
objective using a dichroic mirror with a 700 nm cutoff wavelength mounted in a
filter cube. This dichroic mirror reflects the incoming NIR laser but allows
light from an illumination LED mounted underneath the XY stage to pass through
to a CCD camera. The camera is mounted directly above the objective with a tube
lens and chromatic filter to protect the CCD from the NIR laser. Since the
deflection of the scanned spot is small, the z-position of the objective can be
adjusted without affecting the laser power delivered into the resin. To
accomplish this z-positioning, the objective is mounted on a vertically-oriented
motorized stage with a 25 mm travel range. The laser is finally focused at the
working distance of the objective, which is approximately 8 mm away from the
final lens. 

Since the two-photon absorption process can excite only a small point in the
focal plane of the objective, the resin within the 8 mm distance between the
lens and the focal plane is unaffected by the NIR laser. This simplifies any
surface effects encountered in UV-based photo-polymerization due to laser
bleed-through and oxygen inhibition.

In order to control the hardware in the two-photon SLA system, a custom LabVIEW
program was developed (Figure \ref{Vascularization-1}b). The control software
was implemented using object-oriented design patterns and is based on the actor
framework, which allows each physical piece of hardware to be controlled
asynchronously through a message passing interface. By creating an abstract base
class for each actor in the two-photon SLA system, interfaces for each
constituent hardware component were defined. Using this strategy pattern allowed
for plug-an-play hardware compatibility while maintaining the asynchronous
nature of the actor framework. It also allowed for software development without
physical hardware connected to the computer because individual hardware actors
could be mocked by implementing the interfaces in the hardware abstraction layer
using trivial methods.

### Two-photon SLA enables microfabrication of biocompatible materials

Since a pulsed near-infrared (NIR) laser is required for two-photon absorption,
a series of commercially available photoinitaitors were screened for
compatibility with this light source. We found that isopropylthioxanthone (ITX)
and Irgacure 369 were both excitable under NIR irradiation and triggered
photopolymerization of neat poly(ethylene glycol) diacrylate (PEGDA). When used
together, ITX and Irgacure 369 show higher polymerization rates than they do
individually due to the effect that ITX has as a sensitizer for Irgacure 369. We
also found that adding N-methyldiethanolamin (MDEA) as an amine synergist
further increased the rate of polymerization, presumably due to its reactivity
with Norrish type II photoinitaitors such as excited ITX as well as its ability
to scavenge singlet oxygen. The most effective two-photon compatible
photoinitiation system contained 0.1% ITX, 0.5% Irgacure 369, and 4% MDEA
(Figure \ref{Vascularization-2}a).

![Two-photon SLA of micro-vessels from biocompatible materials. A) Diagram of the print process and polymerization chemistry at the focal spot. (B) Cross sections of printed micro-vessels of various wall thicknesses and diameters. (C) ESEM image of printed micro-vessel walls. Scale bar, 20 µm. \label{Vascularization-2}](source/figures/Vascularization/figure2.jpg){ width=100% }

Using this two-photon optimized photoinitiation system, we developed a resin for
3D printing biocompatible materials with micron resolution. We found that adding
pentaethyritol tetra-acrylate (PETA) as a crosslinker greatly improved the
mechanical stability of our material, but it also led to clogging of printed
channels. Since clogging was due to over-polymerization in non-irradiated
regions, we added 0.2% 4-methoxyphenol (MEHQ) as a resin stabilizer and
polymerization inhibitor. This low concentration of MEHQ was not enough to
completely stop photopolymerization upon NIR irradiation, but it was effective
at preventing unwanted polymer growth away from the focal spot during printing.
A monomer formulation optimized for 3D printing microfluidic structures
containing 10% PETA and 90% PEGDA575 was used in the following experiments.

To show micron-resolution printing of unclogged tube structures, we printed a
series of fluorescent tubes with a variety of diameters and wall thicknesses
using a 10x/0.6 NA objective. The smallest tubes that we printed were 50 µm in
outer diameter (Figure \ref{Vascularization-2}b). A line scanning pattern from
the print process was observable in the walls of the printed tubes, suggesting
that a specific microstructure existed due to the fabrication process. To
observe this microstructure in more detail, these printed tubes were imaged
using environmental scanning electron microscopy (ESEM). The ESEM images
revealed a similar line scanning pattern stacked into layers (Figure
\ref{Vascularization-2}c). Each line of polymer was approximately 4 µm thick and
20 µm tall, corresponding to the fabrication resolution of the printer and
resin. This fabrication resolution is approximately two orders of magnitude
smaller than the fabrication resolution of 3D bio-printing.

### Printing large-scale vascular systems by SLA tiling

With a 10x objective, the effective field-of-view (FOV) is approximately 1 mm
wide. In order to print 3D models that are wider than a single FOV, a tiling
strategy is required (Figure \ref{Vascularization-3}a). To ensure that adjacent
tiles are covalently linked, these print tiles must overlap slightly.
Furthermore, since arbitrary 3D geometries could be given to the printer, all XY
tiles in a Z slice must be completed before moving on to the next Z slice.
However, empty tiles and even blank lines can be skipped to speed up the overall
print times.

![Tiling strategy for printing large-scale vascular systems. (A) Printing a 3D model wider than a single field-of-view (FOV) requires tiling each XY slice with overlap. (B) Bar graph showing the trade off between objective magnification and print time. Higher magnification objectives typically have higher optical resolutions but smaller FOVs, requiring more XY tiling to print the same 3D model. (C, D) Diagram and images of overlap compensation using laser power scaling. Overlapping regions over-polymerize due to repeated laser exposure. By reducing the laser point in the overlapping regions using the EOM, adjacent tiles can be effectively fused. \label{Vascularization-3}](source/figures/Vascularization/figure3.jpg){ width=100% }

Using higher magnification objectives would further improve the fabrication
resolution, but it would make printing larger structures prohibitively slow
(Figure \ref{Vascularization-3}b). For example, although a 40x/1.3 NA objective
would have a theoretical axial resolution near 1 µm, the number of XY tiles
increases quadratically with the reduced FOV width. Conversely, although a
4x/0.3 NA objective would reduce the number of XY tiles needed to print larger
vascular structures, the axial resolution would be much worse with such a low
numerical aperture. For these reasons, we chose to use a 10x/0.6 NA objective
for fabrication.

Simply overlapping adjacent tiles is an acceptable strategy for stitching
volumetric images together since fluorophores simply emit photons in response to
excitation. However, photo-initiators produce radial species that trigger local
polymerization, which is an irreversible chemical change in the resin. If
overlapping regions are repeatedly subjected to irradiation, then
over-polymerization in those regions may cause internal stresses and mechanical
failures in the resulting printed structure. To compensate for this repeated
irradiation in overlapping regions, we use an overlap compensation strategy
where the laser power is reduced using the EOM in the overlapping regions by a
reduction factor $\phi$ each time a voxel is irradiated more than once (Figure
\ref{Vascularization-3}c). Through trial and error, the optimal setting for
$\phi$ was found to be 0.75 for our optical system and resin (Figure
\ref{Vascularization-3}d).


### Direct printing of engineered pore structures allows modulation of transport properties

After characterizing the fabrication resolution of our printer, we tried to
directly fabricate porous structures. To this end, we created porous and control
3D models for cylindrical reservoirs with the same dimensions and wall thickness
(Figure \ref{Vascularization-4}a). The porous model was created by using random
laser powers in the reservoir wall. After filling these reservoirs with 5 µL of
FITC or 3 kDa-dextran solution and surrounding them with water, the psuedosteady
diffusion of the fluorescent molecules from the reservoir was monitored using a
fluorescence microscope (Figure \ref{Vascularization-4}b,c). The fluoresence
instensity within the porous reservoir decreased faster than the control
reservoir for both FITC and the 3 kDa-dextran. This demonstrates that the
fabrication resolution of our two-photon SLA printer is sufficient to directly
print porous structures and modulate transport properties of printed materials.

![Direct printing of microporous structures improves mass transport from printed reservoirs. (A) Optical sections of control and porous 3D models of cylindrical media reservoirs. The porous reservoir has a subset of voxels that were exposed to random laser powers between 0% and 100%. (B) Normalized fluorescence intensity of FITC and 3kDa-Dextran conjugated with Texas Red inside the reservoirs over time when surrounded by water. (C) Example images from different time points in (B). \label{Vascularization-4}](source/figures/Vascularization/figure4.jpg){ width=100% }

Printing pore structures directly may allow tuning of the transport properties
independently from the resin formulation. In order to monitor transport of
solutes from printed vessels with perfusion, inlet and outlet connections to an
external pump are required. To this end, we designed and printed compression
fittings that interface the printed vasculature with 1 mm soft silicone tubing
(Figure \ref{Vascularization-5}a). The compression fittings require minimal
force to insert tubing, and the tubing is soft so that the printed micro-vessels
are not subjected to large stresses when connected from both sides. Also, the
optimized resin produces a material that is rigid enough to stand upright during
fabrication, but also flexible enough to accommodate the strain associated with
direct tubing connections.

We compared the transport of FITC and a 3kDa dextran from micro-vessels with and
without straight pores using time-lapse fluorescence imaging (Figure
\ref{Vascularization-5}b). Each pore was 4 µm wide and 20 µm tall oriented
radially in the micro-vessel walls. Pores were included at 18 equally spaced
axial locations along the micro-vessels, which were 2.5 mm long (150 µm axial
spacing). From the time-lapse images, radial concentration profiles were
obtained and used to calculate the effective diffusion coefficients in the
micro-vessel wall as well as in the external matrigel (Figure
\ref{Vascularization-5}c). For both FITC and 3kDEX, a diffusion front was
observed with a time-dependent boundary condition at the micro-vessel surface.
The boundary condition concentration is related to lumen concentration through
the conservation equation in the vessel wall, which is a porous medium. We
approximated the time scale of diffusion in this porous medium by fitting a
first order model to the observed boundary condition. A more elaborate model of
the micro-vessel wall would be insightful if more pore structures were tested.
However, we found this simple model to be adequate for quantifying the improved
transport properties measured in the micro-vessel wall.

![Modulation of microfluidic transport properties by direct fabrication of engineered pore structures. A) 3D model of transport system with inlet and outlet compression fittings. B) Image of printed transport system. C) Time-lapse images of FITC and 3kDa Dextran diffusion from the transport system with 100 uL/min perfusion. D) Quantification of transport properties within the micro-vessel wall with and without printed pores. \label{Vascularization-5}](source/figures/Vascularization/figure5.jpg){ width=100% }

### Integration of printed vasculature shows limited cytotoxicity

After showing that our printed vasculature could deliver biomolecules with
tunable transport properties, we wanted to test the compatibility of our printed
vasculature with cerebral organoid culture even without media perfusion. In
order to minimize deviations from standard cerebral organoid culture protocols,
we chose to embed the organoid with the printed vasculature at the time the EB
is usually embedded into matrigel. Instead of embedding into a matrigel droplet,
the EB was first loaded onto the device in a designated opening, and then
matrigel was added around the EB and vasculature. The design of the designated
opening for EB embedding is nontrivial since capillary forces dominate how the
liquid containing the EB will behave at the millimeter scale. After embedding,
the vascularized organoids were cultured in a petri dish without perfusion and
compared to a vascular controls with and without shaking. 

![Integration of vasculature into cerebral organoids shows mature neurons and micro-vessel integration. A) Schematic of vascularized organoid culture with perfusion. B) Render of softwell culture devices and vasculature equipped with barb fittings. C) Vascularized and avascular organoids grown with and without shaking. D) Quantification of organoid size with and without shaking. (E) Immunostaining of PARP, TubB3, AcTub, and Ki-67 in vascularized organoids. \label{Vascularization-6}](source/figures/Vascularization/figure6.jpg){ width=100% }

After culturing for 30 days, we observed a decrease in the size of the
vascularized organoids as well as the controls cultured without shaking (Figure
\ref{Vascularization-6}a,b). This is in agreement with the hypothesis that
organoid culture is transport limited, since shaking can influence convective
mass transport at the surface of the organoid. The vascularized organoids were
not significantly smaller than the controls cultured without shaking, indicating
the material may not what is causing the restricted growth. A closer look at the
control organoids cultured with shaking revealed a bimodal distribution of
organoid sizes, where some organoids were as small as those cultured without
shaking and other were much larger. This suggests that some heterogeneity
between neural organoids may be due to inconsistent nutrient transport during
culture. 

### Perfusion culture of vascularized organoids showed limited apoptosis and mature neurons

Next we wanted to culture our vascularized organoids with media perfusion in an
attempt to rescue the restricted growth without shaking. We developed a series
of culture devices called softwells made from polydimethylsiloxane (PDMS). These
devices were equipped with a single inlet and outlet for media circulation
through multiple vasculature devices in parallel (Figure
\ref{Vascularization-6}c,d). For long-term perfusion culture, vasculature
devices were printed with barb fittings designed to connect to the PDMS directly
through a 2 mm punched hole. After embedding, the vascularized organoids were
placed into an incubator alongside an external pump for media recirculation. All
experiments used a flow rate of 25 µL/min per organoid.

We compared our vascularized organoids to avascular controls cultured in petri
dishes as well as in softwells (Figure \ref{Vascularization-6}e). This
experiment was designed to ensure that the softwell itself was nontoxic to the
organoids. After a month of culture, however, a similar size analysis revealed a
significant drop in avascular organoid size when cultured in the softwell,
indicating that the PDMS may have interfered with the organoid culture. The
perfused organoids were significantly smaller than the control organoids
cultured without shaking in a petri dish. However, the perfused organoids were
not significantly smaller than the avascular organoids cultured within the same
softwell. Upon inspection of the perfused organoids, one large outlier exists,
suggesting that the perfused organoids may have not received equal media
perfusion. Together, these results suggest that the PDMS softwell may not be
suitable for long-term perfusion culture and that there may be some issue with
the softwell devices in delivering equal media to all organoids. We are
currently working to remove PDMS from the culture system and instead use a
single 3D printed vascular device to perfuse multiple organoids. If unequal
perfusion is not an issue in the softwell devices, then material passivation is
an option to help rescue organoid growth.

We then stained the vascularized organoids for markers of apoptosis (PARP),
proliferation (Ki-67), and mature neurons (TubB3) to verify that the neural
organoid differentiated properly (Figure \ref{Vascularization-6}f). Vascularized
organoids showed characteristic ventricular zones and positive expression of
mature neural markers, such as tubulin-β3. The micro-vessels were surrounded
by cells and neuronal projections, and no increase in apoptosis was observed
near the micro-vessels as measured by PARP expression. Instead, most apoptotic
cells were near the core of the organoids and away from the micro-vessels,
consistent with the hypothesis that there is insufficient nutrient delivery away
from the organoid surface. This suggests that the printed material and
vasculature geometry is not preventing the expected differentiation and
maturation within vascularized neural organoids.

## Discussion

Several commercial 3D printers use vector rather than raster scanning for
fabrication. Raster scanning was used in our two-photon SLA system to facilitate
the tiling strategy. With raster scanning, the entire 3D object can be
represented as an array data structure. Array data structures are easily
indexed, which enables partitioning of the 3D object into smaller subarrays for
each tile. In vector scanning, 3D objects are typically represented using
G-code, which encodes the fabrication process in terms of parameterized tool
paths. However, this data structure is not easily partitioned into parametrized
tool paths within subregions. The entire G-code parameterization could be used
by scanning the XY stage, but this process would be very slow relative to
galvo-based laser scanning.

The representation of 3D objects as arrays is also helpful in printing
engineered pore structures. The array data structure allows for modulation of
the laser power for each voxel, each of which is just 4 µm wide. However,
turning the laser power down randomly in advertently leads to less overall
polymerization and weaker structures. Instead, pores can be printed through the
entirety of the wall deliberately as in Figure \ref{Vascularization-5}. Such
micro-pores would allow the overall object to remain mostly polymerized, but
reveal openings through which biomolecules may easily diffuse. An interesting
implication of having these micro-pores is the fact that they would be of
similar size to the organoid cells. It may be possible for cells to migrate from
the vasculature into the organoid. This could be used to model angiogenesis,
introduce microglia, and study metastasis all within the exciting in vitro
framework of cerebral organoids.

The microfluidic interface and culture system is what ultimately acts as an
interface between the macroscopic and microscopic length scales. There are
approximately four orders of magnitude between the fabrication resolution of our
printer (4 µm) and the overall size of the tools used to create organoids (1-10
cm). When faced with a similar problem in microfluidic applications, researchers
typically use PDMS. However, there is still room for improvement in the
integration of these conventional microfluidics with culture tools that enable
prolonged perfusion culture. Specifically the culture systems needs to be pared
down to simplify the interpretation of experimental results. Various passivation
methods and quality control steps should be tested in attempt to increase
overall organoid growth during perfusion culture.

Vascularization of cerebral organoids has been demonstrated using two-photon SLA
to print biocompatible micro-vessels that are 100 µm in diameter. The
fabrication resolution of 4 µm enabled direct printing of engineered pore
structures to increase the permeability of the printed material to large
bio-molecules. Prolonged culture with media perfusion for one month was
accomplished with a PDMS-based fluidic culture system and resulted in vascular
network integration. More work needs to be done to increase organoid growth in
perfusion culture as well as in characterizing the vascularized organoids to
avascular controls. Future work may also adapt the printed vascular systems with
engineered pore structures in live-imaging and co-culture organoid systems.

## Methods

### Construction of two-photon SLA printer

A Ti:Sapphire laser (Vision-S, Coherent) was used to deliver 75 fs pulses of 800
nm light at a repetition rate of 80 MHz. The beam was attenuated with an EOM
(M302RM, ConOptics) and then enlarged with a Keplerian beam expander. Following
a periscope, the beam entered the pupil of a two-axis galvanometer system (6215H
7 mm, Cambridge Technology) for raster scanning. The focal plane of the scan
lens (LSM04-BB, Thor Labs) was positioned between the galvanometers in order to
minimize the vignetting effect during scanning. A tube lens relayed the scanning
beam to the objective back aperture. The objective was mounted on a single-axis
stage with 1” travel range (MP-285, Sutter Instrument). The sample was placed on
a two-axis nanopositioning piezoelectric stage with a 135 mm x 85 mm travel
range (M-687.UN, Physik Instrumente). A 700 nm shortpass dichoric mirror and
laser filter were mounted before a CCD inspection camera (Prosilica GE1050,
Allied). An LED with condensing optics and variable power LED driver (M625L3-C1
and LEDD1B, Thor Labs) was positioned beneath the sample stage for brightfield
illumination.

The system integration was implemented in LabVIEW using the Actor Framework
(AF). Each piece of hardware was defined as a LabVIEW class which inherits from
the abstract actor class. Each actor inherits the functionality of a
queue-driven state machine where methods are called using a message-passing
paradigm between actors. This allowed for asynchronous control of individual
subsystems as well as coordination of several pieces of hardware simultaneously.
It also enabled true parallel execution of each actor rather than simple context
switching between threads. Since the AF utilizes object-oriented programming, a
hardware abstraction layer was defined to allow for a more dynamic runtime
behavior. This made the program more accommodating to future hardware changes,
and it allowed for the use of dummy hardware actors for debugging or when the
physical hardware was not connected to the controlling computer.

### Measuring the fabrication resolution with ESEM

A 6 x 4 array of 300 µm tall micro-vessels were printed together on a printed
400 µm thick substrate. The micro-vessels were printed with 0.01% FITC acrylate
in order to visualize the formed polymer with confocal microscopy. The printed
micro-vessels were placed in the chamber of an ESEM and imaged under 50%
humidity to prevent drying. The resulting images were analyzed in ImageJ to
determine the fabrication resolution.

### Rapid prototyping of PDMS molds for creating microfluidic culture systems

3D models for the PDMS molds were designed in SOLIDWORKS 2016. These models were
fabricated on an Ultimaker 3 printer out of polylactic acid (PLA) and used
ejector pins for injection molding as channel molds (McMaster). Sylgard 184
(Dow) mixed at a 15:1 curing ratio was poured directly into the mold. The PDMS
prepolymer was degassed for 30 minutes before curing at 60C overnight. Holes for
vasculature connections were punched using 2 mm disposable biopsy punches
(Integra 33-31-P/25). 

### Perfusion culture of vascularized neural organoids

The microfluidic culture system was connected to silicone tubing and purged with
culture media. The printed vasculatures were loaded into the microfluidic
culture system, and then an EB was pipetted into each of the printed
vasculatures. Matrigel was added to the EBs positioned within the printed
vasculatures, and the microfluidic culture system was connected to a peristaltic
pump (Ismatec 4 channel Reglo ICC) inside an incubator with 5% CO2. The
vascularized organoids were cultured for 30 days using media from the Lancaster
2013 protocol with media perfusion at 25 uL/min per organoid. The culture media
was replaced every 5 days.

\newpage

## References
