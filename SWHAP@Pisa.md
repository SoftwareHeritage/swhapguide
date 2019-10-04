---
title: 'The Software Heritage Acquisition Process'
---

Laura Bussi

Dept. of Computer Science, University of Pisa

[[l.bussi1\@studenti.unipi.it]{.underline}](mailto:l.bussi1@studenti.unipi.it)

Roberto Di Cosmo

Software Heritage, Inria and University of Paris

[[roberto\@dicosmo.org]{.underline}](mailto:roberto@dicosmo.org)

Carlo Montangero

Dept. of Computer Science, University of Pisa

[[carlo\@montangero.eu]{.underline}](mailto:carlo@montangero.eu)

Guido Scatena

Dept. of Computer Science, University of Pisa

[[guido.scatena\@unipi.it]{.underline}](mailto:guido.scatena@unipi.it)

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
also "be written for humans to read"
[\[1\]](https://www.zotero.org/google-docs/?D1fWSV), and "provides a
view into the mind of the designer"
[\[2\]](https://www.zotero.org/google-docs/?FKl8rZ).

As stated in the Paris Call on Software Source code as Heritage for
sustainable development
[\[3\]](https://www.zotero.org/google-docs/?G5w9mv), from the
UNESCO-Inria expert group meeting, it is essential to preserve this
precious technical, scientific and cultural heritage over the long term.

Software Heritage is a non-profit, multi-stakeholder initiative,
launched by Inria in partnership with UNESCO, that has taken over this
challenge. Its stated mission is to collect, preserve, and make readily
accessible all the software source code ever written, in the Software
Heritage Archive. To this end, Software Heritage designed specific
strategies to collect software according to its nature
[\[4\]](https://www.zotero.org/google-docs/?t96cvU).

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
reconstructing the history of Unix
[\[5\]](https://www.zotero.org/google-docs/?6rgDgO) and the source code
of the Apollo Guidance Computer
[\[6\]](https://www.zotero.org/google-docs/?gXUwvR).

This document presents the first version of SWHAP, the ***SoftWare
Heritage Acquisition Process*** to rescue, curate and illustrate
landmark legacy software source code, a joint initiative of Software
Heritage and the University of Pisa, in collaboration with UNESCO.

The next section provides an *abstract* view of SWHAP, its steps,
documents and resources. No specific assumptions on the *tools,
platforms and technologies* that may be used to enact it are made, but
some requirements are made explicit.

The last section describes how the abstract process is implemented at
the University of Pisa by leveraging the Git toolset and the GitHub
collaborative development platform. This implementation is named SWHAPPE
(SWH Acquisition Process Pisa Enactor) in this document.

This document is complemented by online resources available at
[[https://www.softwareheritage.org/swhap]{.underline}](https://www.softwareheritage.org/swhap).
This includes an annotated example, using a real world medium-sized
software project [\[7\]](https://www.zotero.org/google-docs/?wXnfzI), as
well as a list of tools that may be helpful for other landmark legacy
software source code rescue teams.

Revised versions of this document will be published as needed.

The process, abstract view
==========================

This section describes SWHAP, the acquisition process for software
artifacts at an *abstract* level, that is, without making specific
assumptions on the *tools, platforms and technologies* that may be used
to perform the various operations described here.

Phases
------

The activities involved in the acquisition process can be organized in
the following four phases, of which the first one is *conservative*,
i.e., it is devoted to save the raw materials that the other phases will
build upon. Figure 1 provides a pictorial view of the process, its
phases, data stores and roles.

### **Collect** 

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

### Curate

The purpose of this phase is *to* *analyze, cleanup and structure* the
raw material that has been collected.

Preparing software source code for archival in **Software Heritage**
requires special care: the source code needs to be *cleaned up*,
different *versions* with their *production dates need to be
ascertained*, and the *contributors need to be identified* in order to
build a *faithful history of the evolution* of the software over time.

Also, proper *metadata* should be created and made available alongside
the source code, providing all the key information about the software
that is discovered during the curation phase. We recommend to use the
vocabulary provided by **CodeMeta** as an extension to schema.org (see
[[https://codemeta.github.io/terms/]{.underline}](https://codemeta.github.io/terms/));
this includes the software runtime platform, programming languages,
authors, license, etc.

Particular care is required to *identify the owners* of the different
artifacts, and *obtain if needed the necessary authorizations* to make
these artifacts publicly available[^1].

### Archive

The purpose of this phase is to contribute the curated materials to the
infrastructures specialized for each kind of materials: ***Software
Heritage*** for the *source code*, ***Wikimedia*** for *images or
videos*, ***open access repositories*** for *research articles*,
***Wikidata*** for *software descriptions and properties*, and so on.

Well established guidelines are available for contributing materials to
Wikimedia (see
[[https://commons.wikimedia.org/wiki/Commons:First\_steps/Contributing]{.underline}](https://commons.wikimedia.org/wiki/Commons:First_steps/Contributing))
and Wikidata (see
[[https://www.wikidata.org/wiki/Wikidata:Data\_donation]{.underline}](https://www.wikidata.org/wiki/Wikidata:Data_donation)
), hence we will focus primarily on curating and contributing the
software source code to Software Heritage, a process that is new and may
require rather technical steps.

### **Present** 

The purpose of this phase is to create dedicated presentations of the
curated materials.

Once the curated materials are made available in the dedicated
infrastructures, it is possible to use it to create presentations for a
variety of purposes: special events, virtual or physical expositions for
museums or websites.

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

This figure is found
[[here]{.underline}](https://drive.google.com/open?id=1SM2W4TzLXX_P_RIezcpgUFaKCcJ_5uFn)

Fig. 1. Source code acquisition process.

Resources needed by the process
-------------------------------

As any process supported digitally, SWHAP needs both human and technical
resources to be enacted.

First of all, several data stores and working areas are needed, to save
and make public the intermediate products, which are themselves of
value, as already mentioned, and to pass the collected information
across the phases. These are shown in the lower part of Figure 1, and
are summarized here.

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

With respect to the human resources, several roles are needed to enact
the process, as indicated in the top part of fig. 1. Here is a short
summary of the involved capabilities.

### Collector

Searches and receives the raw materials. Identifies, classifies and
separates source code and ancillary materials.

### Deposit engineer

Masters the procedures to archive physical and digital materials, in the
local context.

### Curator

Prepares the version history, identifying the authors and other
contributors. Provides a context to the source code, choosing among the
ancillary materials.

### Archive engineer

Masters the procedures to transfer the curated source code to SWH and to
publish the context in the Wikies.

### Presentation designer and Web engineer

These are out of the scope of this document, and are mentioned only to
note that, though most of the presentations of the archived software
will be on line, the abilities to design the contents of a presentation
should be considered separately from the technical ones.

**[Remark]{.underline}** the technical resources described above in
abstract terms, may be implemented in a variety of ways. For example,
one can imagine a single Depository for all the software projects that
are collected, but it is also possible to use a separate Depository for
each software project, and the same holds for all the other areas.

**[Remark]{.underline}** the roles indicated above need not necessarily
be played by different persons, e.g., Collector and Curator may be the
same person, nor be played by a unique person, e.g., there can be
several cooperating Curators, in case of large systems.

Implementation requirements
---------------------------

The abstract process may be implemented using different tools, platforms
and technologies, as long as the following key requirements are
satisfied.

### Long term availability

The places where the artefact (both raw and curated) are stored must
provide sufficient guarantees of availability over the long term. These
places may be physical (warehouses), or logical (depositories).

### Historical accuracy

Any supporting implementation should support the faithful recording of
the authorship of the source code as well as of the reconstruction
process, e.g., via a flexible versioning system.

### Traceability

It must be possible to trace the origin of each of the artifacts that
are collected, curated and deposited. For physical materials, we refer
to common practice[^3]. For digital artifacts, it is recommended to keep
a *journal of all the operations* that are performed, and to automate
them as much as possible, as the collection and curation process may
require several iterations.

### Openness

Any supporting implementation should be based on open and free tools and
standards.

### Interoperability 

Any supporting implementation should provide support for the cooperation
and coordination of the many actors playing the many roles of the
acquisition process.

 
=

The process, a concrete view
============================

In order to implement SWHAP, the first step is to decide how to
instantiate the needed storage and working areas: Warehouse, Depository,
Curated source code deposit and Workbench.

The Warehouse is quite similar to the usual storage area where museums
preserve their collections; it will need to be set up in a specific
physical location, following the well established process for museums,
so we will not cover it in this guide.

The other areas, which are virtual spaces, can very well be set up using
distinct digital platforms, but it is also possible to instantiate all
of them on a single platform.

This choice was made for the SWHAP Pisa Enactor (SWHAPPE), the
implementation adopted by the SWHAP\@Pisa project: SWHAPPE exploits the
collaborative platform [[GitHub]{.underline}](https://github.com/) (
[[https://github.com/]{.underline}](https://github.com/) ) as a host
platform for all the virtual support areas of the process.

The solutions adopted in SWHAPPE are described in detail in this
section, together with their rationale.

General Motivation for using Git and GitHub
-------------------------------------------

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

SWHAP - GitHub correspondence
-----------------------------

SWHAPPE is a straightforward implementation of the abstract process,
which concretizes the (logical) areas described
[[above]{.underline}](#v3wi5289omx) by means of *repositories* in
GitHub: there are three repositories for each source code acquisition,
one for each area of the abstract process:

> *Workbench* repository, to implement the Workbench, i.e. a working
> area where one can temporarily collect the materials and then proceed
> to curate the code;
>
> *Depository* repository, to implement the Depository, where we can
> collect and keep separated the raw materials from the curated source
> code;
>
> *Source Code* repository, to implement the Curated source code
> deposit, where we store the version history of the code; this version
> history is usually "synthetic", rebuilt by the curation team, for old
> projects that did not use a version control system.

Let's remark that SWHAPPE has *different* Workbench and Depository
repositories for each code acquisition, but it would also be possible to
use a single Workbench repository and/or a single Depository repository
to work on all the collected software, provided one maintains a
well-organised directory structure which keeps the codes separated. On
the other hand, we *need* a Source Code repository for each software
project, to be actually ingested in the Software Heritage archive.

Process overview
----------------

GitHub features *template* repositories that can be instantiated
whenever needed (see

[[https://help.github.com/en/articles/creating-a-template-repository]{.underline}](https://help.github.com/en/articles/creating-a-template-repository)).
We used this feature in SWHAPPE, and designed a repository,
SWHAP-TEMPLATE, that embodies the core support to enact the process. Its
structure and use is shown in figure 2. In the picture and in the
following *SWName* is a variable that takes the name of the acquired
code as its value at each instantiation.

Once SWHAP-TEMPLATE has been instantiated, the *SWName-Workbench*
repository so created need to be cloned to the user's machine, so that
he can work on the collected files locally - the Git clone mechanism
ensures that these changes can be safely moved to the original
repository, for publication and sharing with other actors in the
acquisition.

We create two dedicated *branches*[^4], that allow to track separately
the operations that will be later moved to the Depository and the
Development History Deposit: *Depository*, to contain the raw materials
and the browsable sources as well as the metadata, and *SourceCode* to
organize the source code in view of the reconstruction of its
development history. Finally, the *Depository* and *SourceCode* branches
become two repositories: the latter is shipped to the Software Heritage
archive, the former is published by the organization promoting the
acquisition.

This figure is found
[[here]{.underline}](https://drive.google.com/open?id=1BJrTsX5fIupZCZVIrWF15sFoJYEgEe3u)

Figure 2. Overview of the SWHAPPE process.

The SWHAP template
------------------

The structure of the template is shown in fig. 3.

First of all, we can see a correspondence between the Depository
presented in the process and the area provided by raw\_materials and
browsable\_source: indeed, these two folders will be moved in order to
instantiate the Depository, once they have been loaded, the former with
the original materials, just as they have been found or submitted, the
latter with a first revision of the source code, made accessible through
the GitHub web interface, e.g., archives should be decompressed, code
transcribed from pictures, etc.

The source folder is provided as the starting point for the creation of
the Source Code *Git* repository, in the curation phase. The curator has
to recognize each major version of the code, and refactor it accordingly
- one separate folder per each version. To create the Source Code
Deposit, however, we exploit the *commit* and *versioning* mechanisms of
*Git*.

As for the metadata folder, here we record all the information about the
software and the acquisition process (catalogue, actors, journal, etc.).
The guidelines to fill this part are given in the template itself.

This figure is found
[[here]{.underline}](https://drive.google.com/open?id=1ditGq2NrcjhZU-d_lLuIjEyjCWW6b4ihY9_p9kzjlgI)

Figure 3. Top structure of the Template repository.

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

### Collect phase

> **Upload files in raw\_materials**
>
> All the collected files must be uploaded in the raw\_materials folder.
>
> If there are physical materials, folder raw\_materials should contain
> a reference to the related Warehouse, that may follow the Spectrum
> guidelines [\[8\]](https://www.zotero.org/google-docs/?X25TEk).
>
> **Move the source code to browsable\_source**
>
> All the source code files must then be put into the browsable\_source
> folder.
>
> If the raw material is an archive, you should unpack it locally and
> then upload the result on GitHub by performing a push[^7].
>
> If the code was only available in non digital form (e.g. printed
> listings), you can either transcribe it manually, or use a scanner and
> an OCR (optical character recognition) tool to parse it. See
> [[Appendix
> A]{.underline}](http://www.corestandards.org/assets/Appendix_A.pdf)
> for a list of suggested tools.
>
> Particular care should be used to ensure the files in
> browsable\_source have the correct extension: scanner and OCR usually
> generate files with a generic .txt extension, that must be changed to
> the extension typically used for the programming language they
> contain.
>
> Note that, at this stage, we are not interested in precise information
> about the versions of the software. The purpose is to have
> machine-readable documents.
>
> Finally, in preparation for the curation phase, you may want to copy
> the files in browsable\_source to the source folder.
>
> **Create Depository**
>
> The next step is to create the branch Depository, containing only the
> folders raw\_materials and browsable\_source, together with the
> metadata updated to this point. Then, create the Depository repository
> from this branch.

### Curate phase

**Curate the source code**

> Once the Depository creation is complete, you can move back to the
> source folder in the master branch. Here you have to divide and number
> the versions, putting the files of each one in a dedicated folder and
> determining who did what and when.
>
> In practice, this means that *for each version of the software* you
> need to ascertain:

-   the *main contributing author*,

-   the *exact date* of the release of this particular version

> This information should be consigned in a dedicated metadata file,
> version\_history.csv, having the following fields:

-   directory name name of the directory containing the source code of
    > this version

-   author name name of the main author

-   author email email of the main author (when available)

-   date original date when this commit/version was made

-   curator name name of the curator person or team

-   curator email the reference email of the acquisition process

-   release tag a tag name if the directory contains a release,

empty otherwise

-   commit message text with brief note from the curation team

> **(Re-)Create the Development History**
>
> Now we are ready to (re-)create the development history of the
> software. First you need to create a branch Source Code, with the
> *src* folder.
>
> Then, you can proceed in two ways:

-   *manually*: using the *Git* commands to push the successive versions
    > into the source folder, reading the information collected in the
    > file version\_history.csv to set the fields for each version to
    > the values determined during the curation phase;

-   *automatically*: using a tool that reads the information from
    > version\_history.csv and produces the synthetic history in a
    > single run; one such tool has been developed, DT2SG
    > ([[https://github.com/Unipisa/DT2SG]{.underline}](https://github.com/Unipisa/DT2SG))
    > , and you can see a running example in the next section.

> The result will be a branch that materializes the development history
> of the software via Git commits and releases.
>
> **Create the final repository**
>
> Finally you can create the "official" software repository, taking the
> versions history from the src branch and the metadata from the master
> branch.

Iteration
---------

New material may be discovered after the process has been completed,
triggering an iteration of some of the phases described above. In this
case, we recommend to proceed as follows:

-   if new raw material (non-source code) is found, we have to clone the
    > Depository repository and add new items to it. In this way, the
    > performed commits will correctly follow the previous ones.

-   if new source code is found, after we collected it in the
    > Depository, we have the following cases:

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

 
=

A walkthrough on a running example
==================================

In this section we will show the process at work on one of the first
source code acquired by the SWHAP\@Pisa project, the CMM conservative
garbage collector for C++ that was initially developed for project PoSSo
(Polynomial System Solver) and later became the basis for the Java GC
and the Oak GC [\[7\]](https://www.zotero.org/google-docs/?tVCOZn).
Since it has evolved through various versions, CMM is a good workbench
for SWHAPPE and an appropriate example to show how to use the tools.

#### Starting the process

The acquisition process of the CMM software started informally when one
of the authors, still active in the Computer Science department, learned
about the SWHAP project, and proposed to search for the source code and
make it available to the project. Shortly after, we received a mail
message with all the sources, as well as the associated research
article. Since the materials were already in digital form, the process
does not involve a Warehouse.

#### Instantiation

We instantiate on GitHub the SWHAP repository template[^8] into a new
repository[^9], that we name "CMM-Workbench". This action, as most of
the following ones, can be performed through the user interface (as
shown in fig. 4), or programmatically through the GitHub API.

![](./media/image9.png){width="4.769792213473316in"
height="3.133439413823272in"}

Figure 4. Template instantiation.

It has the same directory structure as SWHAP-Template, as shown in fig.
5.

![](./media/image16.png){width="6.390625546806649in"
height="4.05405293088364in"}

Figure 5. Instantiated workbench for CMM.

To start working, we create a local copy on our computer, cloning this
repository[^10]. By clicking on the green button "clone or download"
(fig. 5), we get a link that we can use for this purpose in the
following command from the command line:

**git clone https://github.com/Unipisa/CMM-Workbench.git**

Now, we have a local copy of the CMM-Workbench, and we can, first of
all, update the README.md file with the correct name and description of
the acquisition, and synchronize it with the remote repository:

**git add README.md**

**git commit README.md -m "Updated README"**

**git push**

We are now ready to start the collect phase.

#### Upload files in raw\_materials

Here we fill the local folders with the collected material. In the case
of CMM, we got a tar.gz file containing the various versions of the
software, organized according to an ad-hoc versioning system. In the
raw\_materials folder we store also the paper presenting the software
and the email that Giuseppe Attardi sent us along with them,

and we commit all these new contents:

**git add raw\_materials**

**git commit -m "Added raw material"**

**git push**

The resulting state of raw\_materials is shown in figure 6.

![](./media/image8.png){width="6.695833333333334in"
height="2.361111111111111in"}

Figure 6. CMM raw materials on GitHub.

#### Unpack the source code in the browsable\_source directory 

In order to get a browsable version of the source code, we decompress
the .tar.gz archive into the browsable\_source folder

**tar -xzf raw\_material/cmm.tgz -C browsable\_source**

and commit the changes as done for the raw\_materials folder

**git add browsable\_source**

**git commit -m "Added browsable source"**

> **git push**

![](./media/image5.png){width="6.695833333333334in"
height="5.555555555555555in"}

Figure 7. CMM browsable sources on GitHub.

Finally, in preparation for the next phase, curation, we copy the files
contained in browsable\_source into the source folder[^11].

> **cp -r browsable\_source source**

Again, we stage changes as in the previous two steps.

> **git add source **
>
> **git commit -m \"Added source\"**
>
> **git push**

#### Create Depository

The Depository has been filled, hence we create the Depository as an
orphan branch, i.e., with no references to the parent repository, using
the checkout command:

**git checkout \--orphan Depository**

As a result, we moved to the Depository branch. Here we modify the
README (guidelines to fill the README file are given in the template)
and remove the source and metadata folder, since they are not
interesting for this area:

**git rm -rf source metadata**

We stage the last modifications and then push to the remote repository.

**git add .**

**git commit -m "Added raw materials from master branch"**

**git push \--mirror origin**

We are almost ready to move the Depository to a new repository: before
that, however, we have to create the new remote repository on GitHub
(fig. 8 shows how to do this using the web interface; here too one could
use the GitHub API instead).

![](./media/image6.png){width="6.203125546806649in"
height="4.512998687664042in"}

Figure 8. CMM-Depository creation.

#### Final depository

Finally, we can perform a push and fill the remote repository.

**git push
[[https://github.com/Unipisa/CMM-Depository.git]{.underline}](https://github.com/Unipisa/CMM-Depository.git)**

> **+Depository:master**

We can check the resulting repositories via the web interface (figure
9): CMM-Depository is now filled with the pushed materials.

![](./media/image13.png){width="6.270833333333333in"
height="2.5694444444444446in"}

Figure 9. The CMM repositories at the end of the collect phase.

The Depository branch is then removed from the Workbench, to avoid
having multiple copies that may diverge. Should new materials became
available, a new iteration of the process should start, re-initializing
the Workbench with the information in the Depository.

**git checkout master**

**git push \--delete origin Depository**

**git branch -D Depository**

### Curate the code

In this phase, the curation team should clean up the code and organize
it in separate folders, one per version. In the case of CMM, the code is
already structured this way, as shown in figure 7, so there is nothing
to do.

In order to support the (re-)creation of the development history of the
original project, we prepare the version\_history.csv file with the
appropriate metadata (see fig. 10).

![](./media/image14.png){width="6.695833333333334in"
height="4.333333333333333in"}

Figure 10. The folder with CMM version history data.

![](./media/image12.png){width="6.695833333333334in"
height="3.0972222222222223in"}

Figure XXX. CMM instantiation (right) of codemeta.json template (left).

#### (Re-)Create the development History

We have to create a clean dedicated SourceCode branch

**git checkout \--orphan SourceCode**

**git rm -r \***

The development history can now be (re-)created either by issuing
manually (i.e. for each version directory) the appropriate git commands,
or by using a specialised tool.

Here is the template to create manually an individual commit/release:

**export GIT\_COMMITTER\_DATE=\"YYYY-MM-DD HH:MM:SS\"**

**export GIT\_COMMITER\_NAME=\"Commiter Name \<email\@address\>\"**

**export GIT\_AUTHOR\_DATE=\"YYYY-MM-DD HH:MM:SS\"**

**export GIT\_AUTHOR\_NAME=\"Author Name \<email\@address\>\"**

**git commit -m \'Commit Message Here\'**

**git tag -a 1.9 -m "Version 1.9"**

And here is an example using the [[DT2SG]{.underline}](#t3q5s097euy)
tool

**dotnet ./DT2SG/DT2SG\_app.dll **

**-r /mnt/DATA/SRC/SoftwareHeritage/SWHAP-EXAMPLE/CMM-Workbench**

> **/source/cmm/ **

**-m /mnt/DATA/SRC/SoftwareHeritage/SWHAP-EXAMPLE/CMM-Workbench**

> **/metadata/version\_history.csv**

As a result we will find in our local repository a new local branch
containing the rebuilt version history, that is shown in fig. 11.

![](./media/image10.png){width="6.695833333333334in" height="6.0in"}

Figure 11. An excerpt of the synthetic history of CMM.

#### Create the final repository

We move back to the master branch using the checkout command, then
remove raw\_materials and source from it:

**git rm -rf raw\_materials**

**git rm -rf browsable\_source**

**git rm -rf source**

We now create the README.md file, add it and commit changes:

**git add README.md**

**git commit -m "Final repository created"**

Now we create the final remote repository, that we call "CMM", see
figure 12, and we push the relevant branches (and tags) to it.

![](./media/image15.png){width="6.307292213473316in"
height="3.544443350831146in"}

Figure 12. The creation of the final repository.

**git push https://github.com/Unipisa/CMM.git +master:master **

> **+src:src**

**git push \--tags https://github.com/Unipisa/CMM.git **

> **+master:master +src:src**

Figure 13, 14, 15 show the final result of CMM, their Depository and
Workbench.

![](./media/image7.png){width="6.695833333333334in"
height="6.111111111111111in"}

Figure 14. The final CMM repository.

![](./media/image11.png){width="6.695833333333334in"
height="5.513888888888889in"}

Figure 15. The final CMM Depository.

![](./media/image4.png){width="6.695833333333334in"
height="6.861111111111111in"}

Figure 16. The final CMM Workbench.

#### 

#### Public the repositories and trigger Software Heritage acquisition

In order to publish Depository and SourceCode repository we have to set
their visibility to "public", either through GitHub web interface (as
shown in Fig. 17) or by GitHub API as follows:

**curl -s **

**-H \'Authorization: token \'\$auth\_token\'\' **

**-H \"application/vnd.github.baptiste-preview+json\" **

**\--data \'{\"private\": false}\' **

**-X PATCH
[[https://api.github.com/repos/\$org/\$repository\_archive]{.underline}](https://api.github.com/repos/$org/$repository_archive)**

where \$repository\_archive is CMM or CMM-Depository and \$auth\_token
is the authorizzarion token.,

Finally, we trigger the archival of this repository in Software
Heritage, using the "save code now" functionality. This can be done
using the web interface at
[[https://save.softwareheritage.org]{.underline}](https://save.softwareheritage.org),
or by connecting to the API on the command line as follows:

**curl -s -X **

**POST https://archive.softwareheritage.org/api/1/origin**

> **/save/git/url/https://github.com/Unipisa/CMM.git/**

and the code is now publicly visible at

[**[https://github.com/Unipisa/CMM.git/]{.underline}**](https://github.com/Unipisa/CMM.git/)

Appendix A - Tools that can help
================================

Here is a list of tools for code acquisition and curation that have been
used during the initial experimentation of SWHAPPE:

-   Used/suggested OCR:

    -   Tesseract
        > ([[https://github.com/tesseract-ocr/]{.underline}](https://github.com/tesseract-ocr/)).
        > It can be installed and used from command line. An API is also
        > provided to use the OCR in a script.

    -   OCR.space
        > ([[https://ocr.space/]{.underline}](https://ocr.space/)).
        > Online OCR and free API.

-   Dedicated scripts:

    -   DT2SG-Directory Tree 2 Synthetic Git
        > ([[https://github.com/Unipisa/SWHAP-DT2SG]{.underline}](https://github.com/Unipisa/SWHAP-DT2SG)).
        > Creates the synthetic history of the software.

    -   SWHAP-EXAMPLE([[https://github.com/Unipisa/SWHAP-EXAMPLE]{.underline}](https://github.com/Unipisa/SWHAP-EXAMPLE))

Many other tools exist, and are currently under construction and will be
loaded on the SWHAPPE repository on GitHub.

Appendix B - A few tips on Github
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

Acknowledgments
===============

L. Bussi wants to acknowledge the Software Heritage Foundation for the
scholarship that supported her work and the Department of Computer
Science of the University of Pisa for hosting her while working on
SWHAPPE.

Bibliography
============

[\[1\] H. Abelson and G. J. S. with J. Sussman, *Structure and
Interpretation of Computer Programs*. The MIT Press: The MIT Press,
1985.](https://www.zotero.org/google-docs/?hIHI4c)

[\[2\] L. J. Shustek, "What Should We Collect to Preserve the History of
Software?," *IEEE Ann. Hist. Comput.*, vol. 28, no. 4, pp. 110--112,
2006.](https://www.zotero.org/google-docs/?hIHI4c)

[\[3\] Institut national de recherche en informatique et en automatique,
*Paris Call: Software Source Code as Heritage for Sustainable
Development*. UNESCO, 2019.](https://www.zotero.org/google-docs/?hIHI4c)

[\[4\] J.-F. Abramatic, R. Di Cosmo, and S. Zacchiroli, "Building the
Universal Archive of Source Code," *Commun ACM*, vol. 61, no. 10, pp.
29--31, Sep. 2018.](https://www.zotero.org/google-docs/?hIHI4c)

[\[5\] D. Spinellis, "A repository of Unix history and evolution,"
*Empir. Softw. Eng.*, vol. 22, no. 3, pp. 1372--1404,
2017.](https://www.zotero.org/google-docs/?hIHI4c)

[\[6\] R. Burkey, "Virtual AGC - Changelog," 2019. \[Online\].
Available: http://ibiblio.org/apollo/changes.html. \[Accessed:
24-Sep-2019\].](https://www.zotero.org/google-docs/?hIHI4c)

[\[7\] G. Attardi and T. Flagella, "Memory Management in the PoSSo
Solver," *J Symb Comput*, vol. 21, no. 3, pp. 293--311,
1996.](https://www.zotero.org/google-docs/?hIHI4c)

[\[8\] T. Collections, "Introduction to Spectrum 5.0." \[Online\].
Available: https://collectionstrust.org.uk/spectrum/spectrum-5/.
\[Accessed: 24-Sep-2019\].](https://www.zotero.org/google-docs/?hIHI4c)

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
