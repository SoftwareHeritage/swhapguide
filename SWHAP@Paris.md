---
title: 'The Software Heritage Acquisition Process'
date: 18 October 2022
author: 
 - name: Laura Bussi
   affiliation: Dept. of Computer Science, University of Pisa
   email: l.bussi1@studenti.unipi.it
 - name: Roberto Di Cosmo
   affiliation: Software Heritage, Inria and University of Paris
   email: roberto@dicosmo.org
 - name: Carlo Montangero
   affiliation: Dept. of Computer Science, University of Pisa
   email: carlo@montangero.eu
 - name: Guido Scatena
   affiliation: Dept. of Computer Science, University of Pisa
   email: guido.scatena@unipi.it
subparagraph: yes
bibliography: swhap.bib
---
<a name="intro"/>

Introduction
============

Software is everywhere, binding our personal and social lives, embodying
a vast part of the technological knowledge that powers our industry,
supports modern research, mediates access to digital content and fuels
innovation. In a word, a rapidly increasing part of our collective
knowledge is embodied in, or depends on software artifacts.

Software does not come out of the blue: it is written by humans, in the
form of software Source Code, a precious, unique form of knowledge that,
besides being readily translated into machine-executable form, should
also "be written for humans to read" (@Abelson:SIC85), and "provides a
view into the mind of the designer" (@Shustek06).

As stated in the Paris Call on Software Source code as Heritage for
sustainable development (@ParisCall2019), from the
UNESCO-Inria expert group meeting, it is essential to preserve this
precious technical, scientific and cultural heritage over the long term.

Software Heritage is a non-profit, multi-stakeholder initiative,
launched by Inria in partnership with UNESCO, that has taken over this
challenge. Its stated mission is to collect, preserve, and make readily
accessible all the software source code ever written, in the Software
Heritage Archive. To this end, Software Heritage designed specific
strategies to collect software according to its nature (@swhcacm2018).

For software that is easily accessible online, and that can be copied
without specific legal authorizations, the approach is based on
automation. This way, as of September 2019, Software Heritage has
already archived more than 6 billion unique source code files from over
90 million different origins, focusing in priority on popular software
development platforms like GitHub and GitLab and rescuing software
source code from legacy platforms, such as Google Code and Gitorious
that once hosted more than 1.5 million projects.

For source code that is not easily accessible online, a different
approach is needed. It is necessary to cope with the variety of physical
media where the source code may be stored, the multiple copies and
versions that may be available, the potential input of the authors that
are still alive, and the existence of ancillary materials like
documentation, articles, books, technical reports, email exchanges. Such
an approach shall be based on a focused search, involving a significant
amount of human intervention, as demonstrated by the pioneering works
reconstructing the history of Unix (@SpinellisUnix2017) and the source code
of the Apollo Guidance Computer (@VirtualAGC).

This document presents the first version of SWHAP, the ***SoftWare
Heritage Acquisition Process*** to rescue, curate and illustrate
landmark legacy software source code, a joint initiative of Software
Heritage and the University of Pisa, in collaboration with UNESCO. 

The SWHAP process aims at preserving and presenting legacy source code and related materials in a **digital** format, to ensure long term availability of the curated materials and the possibility to share and present it to a broad audience. 

<a name="context"/>

Legacy software preservation, a brief overview
============

In the 1950s, the first computers with von Neumann architecture (similar to that of our modern computers) emerged. Initially limited to research laboratories and military programs, their use quickly spread to businesses and administration. In the 1960s, the production of computer programs skyrocketed with the introduction of so-called "high-level" programming languages such as FORTRAN (1957) or COBOL (1959), which made software production independent of the technical configuration of the machine. As a major scientific and technical achievement of the 20th century, software has now become part of human cultural heritage, and the question of its preservation emerged in the 1980s.

In 1986, the Computer Museum in Boston commissioned David Bearman, an expert in electronic archiving, to write a report on the feasibility of a software archive titled "The Concept of a Software Archive: Planning for a Software Archive" (@Bearman86). This report served as a basis for discussions with the Smithsonian Institution and the Charles Babbage Institute. In an expanded version of the report published in 1987 (@Bearman87), Bearman raised concerns about the risk of software heritage disappearance.

> Early software masterpieces, monumental intellectual achievements of the genre, have already been lost to future study through neglect. And contemporary software concepts [...] will likely be lost unless the cultural history repositories of our day - the museums and archives of our contemporary society - take action soon to prevent the disappearance of this record.

In 2002, John G. Zabolitzky emphasized the importance of preserving not only the hardware but also the software as witnesses of one of the greatest industries of our time in his work titled "Preserving Software, Why and How?" (@Zabolitzky02). The author highlights the significance of preserving software as a testament to the advancements made in this field.

> Information technology is the largest industry worldwide today, and is slated to be even more dominant in the future. The roots of this industry are hardware and software developments over the past 50 years. Future generations will find it hard to understand if these roots are not preserved today. While a lot of hardware artifacts have been well preserved, I strongly suspect that some past software artifacts have already been destroyed irrecoverably. (Where are the early UNIVAC operating systems? The first FORTRAN/COBOL/ALGOL compilers?) There is a grave danger that in the near future large bodies of historically relevant software will be destroyed. Now is the time, therefore, to take action and preserve these objects for future study.

In 2017, Paul McJones, a member of the Software Preservation Group, shared his unsuccessful quest for the first FORTRAN compiler in his article titled "The Search for the First Compiler" (@McJones17). He highlighted the urgency of preserving historical software, particularly as the original creators of these software programs are nearing the end of their lives. The article emphasized the importance of capturing and documenting this valuable software heritage before it is lost forever.

> Old software and related materials are in constant danger of being lost, damaged, or destroyed; the people who created that software are aging and dying.

<!--
In February 2019, UNESCO, in collaboration with Software Heritage, published the Paris Call for the Source Code of Software (noauthor, 2019). This document identified a list of challenges faced by software heritage and aimed to raise awareness among stakeholders. The Paris Call specifically highlighted the urgency of collecting, preserving, and safeguarding historical source code (point 28 of the call). The document emphasized the importance of recognizing the cultural significance of software and taking proactive measures to ensure its long-term preservation.
-->

Preservation in practice
--------------------

While the importance and urgency of preserving software heritage have been recognized by numerous individuals, organizations, and institutions, the practical implementation of such archiving and conservation efforts remains complex. Various initiatives, with different objectives and strategies, have emerged since the 1980s, primarily in the Anglo-Saxon world.

In 1988, the Library of Congress established a Machine-Readable Collections Reading Room (@Kimball90), providing access to software and files that could be executed or read on historical machines. However, the project was abandoned after a few years due to its high cost and low number of users.

In 2002, Grady Booch, an IBM computer scientist, sent an email titled "Preserving classic software products", calling for the identification of software that should be prioritized for preservation efforts and the location of their source codes. As a result, in 2003, the voluntary committee Software Preservation Group (initially known as the Software Collection Committee) was created to support the Computer History Museum in its software preservation mission. The group's website compiles numerous primary and secondary sources related to the history of software.

In 2007, The Internet Archive launched its library of historical software. While it is generally not possible to download binary files, some software can be executed through an integrated emulator. The collection also includes photographs, videos, advertisements, and other documents.

In 2016, the Software Heritage project (initiated by Inria) was launched, aiming for the massive archiving of publicly available source codes on software forges. This project primarily focuses on the preservation of recent source codes. 

A difficult balance
--------------------

In "A Response to 'Preserving Software: Why and How'" (@Kaplan02), Elisabeth Kaplan, an archivist at the Charles Babbage Institute, summarizes the tension faced by libraries, museums, and archives regarding software preservation. They are caught between the still poorly defined needs for such an archive and the significant costs involved in its implementation.

> First, while all participants agreed that software history is important, that awareness of it should be raised, and that it must be documented, participants simply could not identify a solid user base of any justifiable proportion. Second, as participants stated over and over again, “preserving software” is much more than an act of accumulation. It means conserving, organizing, researching, cataloging, and presenting the materials in ways that researchers can use. To do otherwise is simply hoarding. And no individual institution or consortium of institutions has been able to balance these two issues.

Elisabeth Kaplan explains the approach adopted by some institutions as follows:

> Since then, institutions such as the Smithsonian, the Charles Babbage Institute, and Stanford University have focused efforts on collecting not the software itself, but its documentary record—which may include catalogs and directories, personal papers, business records, oral histories and audiovisual materials. All of these documentary manifestations can be stored, described, and made available to scholars according to established standards—not cheaply, but with the normal expenses associated with the archival enterprise.

The Software Heritage approach
--------------------

In 2019, Software Heritage and University of Pisa published a first version of this guide, establishing a process for safeguarding historical source codes into the Software Heritage archive. This process is called **SWHAP**, for _Software Heritage Acquisition Process_. The idea of the SWHAP process relied on several core beliefs:
- Legacy source code gives a precious view on the history of the software and of its authors and is worth preserving for itself
- Archiving source code can be achieved at a reasonnable cost and effort
- Preserving source code in a digital and machine readable format ensures its long term availability and allows exploitation by future generations
- Preserving historical source code is a task that can only be tackled via a collective effort, and should be adressed via an open-sourced process allowing as many personns and entity to contribute.

Alongside source-code and in line with the approach proposed by Elisabeth Kaplan, we also believe that ancilliary material, such as catalogs, personal artifacts, oral testimonies etc. should be preserved. The SWHAP also covers the preservation of these artifacts, focusing on digital format and exploiting as much as possible open-source archiving solutions. 

In 2021, Software Heritage announced the launch of the "Software stories" initiative (noauthor, n.d.), in collaboration with the sciencestories.io team and the University of Pisa. The project aims at presenting the history of significant historical software projects in a way that is accessible to the general public without any technical background. The new version of this guide will also tackle how to contribute to the Software Stories library, based on currated materials. 

What the SWHAP does _not_ cover
--------------------

The Software Heritage Acquisition Process solely focuses on preserving items in a **digital format**, in order to make the preservation process as accessible and scalable as possible. This means we will not tackle how to preserve physical artefacts, even though we do encourage you to try and safeguard any physical artefacts of interest you may encounter in the preservation process (computers, paper listings, reports etc.). This can typically be done by reaching out to science museums or local preservation associations. In annexe X you will find a non-exhaistive list of such entities. 

The SWHAP focuses on preserving the software **source code**, which we believe is worth preserving for itself. The process does not tackle the execution of this code, or how to deal with emulation systems. 


Who is this guide for and what do you need to get started?
============

The goal of this guide is to allow any party interested in preserving, curating and presenting legacy source codes to achieve the SWHAP process in full autonomy. 
Typically :
- An archive, museum or library 
- A company or research center
- Any individual wishing to archive its own source codes

Depending on which goals you are pursuing, you may refer to different sections of this guide. 
If you already have a specific software in mind, you know where the source code is and you (or someone you know) can dedicate some time to preserving it, then you can jump directly to the technical section and get the work started (TO DO: add reference). Typically you are one of the author of the code and want to make sure it doesn't get lost for future generations.

If you want to launch a preservation initiative at a broader scale, for example preserving legacy softwares within your institution, or collecting artefacts as a museum, we will first try to give some guidance as regards how to set things in motions, and which ressources you will need. 

Regardless of where you stand from, here are the entities which will be involved in the process. We designed the process to rely as much as possible on existing open-source solutions, so that you don't have to set anything up by yourself if you don't want to. If you are an institution and wishes to use some of your own infrastructure that is of course possible. 

<!--
Copyright disclaimer
--------------------

The individual or institution entering the SWHAP process should have all copyrights on the collected documents
TO DO: ellaborate on this
-->

What entities are involved?
--------------------

MF: I think we should make this more detailed, depending on the use cases. If you are an institution you may have you own media library etc. 

 
- *Digital archives*: in the SWHAP process various types of digital archives are used for different types or artefacts. The proposed process relies on open source solutions even though you may be free to chose alternative options. The responsibility of maintaining these open-source digital archives lies in the different entities or consortia implementing them. The use of open source solutions ensure the best perenity of the archiving over time. 
- *Online presentation plateform*: although you are free to recreate your own website to present your software collection, we offer in this guide to leverage an open-source solution called "Science stories". In this guide we will show you how to contribute to the [Software Heritage implementation](https://stories.softwareheritage.org/), eventhough you may decide to create your own dedicated instance.
- *Digital working environment*: between the collection of physical or digital artefacts and the final archiving and presentation of the software a series of operations will have to be performed in a digital environment. If your are implementing the SWHAP process you will be responsible for implementing and managing this digital environment, and to transfer part of its content to the digital archives and to the presentation plateform of your choice. We will further elaborate about that later in this document. 

TO DO : ajouter shéma

What are the different roles involved?
--------------------

MF:  The role do not match the roles proposed in the workbecnh template (author, collector, curator). I would be in favor of making it simpler. If the process is simple enough (we should aim for it) there should not be a need for archive engineer or web engineer. Shall we make deposit engineer the same as archive engineer. Are these standard "titles" in conservation processes, or did you create them for SWHAP purpose? This can be a bit scary for someone starting the process alone (like a CS researcher). 

With respect to the human resources, several roles are needed to enact
the process, as indicated in the top part of fig. 1. Here is a short
summary of the involved capabilities.

- **Collector**: Searches and receives the raw materials. Identifies, classifies and
separates source code and ancillary materials.
- **Deposit engineer**: Masters the procedures to archive physical and digital materials, in the
local context.
- **Curator**: Prepares the version history, identifying the authors and other
contributors. Provides a context to the source code, choosing among the
ancillary materials.
- **Archive engineer**: Masters the procedures to transfer the curated source code to SWH and to
publish the context in the Wikies.
- **Presentation designer and Web engineer**: These are out of the scope of this document, and are mentioned only to
note that, though most of the presentations of the archived software
will be on line, the abilities to design the contents of a presentation
should be considered separately from the technical ones.

**[Remark]{.underline}** the roles indicated above need not necessarily
be played by different persons, e.g., Collector and Curator may be the
same person, nor be played by a unique person, e.g., there can be
several cooperating Curators, in case of large systems.

What if I am stuck or have a question ?
--------------------

Because we are still developping and improving the SWHAP process you may stumble upon some difficulties, have some doubts on the best practices to adopt or you may just want to suggest an improvment. 

First, we suggest you checkout our FAQ: TO DO: create FAQ and input link

If you can't find what you are looking for there, please reachout to: TO DO: decide if we want to provide a contact point

What is the content of this guide?
--------------------

MF: to be reviewed at the end
 
- [Inroduction](#intro)
- [Who is this guide for and what do you need to get started?](#context)
- [The process, abstract view](#abstractview) 
- [The process, concrete view](#concreteview) 
- [A walkthrough on a running example](#runningexample)
- [Appendix A - General Motivation for using Git and GitHub](#appendixa)
- [Appendix B - Tools that can help](#appendixb)
- [Appendix C - Tips on Github](#appendixc)
- [Bibliography](#bibliography)

Section {@sec:processabs} provides an *abstract* view of SWHAP, its steps,
documents and resources. No specific assumptions on the *tools, platforms and
technologies* that may be used to enact it are made, but some requirements are
made explicit. Section {@sec:processconcrete} describes how the abstract process
is implemented at the University of Pisa by leveraging the Git toolset and the
GitHub collaborative development platform. This implementation is named SWHAPPE
(SWH Acquisition Process Pisa Enactor) in this document. Finally, Section {@sec:walkthrough}
provides a walkthrough on an annotated example, using a real world medium-sized software
project (@AttardiF96).

<a name="abstractview"/>

The process, abstract view {#sec:processabs}
==========================

This section describes SWHAP, the acquisition process for software
artifacts at an *abstract* level, that is, without making specific
assumptions on the *tools, platforms and technologies* that may be used
to perform the various operations described here.

![Source code acquisition process.](./media/image1.png){#fig:absprocess}

The activities involved in the acquisition process can be organized in the
following four phases.

- **Collect**: the first phase  is *conservative*, i.e., it is devoted to save the raw materials, in their physical or digital format, that the other phases will build upon.
- **Curate**: the second phase aims at *analyzing, cleaning up and structuring* the raw materials that have been collected, gather information regarding the software history and identify copyrights and licenses.
- **Archive**: the third phase's goal is to contribute the curated materials to the digital infrastructures specialized for each kind of materials. From this stage on, all the curated material should have been digitalised in order to be processed. 
- **Present** The purpose of this phase is to create dedicated presentations of the curated materials.

Figure {@fig:absprocess} provides a pictorial view of the process, its phases,
data stores and roles.

Collect
------ 

The purpose of this phase is *to find* the source code and related
materials and *gather* it *as is* in a physical and/or logical place
where it can be properly *archived* for later processing. 

Various *strategies* are possible for collecting the raw materials: a
dedicated team may proactively search for the artifact of specific
software that has been identified as relevant (*pull approach*), or a
crowdsourcing process may be set up to allow interested parties to
submit software that has not been previously identified (*push
approach*).

*Source code* can be provided in a *digital* or *physical* form.
Typically, source code for old machines (such as the first Italian
computer, CEP, now exposed in the Pisa museum of computing) is available
only as paper printouts that may even include hand-written comments: all
these materials deserve to be preserved.

*Related materials* can include research articles, pictures, drawings,
user manuals: all of these are part of the software history and need to
be preserved as well as the source code.

At this stage of elaboration of the process, this phase is better
thought of as *abstract*, in the sense that several, more focussed
descriptions should be provided to cater for the different situations
identified. The same applies to the Curator role, which may need
different capabilities in different scenarios.

Curate
------ 

The purpose of this phase is *to* *analyze, cleanup and structure* the
raw materials that have been collected.

During this phase, the general history of the software will be reconstructed, identifying the software versions and the contributors. 

MF: no clear place to do so in the Workbench (especially for contributors and their workdate in the project).

Collected materials will be prepared for proper archiving.

Preparing software source code for archival in **Software Heritage**
requires special care: the source code needs to be *cleaned up*,
different *versions* with their *production dates need to be
ascertained*, and the *contributors need to be identified* in order to
build a *faithful history of the evolution* of the software over time.

For both source code artifacts and ancilliary artificats, proper *metadata* should be created and made available, providing all the key information about the artifacts that are discovered during the curation phase. 


<!--
Regarding source code artifcats, we recommend to use the
vocabulary provided by **CodeMeta** as an extension to schema.org (see
[[https://codemeta.github.io/terms/]{.underline}](https://codemeta.github.io/terms/));
this includes the software runtime platform, programming languages,
authors, license, etc.
For other artifacts we will provide a dedicated template. 
-->


Particular care is required to *identify the owners* of the different
artifacts, and *obtain if needed the necessary authorizations* to make
these artifacts publicly available[^1].

Archive
------ 

The purpose of this phase is to contribute the curated materials to the
infrastructures specialized for each kind of materials: ***Software
Heritage*** for the *source code*, ***Wikimedia*** for *images or
videos*, ***open access repositories*** for *research articles*,
***Wikidata*** for *software descriptions and properties*, and so on.

As much as possible we will promote using free and open-source platforms for archiving your content. 
However this may come with some restrictions : 
- some plateforms have size limits (which may be an issue for uploading large files like videos)
- uploading documents to Wikimedia requires a free license, which might not be the case for all the collected materials

In these cases the use of private infrastructures can be considered (like Youtube for large videos). 
Institutionnal media libraries can also be an option for materials with restricted copy rights. 

Well established guidelines are available for contributing materials to
Wikimedia (see
[[https://commons.wikimedia.org/wiki/Commons:First\_steps/Contributing]{.underline}](https://commons.wikimedia.org/wiki/Commons:First_steps/Contributing))
and Wikidata (see
[[https://www.wikidata.org/wiki/Wikidata:Data\_donation]{.underline}](https://www.wikidata.org/wiki/Wikidata:Data_donation)
), hence we will focus more specically on curating and contributing the
software source code to Software Heritage, a process that is new and may
require rather technical steps.

Present
------  

The purpose of this phase is to create dedicated presentations of the
curated materials.

Once the curated materials are made available in the dedicated
infrastructures, it is possible to use it to create presentations for a
variety of purposes: special events, virtual or physical expositions for
museums or websites.

In this guide we will show you how to display you work in a specific format, called [_**Software Story**_](https://stories.softwareheritage.org/).
The _Software Story_ pulls from different public sources (Wikimedia, Wikidata, Software Heritage, Youtube...) to automatically create a presentation of you software. 
This is only a proposition, feel free to use any other tool or platform you may like. 


<!--
For this, the archived materials need to be referenced using the
identifiers that each platform provides for its contents. Software
Heritage provides intrinsic persistent identifiers that are fully
documented at
[[https://docs.softwareheritage.org/devel/swh-model/persistent-identifiers.html]{.underline}](https://docs.softwareheritage.org/devel/swh-model/persistent-identifiers.html)

The presentation phase is out of the scope of this document, and as such
we are currently not providing a supporting implementation. Anyway, a
good example of what can be done is the
[[https://sciencestories.io]{.underline}](https://sciencestories.io)
website.
-->

An iterative process
--------------------

New information may arise at any time: new raw materials may be
discovered, refined information may be identified that needs to be added
to the curation, and mistakes may need to be corrected. Hence, the
overall process must be seen as *iterative*, in the sense that, when new
data are available, the pertinent phase can be re-entered and the
process enacted once more from there to update all the relevant
information. This suggests that, whenever possible, the data stores
should be fully versionable, not to loose historical information about
the acquisition process itself.

<!--Resources needed by the process
-------------------------------

As any process supported digitally, SWHAP needs both human and technical
resources to be enacted.

First of all, several data stores and working areas are needed, to save
and make public the intermediate products, which are themselves of
value, as already mentioned, and to pass the collected information
across the phases. These are shown in the lower part of Figure 1, and
are summarized here. -->

<!--

MF: I think this should be moved earlier in the document and explaining who is responible for what. I don't fully get the role of the Despository. I don't think things are "safely archived" on Github (otherwise we wouldn't need SWH!), so I don't see the point of maintaining the depository there. 
Also this is mixing thing which are part of the SWHAP process iteself and some which are not (like the warehouse). 

### Warehouse

A physical location where physical raw materials are safely archived and
stored, with the usual acquisition process[^2].

### Depository

A virtual space where digital raw materials are safely archived. The raw
digital materials found in the Depository are used in the Curation phase
to produce the source code that Software Heritage can ingest in the
Archive phase.

The Depository holds also the related raw materials that may be
elaborated and deposited in locations like WikiData, WikiMedia etc. -
referred to as **Wikies** in fig. 1 - in the other phases.

### Workbench

Any implementation of the process will need a virtual space and working
environment where the activities can be carried out, with support for
temporary storage and for logging the various operations in a journal.

### Curated source code deposit

A fully versioned repository, holding the reconstructed development
history of the source code, in view of its transfer to Software
Heritage.

### Catalogues and journals

As shown in fig. 1, according to the best practices of the archival
sciences, each phase shall produce both a *Catalogue* of its products
and a *Journal* recording its activities - *who did what, and when*. A
list of the *Actors* involved in the process is also necessary.
Provision to store all these information safely has to be foreseen in
any supporting implementation.
-->



<!--
**[Remark]{.underline}** the technical resources described above in
abstract terms, may be implemented in a variety of ways. For example,
one can imagine a single Depository for all the software projects that
are collected, but it is also possible to use a separate Depository for
each software project, and the same holds for all the other areas.
-->



Implementation requirements
---------------------------

The abstract process may be implemented using different tools, platforms
and technologies, as long as the following key requirements are
satisfied.

- **Long term availability**: The places where the artefact (both raw and curated) are stored must
provide sufficient guarantees of availability over the long term. These
places may be physical (warehouses), or logical (depositories).
- **Historical accuracy**: Any supporting implementation should support the faithful recording of
the authorship of the source code as well as of the reconstruction
process, e.g., via a flexible versioning system.
- **Traceability**: It must be possible to trace the origin of each of the artifacts that
are collected, curated and deposited. For physical materials, we refer
to common practice[^3]. For digital artifacts, it is recommended to keep
a *journal of all the operations* that are performed, and to automate
them as much as possible, as the collection and curation process may
require several iterations.
- **Openness**: Any supporting implementation should be based on open and free tools and
standards.
- **Interoperability**: Any supporting implementation should provide support for the cooperation
and coordination of the many actors playing the many roles of the
acquisition process.

<a name="concreteview"/>

The process, a concrete view {#sec:processconcrete}
============================

In this process we are assuming that you have a place (refered to as _Warehouse_) to gather any relevant physical artifacts. Because the SWHAP process is about digital archiving and presenting, we also assume that you have digitalized (scanning or taking pictures) of these items to be further ingested in the SWHAP process. From now own, we will be focusing on the digital process only. 

Seeting up your digital workbench
----------------

### General structure

In order to implement SWHAP, the first step is to create the *Workbench* that will allow you to store the collected digital artifacts and to curate them. 
In practice, you could choose any collaborative file management tool as your digital workbench.
Note however that curating source code will require code versionning (typically using a mecanism _à la_ Git). Github or Gitlab are well-known collaborative platforms enabling code versionning and are good options for this part of the process. 
Depending on what suits you best you could therefore choose such platforms as your one and only workbench for the whole process instead of managing two different environments.

The latter choice was made for the SWHAP Pisa Enactor (SWHAPPE). The
implementation adopted by the SWHAP\@Pisa project relies on the
collaborative platform [[GitHub]{.underline}](https://github.com/) (
[[https://github.com/]{.underline}](https://github.com/) ) as a host
platform for all the virtual support areas of the process. If you are interested in further understaning the rational for using Github, you can refere to Appendix A. TO DO: add link

<!--
MF: I think we only need to introduce the Workbench at this sate. Depository is very much optionnal depenging on the goal of the person. Source Code is a technicality for ingestion in SWH archive. 

We propose to structure your *Digital working environment* into three disctinct areas, materialized by different folders, also called repositories on Github.

> *Workbench* repository, a working
> area where one can temporarily collect an curate the materials, only accessible to people directly working on the project;
>
> *Depository* repository, will be used as the final and publicly available depository, allowing anyone interested to visit your work, check the curation process and browse through collected materials. The Depository can also be used as default archiving location if no better option was found; 
>
> *Source Code* repository, will be used to store the "synthetic" version of the source code, as rebuilt by the curation team for old projects that did not use a version control system. This repository will be the source of ingestion for Software Heritage archiving process.


Note that *Workbench* repository will be instantiated at the very beginning of the process as your main working environnement. *Depository* repository and *Source Code* repository will be instantiated later on, as specific extracts from the *Workbench*. Let's first see how to instantiate your *Workbench*.
-->

### Instantiating your Workbench

<!--
MF: is this comment needed ? Maybe to precise at this stage (avoiding mental overload). 
Let's remark that SWHAPPE has *different* Workbench and Depository
repositories for each code acquisition, but it would also be possible to
use a single Workbench repository and/or a single Depository repository
to work on all the collected software, provided one maintains a
well-organised directory structure which keeps the codes separated. On
the other hand, we *need* a Source Code repository for each software
project, to be actually ingested in the Software Heritage archive.
-->

<!--
The Warehouse is quite similar to the usual storage area where museums
preserve their collections; it will need to be set up in a specific
physical location, following the well established process for museums,
so we will not cover it in this guide.
-->

We created a *template* repository that you can easily copy to instantiate your dedicated workbench. 
The [SWHAP-TEMPLATE](https://github.com/Unipisa/SWHAP-TEMPLATE) embodies the core support to enact the process. Its
structure and use is shown in figure 2. After copying it, you can change its name to *SWName-Workbench* ; the *SWName* being the name of the Software you are working on. 

MF: template to be updated to better separate code and non code items

For those familiar with Github, we recommand you to clone your *SWName-Workbench*
repository to your machine, so that
you can work on the collected files locally - the Git clone mechanism
ensures that these changes can be safely moved to the original
repository, for publication and sharing with other actors in the
acquisition.

<!-- Too detailed at this point IMO
We create two dedicated *branches*[^4], that allow to track separately
the operations that will be later moved to the Depository and the
Development History Deposit: *Depository*, to contain the raw materials
and the browsable sources as well as the metadata, and *SourceCode* to
organize the source code in view of the reconstruction of its
development history. Finally, the *Depository* and *SourceCode* branches will
become two distinct repositories: the latter is shipped to the Software Heritage
archive, the former is published by the organization promoting the
acquisition.
-->

![Overview of the SWHAPPE approach](./media/image2.png){#fig:swhappe}

Figure 2. Overview of the SWHAPPE process.

### Workbench structure

The structure of the template is shown in Fig. 3.
MF: TO DO update this graph and the screenshot, to make it simpler

<!-- 

MF: I don't understand this sentence,le t's just discribe each folder and what is it for

First of all, we can see a correspondence between the Depository
presented in the process and the area provided by `raw_materials` and
`browsable_source`: indeed, these two folders will be moved in order to
instantiate the Depository, once they have been loaded, the former with
the original materials, just as they have been found or submitted, the
latter with a first revision of the source code, made accessible through
the GitHub web interface, e.g., archives should be decompressed, code
transcribed from pictures, etc.
-->

Your newly created workbench is composed of the following folders:
- The `raw_source_code` folder used to store the collected source code in their intial format (ex: source code can be a scanned document) 
- The `browsable_source_code` folder is used to store source code in browsable format (ex: if needed the source as been transcribed in machine readable format)
- The `versionned_source_code` folder will be used to recreate the development history of the software, using the *commit* and *versioning* mechanisms of *Git*
- The `additional_materials` folder is used to store all the other collected materials (video, pictures, documents etc)
- The `software_stories` folder is used prepare material for creation of the _Software Story_
- The `metadata folder`, is used to record all the information about the
software and the acquisition process (catalogue, actors, journal, etc.).

MF: Should we create a metafolder for the code items?

MF: I think we need to keep separate the `additional_materials` for non code items (collect and curate), and a dedicated `software story` folder for _presenting_ both code + additional material

MF: I think the actors.md file is confusing. Is it a project metadata file, recording curators ? Or is a data file, recording historical information about who contributed to the software. I think these should be two separate things. At the moment no place to record historical contributors. 

<!--
The guidelines to fill this part are given in the template itself. (MF: I think we should include part of it in the guide, otherwise not clear when is the best moment to fill them in)
-->
<!--
The `source` folder is provided as the starting point for the creation of
the Source Code *Git* repository, in the curation phase. The curator has
to recognize each major version of the code, and refactor it accordingly
- one separate folder per each version. To create the Source Code
Deposit, however, we exploit the *commit* and *versioning* mechanisms of
*Git*.
-->

As part of the instantiation, you can fill in the first metadata of your project. Go to the `metadata` folder, open the `actors.md` file and register who is working on the project, with which role.

TO DO: update this screenshot

![Top structure of the Template repository.](./media/template_structure.png){#fig:template}


<!--
The process, step by step
-------------------------

### Instantiation

The first step is to create an instance of the SWHAP-TEMPLATE[^5], that
should be named SWName-Workbench*,* and then to clone it to obtain a
local copy on your machine[^6].

From this point on, you'll be able to upload files and to
modify/copy/move them locally, and use *Git* commands to push changes to
GitHub.

Let us now see the steps to be followed, together with some
explanations.
-->

Collect
----------------

### Collect artifacts and upload them

MF: add something about collecting information (regarding software and contributors). 

In this first phase you want to spend times collecting the sofwtare artifacts, either in physical or digital format. Appart from source code, it is also important to collect relevant ancillary materials such as pictures, documentation, articles etc.
Whenever possible, we encourage you to reach out to the authors of the softwares and/or to the institution they belonged to. They might hold some precious documents such as pictures, mails etc. 

We encourage you to digitalise (by scanning or photographying) all the relevant physical objects, since this process only focuses on digital items. Whenever possible, the physical objects should be stored in a dedicated warehouse.

The collected source code should then be stored in the `raw_source_code` folder. 
The other collected materials should be stored in the `additional_materials` folder, in the corresponding subfolder. 

MF: how to deal with source code in old versionning systems like SVN? Transfer to Github and then SWH? Can it go directly to SWH?

<!-- MF: should'nt that be done in the metadata folder? I feel like Spectrum guidelines are way over the top, we are not a museum. + is this our role? 
If there are physical materials, folder `raw_materials` should contain
a reference to the related Warehouse, that may follow the Spectrum
guidelines [\[8\]](https://www.zotero.org/google-docs/?X25TEk).

MF: wrong link, to be updated if relevant
-->

### Make the source code machine readable

The next step is to ensure that the collected source code is made available in a machine-readable format. 

If the code is only available in non digital form (e.g. printed
listings), you can either transcribe it manually, or use a scanner and
an OCR (optical character recognition) tool to parse it. See
[[Appendix
A]{.underline}](http://www.corestandards.org/assets/Appendix_A.pdf)
for a list of suggested tools. 

If the raw source code is an archived and/or compressed file (.tar) and/or compressed, you should unpack it locally on your computer. 

Once you made your source code machine readable, all the source code files must then be put into the `browsable_source_code`
folder, using a dedicated subfolder for each version (typically `mySoftware_V1`, `mySoftware_V2` etc).

Particular care should be used to ensure the files in
`browsable_source_code` have the correct extension: scanner and OCR usually
generate files with a generic .txt extension, that must be changed to
the extension typically used for the programming language they
contain.

Note that, at this stage, we are not interested in precise information
about the versions of the software. The purpose is to have
machine-readable documents.


Curate 
----------------

### Fill in the catalogue

To each collected material (source code or other material) should correspond an entry in the catalogue. This catalogue will become the entry point of anyone willing to navigate your collection, and it is important that information is maintained clear and up to date. Depending on the type of object you are registering, you may want to record different information. We propose the following template, that can be adapted for each type of object:

- Object name: _Name of the material_
  - Authors: _Author of the code, picture, article etc_
  - Date: _Creation/publication date_
  - Digital location: _Link to the corresponding folder in your working environment_
  - Warehouse: _Link to the physical warehouse where the object is stored_
  - Collectors: _Name of the person who collected the object_
  - Description: _Description of the object, for source code, indicate the version_
  - Copyright: _Personn or institution holding the copyrights_
  - License: _Distribution license_
  - Notes: _Any additional information_

You may not be able to fill in all the information from the beginning, so you should keep this file updated as new information may come up. You can also add additional field if you think it helps better identify the item. 

MF: should there be one entry per software version? Then redundant with codemeta json and to some extent with version excel file. 
MF: I think the catalogue should be more structured, with clear and pre-identified subcategories.
MF: regarding software what is the source of truth? Codemeta, catalogue etc?


### Go on license hunting

If you own the copyright of the source code or any other material then you can freely decide what you will be willing to share on any given plateform. 
At this point you might however have collected items for which you are not the copyright owner, or not the sole copyright owner. 

In that case you will want to check if you are allowed to collect and share these items, and if so under which conditions. 

Regarding source code, it might be the case that the software you are working on is under a free license such as _GNU General Public License_. Such license will typically let you freely archive and share the source code on any plateform you'd like, as well as any derived materials such as logos or screenshots. 

Regarding other material, such as working documents, photos, videos, it might be the case that there is no predefined license attached to them. In that case you may want to reach out to the copyright owner and ask them for their authorisation to archive and share their documents. You will want to be specific on the use you will make of these documents and about the plateforms you will use in the process. 

As you get more information about copyrights and licenses don't forget to fill in the `catalogue.md` file accordingly. You will also want to keep a record of all the authorisations you may have been granted : that might mean storing email discussions or contract pdf for the record.  

TO DO: be more specific about what to do with authorizations. No dedicated folder for now.
TO DO: show a template of license? DIfference between free license and specific license. 

If you can't get a sharing license for some items you own (ex: press article), you should still reference the items in `catalogue.md` along with storage location and contact point. Some people might see the catalgoe in the future and be interested in accessing it and getting a contact point. However, you are not allowed to publicly publish these items. They should be stored in a dedicated folder that can stay in the private `Workbench` but can't be published publicly.

<!--
don't have copy rights (ex: press articles, photos etc.). Whenever possible we recommand to reach out to the copyright owners and ask if they would be willing to let you use and share their material. See below for more details on copyrights (Add a section about the different cases). If you obtain the copyright for a specific item, store the related contractual document (it can be a simple email) in the `copyrights` (MF: to be created) folder and update the copyright information in the `catalogue.md` file. 
-->
 

### Curate the source code

Modern progamming practice use versionning systems to allow to track changes made in the source code at a very detailed level. While that level of information may not be available for legacy softwares, the curation work will focus on rebuilding _part_ of the development history. This will allow a future viewer of the code to easily compare the different versions of the code and to easily see the differences and evolutions from one version to the other. 

MF: maybe elaborate on the point of re-versionning the source code.

To recreate the development history of the software we will leverage the *commit* and *versionning* mechanisms of Git. 
This system allows to stack versions of the software one upon the other, only storing the differences (also called _deltas_) between each versions. Each layer of the stack can be associated to metadata that we will leverage to make the distinction between the author of the software and the curator, and between the creation date and the curation date.  

We recommand to fill in the following metadata field for each commit:
- `GIT_AUTHOR_NAME`: name of the main author                                          
- `GIT_AUTHOR_EMAIL`: email of the main author, when available                         
- `GIT_AUTHOR_DATE`: original date when this version was made                         
- `GIT_COMMITTER_NAME`: name of the curator person or team                               
- `GIT_COMMITTER_EMAIL`: the reference email of the acquisition process
- `GIT_COMMITTER_DATE`: date of the reconstruction process (current date)                  
- `RELEASE_TAG`: a tag name if the directory contains a release, empty otherwise  
- `MESSAGE`: text containing a brief note from the curation team              


<!--
To prepare for the reconstruction itlsef you need to organize your source code files properly and to identify metadata.  -->

<!-- unclear sentence
Once the Depository creation is complete, you can move back to the
`source` folder in the master branch. -->


<!--
First, sort out the source code files present int the `browsable_source` folder, putting them in a different folder for each version. You can typically call each folder `MySoftware-V1.0`, `MySoftware-V2.0`etc. 

Now, gather the information that will be used in the metadata of the commits.

In practice, this means that *for each version of the software* you
need to ascertain:

-   the *main contributing author*,
-   the *exact date* of the release of this particular version

This information should be consigned in the `version_history.csv` in the `metadata`folder, with the following fields:

\rowcolors{1}{gray!10}{white} 

| Field name          | description                                                      |
|---------------------+------------------------------------------------------------------|
| directory name 	 | name of the directory containing the source code of this version |
| author name    	 | name of the main author                                          |
| author email   	 | email of the main author, when available                         |
| date original  	 | original date when this version was made                         |
| curator name   	 | name of the curator person or team                               |
| curator email  	 | the reference email of the acquisition process                   |
| release tag   	  | a tag name if the directory contains a release, empty otherwise  |
| message 	 | text containing a brief note from the curation team              |

-->
Now you are ready to (re-)create the development history of the
software, by successively commiting the source code files of each version from the `browsable source code` into the `versionned source code` folder, updating the commits metadata to reflect historical develoment.  

MF: verify that you don't actually need to branch the code to do so. 

<!--First you need to create a branch Source Code, with the
*source* folder.-->

You can proceed in two ways:

-   *manually*: using the *Git* commands to push the successive versions
    into the `versionned source code` folder, manually updating the metadata using the data collected during the curation phase in the catalogue.md file. See (TO DO add link) for the step by step process ;

-   *automatically*: if a great number of versions have been collected it might become very tedious to commit them manually one by one. To alleviate the hurdle, we set up a tool that can automatically do it for you. To allow the tool to work, you will first need to gather the commit metadata for all the versions in one csv file, that the tool will be able to read from. Then you will be able to reconstruct the development history of the software in one single run; using the [DT2SG Tool developed by University of Pisa](https://github.com/Unipisa/DT2SG). You can see a running example in the next section.

TO DO: make an actual test of the code, see if is working etc. Sould we store the code in a colab notebook to make it ready to run for a non expert user?

The result will be a `versionned source code` folder that materializes the development history
of the software via Git commits and releases.

<!--
MF: moved to archival part
### Create the final Source Code repository

Using this `versionned_source_code` folder, you can finally create the "official" software repository. This repository will be used for ingestion in the Software Heritage Archive, as described in the following step. 

TO DO: explain why a separate repo needs to be created
-->
<!--
### Curate the ancillary materials

From the `raw_materials` folder, select the ancillary materials that you wish to keep for archival and presentation, and move them in the `additional_materials` foLder. You should sort them in the right subfolder : `software_moment`, `people_moment` or `other_materials`. (MF: are these the right subfolders? At this point of the process we are curating , not presenting yet. I think the folder organisation should have its own logic indepently of the choice of presentation)

To every collected item should correspond an entry in the `catalogue.md`file, located in the `metadata`folder. If there are physical materials, make a different entry for the object itself, indicating its warehouse or storage location, and for its digital version. (MF: is it the case? Shall we also register the source code in the catalogue file?)
-->

### Create final Depository repository

MF: we need to explain what this depository is actually for. Also why create a branch and not just create directly the Depository?
Shall we fill in the `additional amterials`folder before creating the Depository ? This seems more like the curating phase

Create the final `Depository` repository, containing only the
folders `raw_source_code`, `browsable_source_code`, `additional_materials` together with the
metadata updated to this point. 

Remember to remove the folder containing items for which you did not get the copyrights or sharing license. 
This will be the publicly available showcase of your work. 

TO DO: if the items with no public license are scattered in the additional materials folder, it might be quite tedious to remove them. Shall they be stored in dedicated subfolder?


Archive
----------------

### Archiving Source Code

In order to archive your source code properly in Software Heritage archive, you first want to create a standalone "Source Code" repository containing your reconstructed versionned source code only and independant from the workbench. 

To do so, create an orphan branch of the "Workbench", containing only the `versionned_source_code` folder. Push this orphan branch into a new public dedicated repository, that you can typically call "MySoftware Source Code". This repository will be used for ingestion in the Software Heritage Archive, as described in the following step. 

Even though Software Heritage automatically archives any repository publicly available on Github we suggest yout to specifically schedule it to make sure everything runs smoothly. To do so, visit the Software Heritage ["Save code now" page](https://archive.softwareheritage.org/save/), and submit the URL of you `Source Code` final repository.  You can then follow the archival status of your code [there](https://archive.softwareheritage.org/save/list/).

Once your repository has been archived you can search for its archive location using its URL in Software Heritage. Clicking on the `Permaling tab` and clicking on the two `archived` badges, you can retrieve a markdown code snippet. Use these code snippets in the READ.ME of your `Source Code` repository. This will display the badges on the first page of your repository, allowing anyone visiting it to click on them and get access to its archive on Software Heritage.

MF: do we want to formally archive the `Depository`repo? 


### Archiving software information and additional materials 

As much as possible, the Archiving of additional materials will take place using the open source platforms.

**General software information** 

Regarding general software information as well as pictures and photos, we will use Wikimedia and Wikidata. 
Beware, only items with [free license](https://commons.wikimedia.org/wiki/Commons:Licensing#Acceptable_licenses) are allowed to be archived on Wikimedia. Typically, if the software you are working on is distributed under a free-license (typically an open-source software), the logos or screenshots taken will also be considered as being under free license. 

To start, search Wikidata to see if an item for the software title exists. If no item is found, [create a new item](https://www.wikidata.org/wiki/Special:NewItem). A new item should be created as an _instance_ of one or several larger category. You can typically use a generic _software_ category here, or be more specific: _free software_, _programming languge_, _web browser_ etc.   

An item is made up of different _statements_, which are different block of information linked to that article. Each statement describes a different _property_ of the item. A proprerty is identified with a code starting with letter `P`, which we will refer to later on to let you easily search for a given property. 

Add statements to the Wikidata item based on the codemeta.json (MF: or catalogue file?) file as well as any other available information using properties related to software. You can use the Wikidata item about [Scilab](https://www.wikidata.org/wiki/Q828742) as an example.

Typically you will want to register:
- The different versions of the software and their publication date using the _software version identifier_ property (P348)
- The programming languages using the _programmed in_ property (P277)
- The source code repository URL using (P1324)
- The people or entities who contributed to develop the software using the _developer_ property (P178)

In order to be able to fill in the _developer_ section, you will first need to make sure that the people or entities who developped the software are also referenced in Wikidata. If they're not, you will need to create new Wikidata items first for these people or entity. If you collected pictures of the people who developped the software, add them to their Wikidata page using the _image_ statement(P18). Once this is done you can come back to the software items and fill in the _developer_ statement.   

Using the _Source code repository_ statement (P1324), add the link towards the Software Heritage archived source code. 

MF: there also is a source code respository URL statement. WHich one?
MF: is there a SWH property?
MF: what are the minimum properties we would want to record regarding the software?

(TO DO: elaborate on list of information. Only place where JSON file is used? Then let's just use a simple csv, easier to ediit no?)

**Pictures, photos and videos**

Regarding archiving images and pictures: if there is only one image to archive, you can directly link it to the Wikidata item using a new statement with _image_ property (P18). 
If there are multiple images, you will need to upload them in (Wikimedia Commons)[https://commons.wikimedia.org/wiki/Main_Page], the media database of Wikipedia. In Wikimedia, media are grouped in _Categories_. One media can belong to several categories. 

Start by checking if there already is a Wikimedia category name after your software using the search bar. 
If no result if found, you will be offered to create a new category. Do so and name it after your software (the name can typically be the same as the Wikidata item).  
Then use the [_Wikimedia upload wizard_](https://commons.wikimedia.org/wiki/Special:UploadWizard) to upload your different documents, and link them each time to the right category.

Once this is done, return to the Wikidata software item and use the _Commons category_ statement (P373) to connect the Wikimedia category.


**PDFs**

If you collected any document in PDF format (flyers, diagrams, notes, internal communications, correspondences), you can upload them to Wikimedia in the exact same way as pictures or videos. 
Once this is done, go back the Wikidata item and use the _document file on Wikimedia Commons (P996)_ statement to link these documents to the Wikidata item. 

**Publications**

MF: where shall we archive publications? HAL? Wikimedia

### What shall I do with the content I can't archive on Wikimedia? 

There are different reasons why you may not be able to archive the material you collected on Wikimedia.

**Size issue**

Wikimedia has a maximum upload size of 100 megabytes which can be too restrictive to upload larger files like videos. 

**Copyright issues**

It might be the case that some items you collected are under restricted license. For example, the copyright owner of a picture might agree to the picture beeing used for educational purpose, but not for commercial purpose. In that case you are not allowed to publish it on Wikimedia/Wikidata. 

MF: any other case?

If you are in this situation, here are some hints towards possible alternatives:
- Some science museums might be interested into collecting these digital artefacts ; reach out to them (MF: provide list?)
- If you collected written documents (working notes, etc.), reach out to your national archive 
- If the software was developed in a given insititution, this institution might be interested into collecting related historical artefacts ; reach out to them

MF: any other options?



Present
----------------

Once you have archived the collected materials, you can consider showcasing them in a digital exhibition. In this section we will show you how to leverage a given tool, called [Software Stories](https://stories.softwareheritage.org/).

Software Stories was set up by Software Heritage in collaboration with the sciencestories.io team and the University of Pisa. The Software Stories interface is designed to highlight materials about a software title in a  visual manner, similar to a digital software museum. The engine provides a semi-automatic tool for curators to create the presentation layer of  the Software Heritage Acquisition Process (SWHAP) allowing curators to generate a multimedia overview of a landmark legacy software title.
 
The Software Heritage library is devided into collections. You can either choose to contribute to an exhisting collection (for now Pisa and Inria), or to create a new dedicated collection for your institution. 

MF: do we want to give instructions for people wanting to set up their own instance?

**Create a new collection**

MF: hthis can be done via pub lisher workspace. I think potential users should reach out to us to do so. Contact point?

**Contribute to a collection**

Once you have created a new collection or decided to contribute to an exhisting one, you can start building a new software story.
A story is made up of different _moments_. 

Some moments can be automatically generated base on the information you filled in Wikimedia and Wikidata. You can already preview the automatically generated story using this URL:
https://stories.softwareheritage.org/inria/Q828742. The Q number at the end of the URL should be the reference number of the related wikidata item. 

Since automatically generated moments might not always fit the story you want to narrate, you may choose to build a custom story, mixing automated and custom moments. Here are the main moments we recommend using to build your story. 

- **Wikipedia moment** (_automated_): and embedded iframe if the related Wikipedia entry
- **Blogpost moment** (_custom_): a writtent entry, typically the size of a blogpost. 
- **Timeline moment** (_automated or custom_): shows a timeline of events. Each event is defined by a title, a year, a short description and possibly a picture. The automated version pulls from the dated items in the Wikidata page of the software (typically the release dates of the different versions). 
- **People moment** (_automated or custom_): shows a gallery of contributor's portrait. Each portrait is define by the contributor name, their picture and a short description. The automated version pulls from the _contributor_ section in the Wikidata page of the software.
- **Image moment** (_custom_): shows a chosen picture. The picture has a title, a subtitle and a caption.
- **Video moment** (_custom_): shows a chosen video. The video has a title, a subtitle and a caption.
- **Iframe moment** (_custom_): displays an iframe of a given website. Has a title and subtitle.
- **Software heritage moment** (_custom_): shows a view into the archived source code in the Software heritage archive. Has a title and subtitle.
- **Map moment** (_automated_): shows the different places associated with the software history based on geolocated data in Wikidata.
- **A library moment** (_automated_): displays the publications registered in Wikidata and linked to the software
 
To start building your story, go to the `software_story` folder and open the 'StoryInventory.md' file. In this file, updating the proposed template, register the different moments you want to use in the desired order, as well as the information needed to instantiate each moment. The title of each moment will display on the side bar and will help the viewer navigate the different moments. Note that all the pictures and videos used in a story need to be publicly hosted somewhere in the internet (typically Wikimedia, but not necesseraly). 

MF: do we want to give the option to store pictures in the publisher worspace? 

In the `StoryInventory.md' file we suggest a template based on the work done for a software called Amaya, structured from the more general information regarding Amaya to the most specific:

**General information about the software and the context in which it was created**
- A first **image moment** shows a first view of Amaya and quickly presents what Amaya is about
- A **timeline moment** narrates the bigger story around Amaya, and the link between Amaya and the history of the Wolrd Wide Web.

**Information regarding the people involved in the software development and how they organized**
- A **people moment** introduces Amaya's contributers.
- An **iframe moment** shows a snapshot into Amaya mailing list and shows how Amaya community organized itself.

**Information regarding the software product itself, how it evolved and about its source code**
- Another **timeline** moment shows how Amaya features and design evolved in time
- A **software heritage** moment shows a view into Amaya source code
- Two **image moments** give some statistics and insights on Amaya source code.


MF: What should the process then be? Shall we create the JSON/story ourselves, based on registerd info? Shall we let users build the JSON themselves and send it over to us? Ideally we would build an easy tool to convert the registered info into JSON. Could probably be done using Gsheet...Maybe framaform? 

MF: do we want to provide hosting services for some element of the stories that can't be put on Wikidata? Note that it only works for picture. Unsure what to do with PDFs for instance.

Once the outline of your story is ready, you need to turn it into a JSON file. To do so, we suggest that you start from the automated generated JSON file (MF: ask Kenneth how to get it). Update this JSON file, adding, removing or reorganizing the desired moments. You can find in ANNEXE X (TO DO: create Annexe and add link) how each specific custom moment translates into a JSON code. 

Along the way you can test the rendering of your story by copy-pasting the JSON file [there](https://stories.k2.services/publisher/sandbox/).
Once your JSON file is ready, send it out to the Software Heritage team (TO DO : add contact) to be added to the collection of you choice (MF: is this best process?). 

Iteration
---------

TO DO : to be updated, I don't think adding a simple picture should require clone and pushing etc. 

New material may be discovered after the process has been completed,
triggering an iteration of some of the phases described above. In this
case, we recommend to proceed as follows:

-   if new raw material (non-source code) is found, we have to clone the
    Depository repository and add new items to it. In this way, the
    performed commits will correctly follow the previous ones.

-   if new source code is found, after we collected it in the
    Depository, we have the following cases:

> \(1) The recovered source code is related to a version which is already
> included in the software history.
>
> \(2) The source code represents a completely new version, with respect to
> the software history as it was previously collected.

We are not finished yet, since in both cases the SourceCode repository
is no longer consistent with the collected source code, and we have to
recreate it, performing the following steps:

-   Delete the SourceCode repository.

-   Move back to the Workbench and according to the current case:

> if (1), add the source code to the correct version.
>
> if (2), add the new version folder with the related metadata.

-   Recreate the software history as for the first iteration.

<a name="runningexample"/>

A walkthrough on a running example {#sec:walkthrough}
==================================

In this section we will show the process at work on one of the first
source code acquired by the SWHAP\@Pisa project, the CMM conservative
garbage collector for C++ that was initially developed for project PoSSo
(Polynomial System Solver) and later became the basis for the Java GC
and the Oak GC [\[7\]](https://www.zotero.org/google-docs/?tVCOZn).
Since it has evolved through various versions, CMM is a good workbench
for SWHAPPE and an appropriate example to show how to use the tools.

### Starting the process

The acquisition process of the CMM software started informally when one
of the authors, still active in the Computer Science department, learned
about the SWHAP project, and proposed to search for the source code and
make it available to the project. Shortly after, we received a mail
message with all the sources, as well as the associated research
article. Since the materials were already in digital form, the process
does not involve a Warehouse.

### Instantiation

![Instantiation of the template](./media/temp_inst.png){#fig:temp_inst}

We instantiate on GitHub the SWHAP repository template[^8] into a new
repository[^9], that we name "CMM-Workbench". This action, as most of
the following ones, can be performed through the user interface (as
shown in Figure {@fig:temp_inst}), or programmatically through the GitHub API.

It has the same directory structure as SWHAP-Template, as shown in Figure
{@fig:template}.

![Instantiated workbench for CMM.](./media/cmm_wb_inst.png){#fig:cmm_wb_inst}

To facilitate the search of the created repository, we add the 
"software-heritage", "workbench" and "swhappe" tags, as shown in Figure
{@fig:workbench_tags}.

![Tags for the workbench for CMM.](./media/workbench_tags.png){#fig:workbench_tags}

To start working, we create a local copy on our computer, cloning this
repository[^10]. By clicking on the green button "clone or download"
(Figure {@fig:cmm_wb_inst}), we get a link that we can use for this purpose in the
following command from the command line:

    git clone https://github.com/Unipisa/CMM-Workbench.git

Now, we have a local copy of the CMM-Workbench, and we can, first of
all, update the README.md file with the correct name and description of
the acquisition, and synchronize it with the remote repository:

	git add README.md
	git commit README.md -m "Updated README"
	git push

We are now ready to start the collect phase.

### Upload files in raw\_materials

Here we fill the local folders with the collected material. In the case
of CMM, we got a tar.gz file containing the various versions of the
software, organized according to an ad-hoc versioning system. In the
`raw_materials` folder we store also the paper presenting the software
and the email that Giuseppe Attardi sent us along with them,
and we commit all these new contents:

	git add raw_materials
	git commit -m "Added raw material"
	git push

The resulting state of `raw_materials` is shown in Figure {@fig:cmm_raw}.

![CMM raw materials on GitHub.](./media/cmm_raw.png){#fig:cmm_raw}

### Unpack the source code in the browsable\_source directory 

In order to get a browsable version of the source code, we decompress
the .tar.gz archive into the `browsable_source` folder

    tar -xzf raw_materials/cmm.tgz -C browsable_source

and commit the changes as done for the `raw_materials` folder

    git add browsable_source
    git commit -m "Added browsable source"
    git push

We can see the resulting state of the repository in Figure {@fig:cmm_brows}.

![CMM browsable sources on GitHub.](./media/cmm_brows.png){#fig:cmm_brows}

Finally, in preparation for the next phase, curation, we copy the files
contained in `browsable_source` into the `source` folder[^11].

    cp -r browsable_source source

Again, we stage changes as in the previous two steps.

	git add source
	git commit -m "Added source"
	git push

### Create Depository

The Depository has been filled, hence we create the Depository as an
orphan branch, i.e., with no references to the parent repository, using
the checkout command:

    git checkout --orphan Depository

As a result, we moved to the Depository branch. Here we modify the
README (guidelines to fill the README file are given in the template)
and remove the `source` and `metadata` folder, since they are not
interesting for this area:

    git rm -rf source metadata

We stage the last modifications and then push to the remote repository.

	git add .
	git commit -m "Added raw materials from master branch"
	git push --mirror origin

We are almost ready to move the Depository to a new repository: before that,
however, we have to create the new remote repository on GitHub (Figure
{@fig:cmm_depo_creat} shows how to do this using the web interface; here too one
could use the GitHub API instead).

![CMM-Depository creation.](./media/cmm_depo_creat.png){#fig:cmm_depo_creat}

To facilitate the search of the created repository, we add the 
"software-heritage", "depository" and "swhappe" tags (in the same way of 
what done for the workbench as shown in Figure
{@fig:workbench_tags}).


### Final depository

Finally, we can perform a push and fill the remote repository.

    git push https://github.com/Unipisa/CMM-Depository.git +Depository:master

We can check the resulting repositories via the web interface (Figure
{@fig:cmm_repos}): CMM-Depository is now filled with the pushed materials.

![The CMM repositories at the end of the collect phase.](./media/cmm_repos.png){#fig:cmm_repos}

The Depository branch is then removed from the Workbench, to avoid
having multiple copies that may diverge. Should new materials became
available, a new iteration of the process should start, re-initializing
the Workbench with the information in the Depository.

	git checkout master
	git push --delete origin Depository
	git branch -D Depository

### Curate the code

#### Version History

In this phase, the curation team should clean up the code and organize
it in separate folders, one per version. In the case of CMM, the code is
already structured this way, as shown in Figure
{@fig:cmm_repos}, so there is nothing
to do.

In order to support the (re-)creation of the development history of the
original project, we prepare the `version_history.csv` file with the
appropriate metadata (see Figure {@fig:cmm_vers_hist}).

![The version history for CMM](./media/cmm_vers_hist.png){#fig:cmm_vers_hist}


#### Codemeta

Contextually we fill the `metadata/codemeta.json` template file (see Figure {@fig:cmm_json}, left) with metadata according to [CodeMeta guidelines](https://codemeta.github.io/terms/) obtaining what shown in  (see Figure {@fig:cmm_json}, right).

![CMM instantiation (right) of codemeta.json template (left)](./media/cmm-codemeta.png){#fig:cmm_json}


#### License

To conclude the curation phase, we have to identify licensing information.

If we find a file specyfing the licence in the source code, we have to copy its content in the `metadata/LICENCE` file.  Otherwise, in the case there is no licensing file in the source and we obtained license information in other finds, we fill `metadata/LICENCE` according to the [SPDX standard](https://spdx.org/licenses/).


### (Re-)Create the development History

The development history can now be (re-)created either by issuing manually (i.e. for each version directory) the appropriate git commands, or by using a specialised tool.

##### Manually

We have to create a clean dedicated SourceCode branch

	git checkout --orphan SourceCode
	git rm -rf *

Then, for every directory containing a version of the source code, in
chronological order, we copy its contents from the `master` branch to the
current branch, and commit it with the appropriate metadata.

For example, for the directory 1.9 of the CMM sources, here is how
we copy the source contents into our branch:

	git checkout master -- source/1.9
	mv source/1.9/* .
	rm -rf source

Then we use the following template to create manually an individual commit/release:

	export GIT_COMMITTER_DATE="YYYY-MM-DD HH:MM:SS"
	export GIT_COMMITTER_NAME="Commiter Name"
	export GIT_COMMITTER_EMAIL="email@address"
	export GIT_AUTHOR_DATE="YYYY-MM-DD HH:MM:SS"
	export GIT_AUTHOR_NAME="Author Name"
	export GIT_AUTHOR_EMAIL=<email@address>"
	git add -A
	git commit -m "Commit Message Here"
	
We also need to add an annotated tag to this version. For version 1.9 of CMM, here is
the command we used, you can adapt it to your needs:

	git tag -a 1.9 -m "Version 1.9"

Finally, we clean up the directory before importing a new version

    git rm -rf *

##### With DT2SG

And here is an example using the [[DT2SG]{.underline}](#t3q5s097euy)
tool

    dotnet ./DT2SG/DT2SG_app.dll
      -r SWHAP-EXAMPLE/CMM-Workbench
      /source/cmm/
      -m SWHAP-EXAMPLE/CMM-Workbench
      metadata/version_history.csv

As a result we will find in our local repository a new local branch
containing the rebuilt version history, that is shown in Figure {@fig:cmm_sh}.

![An excerpt of the synthetic history of CMM.](./media/cmm_sh.png){#fig:cmm_sh}

### Create the final repository

We move back to the master branch using the checkout command, then
remove `raw_materials`, `browsable_source` and `source` from it:

	git rm -rf raw_materials browsable_source source

We now create the README.md file, add it and commit changes:

	git add README.md
	git commit -m "Final repository created"

Now we create the final remote repository, that we call "CMM", see
Figure {@fig:create_fin}, and we push the relevant branches (and tags) to it.

![The creation of the final repository.](./media/create_fin.png){#fig:create_fin}

    git push --tags git@github.com:Unipisa/CMM.git +master:master +SourceCode:SourceCode

To facilitate the search of the created repository, we add the 
"software-heritage", "archive" and "swhappe" tags (in the same way of 
what done for the workbench as shown in Figure
{@fig:workbench_tags}).

Figures {@fig:cmm_final}, {@fig:cmm_depo}, {@fig:cmm_wb} show the final result of CMM, their Depository and
Workbench.

![The final CMM repository.](./media/cmm_final.png){#fig:cmm_final}

![The final CMM Depository.](./media/cmm_depo.png){#fig:cmm_depo}

![The final CMM Workbench.](./media/cmm_wb.png){#fig:cmm_wb}

### Publish the repositories and trigger Software Heritage acquisition

In order to publish the Depository and SourceCode repositories we have to set
their visibility to "public", either through GitHub web interface or using the
GitHub API as follows:

    curl -s -H 'Authorization: token '$auth_token'' 
     -H "application/vnd.github.baptiste-preview+json" 
     --data '{"private": false}'
     -X PATCH https://api.github.com/repos/$org/$repository_archive

where **\$repository\_archive** is CMM or CMM-Depository and **\$auth\_token**
is the authorizzarion token. As a result, the code is now publicly visible at

[**[https://github.com/Unipisa/CMM/]{.underline}**](https://github.com/Unipisa/CMM/)

Finally, we trigger the archival of this repository in Software
Heritage, using the "save code now" functionality. This can be done
using the web interface at
**[[https://save.softwareheritage.org]{.underline}](https://save.softwareheritage.org)**,
or by connecting to the API on the command line as follows:

    curl -s -X POST https://archive.softwareheritage.org/api/1/origin/save/git/url/$repo_url

where  **\$repo_url** is `https://github.com/Unipisa/CMM/`.

A short time after (this may go up to a few hours for huge repositories), the archived software will be visible in the Software Heritage archive
at 

[**[https://archive.softwareheritage.org/browse/origin/https://github.com/Unipisa/CMM]{.underline}**](https://archive.softwareheritage.org/browse/origin/https://github.com/Unipisa/CMM)

### Fill the Workbench metadata

In order to preserve information about the curation process we have to fill the template files under the Workbench `metadata`.
Starting from some template files (see Figure {@fig:cmm-metadata}, left), we obtain what shown in Figure {@fig:cmm-metadata}, right.


![The CMM Metadata.](./media/cmm-metadata.png){#fig:cmm-metadata}


In particular we should create :

+ a catalogue : `metatdata/catalogue.md`, where each item in the `raw_materials` should have a record describing its origin, the possible warehouse, their authors and collectors along with a description. The result of `tree -a` on `raw_materials` should be included;
+ a journal :`metatdata/journal.md`, where each collect and curate action should be annotated;
+ an actors registry: `metatdata/actors.md`, every person taking part in the process should be registered, with their roles, affiliations and contact information;
+ a notepad : `metatdata/journal.md` where write possible information not covered by previous files.


<a name="appendixa"/>

Appendix A - General Motivation for using Git and GitHub
================================

The choice of Git as the designated tool for traceability and historical
accuracy, and of GitHub as the unifying platform to support the SWHAP
process proceeds from several considerations that we review below.

First of all we discuss the choice of *Git*. One of the key requirements
set forth for SWHAP is the need to ensure *full traceability* of the
operations performed on the recovered digital assets. This means that
each of the virtual places must provide means to record the history of
the modifications made to the digital assets, with information on *who
did what and when*. It is very convenient to use the same tool in all of
the virtual places of the process, as this reduces the learning effort
and streamlines the process. All modern version control systems provide
the needed functionality, and we have chosen *Git* as our standard tool,
as it is open source (another of our requirements) and broadly adopted.
*Git* is a powerful tool, and requires some expertise to make the most
out of it. However, a large part of the process is scriptable, and this
will hide the underlying complexity to the final user, which can then
focus on the main issue: curating and preserving the code and its
history.

Another important motivation for our choice of Git is the ability to
support *historical accuracy*, i.e., providing a faithful view of the
history of both the recovered source code and the acquisition process,
as prescribed by the SWHAP key requirements. This is properly
accommodated by the commit and versioning mechanisms offered by Git,
that allow to separate authors from committers: this way on can record
both the story of the original software and the story of its curation.

Finally, we had to choose one of the many online platforms that allow to
collaborate using *Git*. GitHub, GitLab.com and Bitbucket are the most
known ones and are all regularly archived in Software Heritage, so that
*long term availability* of their contents is preserved, no matter which
one of these platforms is chosen.

Among all these platforms, GitHub is by far the most popular and active,
and is also the platform adopted by the University of Pisa, so it was a
natural choice, and we believe this will make the learning curve gentler
for most SWHAP adopters.

In the following, we provide detailed guidelines to instantiate the
process using Git on GitHub. We think that most of what is described in
the guide can be easily adapted to any of the other *Git*-based
collaborative platforms.

<a name="appendixb"/>

Appendix B - Tools that can help
================================

Here is a list of tools for code acquisition and curation that have been
used during the initial experimentation of SWHAPPE:

-   Used/suggested OCR:

    -   Tesseract
        ([[https://github.com/tesseract-ocr/]{.underline}](https://github.com/tesseract-ocr/)).
        It can be installed and used from command line. An API is also
        provided to use the OCR in a script.

    -   OCR.space
        ([[https://ocr.space/]{.underline}](https://ocr.space/)).
        Online OCR and free API.

-   Dedicated scripts:

    -   DT2SG-Directory Tree 2 Synthetic Git
        ([[https://github.com/Unipisa/SWHAP-DT2SG]{.underline}](https://github.com/Unipisa/SWHAP-DT2SG)).
        Creates the synthetic history of the software.

    -   SWHAP-EXAMPLE([[https://github.com/Unipisa/SWHAP-EXAMPLE]{.underline}](https://github.com/Unipisa/SWHAP-EXAMPLE))

Many other tools exist, and are currently under construction and will be
loaded on the SWHAPPE repository on GitHub.

<a name="appendixc"/>

Appendix C - A few tips on Github
=================================

*Git* is a distributed version-control system for tracking changes in
source code during software development. Here, we provide some
references on *Git* and the GitHub platform.

For a review on GitHub key concepts, you can see the following glossary:

[[https://help.github.com/en/articles/github-glossary]{.underline}](https://help.github.com/en/articles/github-glossary).

In order to fully exploit Github, you should install *Git* on your pc:

[[https://git-scm.com/book/en/v2/Getting-Started-Installing-Git]{.underline}](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

This will allow you to use Git from command line. Even if it can be less
intuitive, it's more powerful than working with the web interface: for
instance, you can upload folders and files of any size, without the
limitations of the latter. Furthermore, using Git commands allows for
instantiating the process on any Git supported platform. For a review of
the commands, please check the manual: [[
https://git-scm.com/docs]{.underline}](https://git-scm.com/docs).

As an alternative, if you're using a Mac or Windows, you can download
Github Desktop, which provides a comfortable GUI: [[
https://desktop.github.com/]{.underline}](https://desktop.github.com/).

For more information about the commit mechanism and how to see the log
of changes, please see the following link:
[[https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History]{.underline}](https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History).
	
To implement the process and separate areas, we chose to create two
different branches (Depository and SourceCode) and get the corresponding
repositories from them. Each branch has an independent commit history,
thus the history of Depository and SourceCode is kept clean and easy to
consult. Here is a discussion on how to see the branch history:
[[https://stackoverflow.com/questions/16974204/how-to-get-commit-history-for-just-one-branch]{.underline}](https://stackoverflow.com/questions/16974204/how-to-get-commit-history-for-just-one-branch).

<a name="bibliography"/>

Bibliography
============

[^1]: This is a complex issue, that may need to be handled according to
    country-specific regulations and is out of the scope of the present
    document. In the United States, one may leverage the "fair use"
    doctrine, see for example the detailed analysis presented in
    [[https://www.softwarepreservationnetwork.org/bp-fair-use/]{.underline}](https://www.softwarepreservationnetwork.org/bp-fair-use/)

[^2]: See for example
    [[https://collectionstrust.org.uk/spectrum/]{.underline}](https://collectionstrust.org.uk/spectrum/).

[^3]: See for example in
    [[https://collectionstrust.org.uk/spectrum/]{.underline}](https://collectionstrust.org.uk/spectrum/).

[^4]: More information on Git *branches* can be found in [[Appendix
    B]{.underline}](#p6ks12u37m17).

[^5]: See the documentation on
    [[https://help.github.com/en/articles/creating-a-repository-from-a-template]{.underline}](https://help.github.com/en/articles/creating-a-repository-from-a-template)

[^6]: See the documentation on
    [[https://help.github.com/en/articles/cloning-a-repository]{.underline}](https://help.github.com/en/articles/cloning-a-repository)

[^7]: See the documentation on
    [[https://help.GitHub.com/en/articles/adding-a-file-to-a-repository-using-the-command-line]{.underline}](https://help.github.com/en/articles/adding-a-file-to-a-repository-using-the-command-line).

[^8]: [[https://github.com/Unipisa/SWHAP-TEMPLATE]{.underline}](https://github.com/Unipisa/SWHAP-TEMPLATE)

[^9]: The repository can be either public or private according to the
    policy of the acquisition team.

[^10]: See [[Appendix B]{.underline}](#p6ks12u37m17) for a brief
    discussion on the convenience of working locally, rather than
    remotely via the web interface.

[^11]: Here shown with unix command line.

