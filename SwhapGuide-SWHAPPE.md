---
title: 'Original SWHAP process at Pisa (SWHAPPE)'
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

Introduction
============

This document contains the original implementation of the SWHAP process
developed at University of Pisa since 2020 using Git and GitHub.

In order to implement SWHAP, the first step is to decide how to
instantiate the needed storage and working areas: Warehouse, Depository,
Curated source code deposit and Workbench.

For the SWHAP Pisa Enactor (SWHAPPE), the implementation adopted by the
SWHAP\@Pisa project made the following choices: SWHAPPE exploits the
collaborative platform [[GitHub]{.underline}](https://github.com/) (
[[https://github.com/]{.underline}](https://github.com/) ) as a host platform
for all the virtual support areas of the process.

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

![Overview of the SWHAPPE approach](./media/image2.png){#fig:swhappe}

Figure 2. Overview of the SWHAPPE process.

The SWHAP template
------------------

The structure of the template is shown in Fig. 3.

First of all, we can see a correspondence between the Depository
presented in the process and the area provided by `raw_materials` and
`browsable_source`: indeed, these two folders will be moved in order to
instantiate the Depository, once they have been loaded, the former with
the original materials, just as they have been found or submitted, the
latter with a first revision of the source code, made accessible through
the GitHub web interface, e.g., archives should be decompressed, code
transcribed from pictures, etc.

The `source` folder is provided as the starting point for the creation of
the Source Code *Git* repository, in the curation phase. The curator has
to recognize each major version of the code, and refactor it accordingly
- one separate folder per each version. To create the Source Code
Deposit, however, we exploit the *commit* and *versioning* mechanisms of
*Git*.

As for the metadata folder, here we record all the information about the
software and the acquisition process (catalogue, actors, journal, etc.).
The guidelines to fill this part are given in the template itself.

![Top structure of the Template repository.](./media/template_structure.png){#fig:template}

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

**Upload files in `raw_materials`**

All the collected files must be uploaded in the `raw_materials` folder.

If there are physical materials, folder `raw_materials` should contain
a reference to the related Warehouse, that may follow the Spectrum
guidelines [\[8\]](https://www.zotero.org/google-docs/?X25TEk).

**Move the source code to `browsable_source`**

All the source code files must then be put into the `browsable_source`
folder.

If the raw material is an archive, you need to unpack it locally, put it into
the `browsable_source` folder, and upload the result on GitHub by performing a
push[^7].

#### Preserving Empty Directories

By default, Git does not track empty directories — only files. This creates a
problem for SWHAP curation: many historical source archives contain empty
directories that are meaningful for build systems, test harnesses, or simply
for documenting the project structure. If we ignore them, the curated history
in Git and Software Heritage will no longer faithfully represent the original
layout.

**Workaround.**  
To preserve empty directories, SWHAP workbenches should add a placeholder file
named `.emptydir` inside each directory that is otherwise empty. This ensures
Git records the directory, while making it clear that the file is a curatorial
artifact and not part of the original software distribution. These markers
should be documented explicitly in the curation metadata (`journal.md`,
`README.md`), so that future users are aware they were introduced solely for
structural preservation.

Example, suppose you find in the original source code tree a couple of empty directories:
```
Tests/ERR/
Tests/REFDIFF/
```

To ensure their correct recording in Git, add inside them an empty file named `.emptydir`:

```
Tests/ERR/.emptydir
Tests/REFDIFF/.emptydir
```

Do not add these markers in the *Depository* branch: only the curated
*SourceCode* branch needs them.

### Notes on OCR

If the code was only available in non digital form (e.g. printed
listings), you can either transcribe it manually, or use a scanner and
an OCR (optical character recognition) tool to parse it. See
[[Appendix
A]{.underline}](http://www.corestandards.org/assets/Appendix_A.pdf)
for a list of suggested tools.

Particular care should be used to ensure the files in
`browsable_source` have the correct extension: scanner and OCR usually
generate files with a generic .txt extension, that must be changed to
the extension typically used for the programming language they
contain.

Note that, at this stage, we are not interested in precise information
about the versions of the software. The purpose is to have
machine-readable documents.

Finally, in preparation for the curation phase, you may want to copy
the files in `browsable_source` to the `source` folder.

**Create Depository**

The next step is to create the branch Depository, containing only the
folders `raw_materials` and `browsable_source`, together with the
metadata updated to this point. Then, create the Depository repository
from this branch.


### Curate phase

**Curate the source code**

Once the Depository creation is complete, you can move back to the
`source` folder in the `main` branch. Here you have to divide and number
the versions, putting the files of each one in a dedicated folder.

#### Flattening of Tarballs

Tarballs distributed by projects often include a single top-level directory
(e.g., `project-1.0/`) to avoid “tarbombs.” For curation purposes, such
artificial wrappers should be stripped so that all source files live at the
root of the curated version directory.

#### Determining who did what and when

In practice, this means that *for each version of the software* you
need to ascertain:

-   the *main contributing author*,

-   the *exact date* of the release of this particular version

This information should be consigned in a dedicated metadata file,
`version_history.csv`, with the following fields:

\rowcolors{1}{gray!10}{white} 

| Field name         | description                                                      |
|--------------------+------------------------------------------------------------------|
| directory name 	 | name of the directory containing the source code of this version |
| author name    	 | name of the main author                                          |
| author email   	 | email of the main author, when available                         |
| date original  	 | original date when this version was made                         |
| curator name   	 | name of the curator person or team                               |
| curator email  	 | the reference email of the acquisition process                   |
| release tag   	 | a tag name if the directory contains a release, empty otherwise  |
| commit message 	 | text containing a brief note from the curation team              |

**(Re-)Create the Development History**

Now we are ready to (re-)create the development history of the
software. First you need to create a branch Source Code, with the
*src* folder.

Then, you can proceed in two ways:

-   *manually*: using the *Git* commands to push the successive versions
    into the `source` folder, reading the information collected in the
    file `version_history.csv` to set the fields for each version to
    the values determined during the curation phase;

-   *automatically*: using a tool that reads the information from
    `version_history.csv` and produces the synthetic history in a
    single run; one such tool has been developed, DT2SG
    ([[https://github.com/Unipisa/DT2SG]{.underline}](https://github.com/Unipisa/DT2SG))
    , and you can see a running example in the next section.

The result will be a branch that materializes the development history
of the software via Git commits and releases.

**Create the final repository**

Finally you can create the "official" software repository, taking the
versions history from the src branch and the metadata from the `main`
branch.

Iteration
---------

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

\clearpage

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

    tar -xzf raw_material/cmm.tgz -C browsable_source

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
	git commit -m "Added raw materials from main branch"
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

    git push https://github.com/Unipisa/CMM-Depository.git +Depository:main

We can check the resulting repositories via the web interface (Figure
{@fig:cmm_repos}): CMM-Depository is now filled with the pushed materials.

![The CMM repositories at the end of the collect phase.](./media/cmm_repos.png){#fig:cmm_repos}

The Depository branch is then removed from the Workbench, to avoid
having multiple copies that may diverge. Should new materials became
available, a new iteration of the process should start, re-initializing
the Workbench with the information in the Depository.

	git checkout main
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
chronological order, we copy its contents from the `main` branch to the
current branch, and commit it with the appropriate metadata.

For example, for the directory 1.9 of the CMM sources, here is how
we copy the source contents into our branch:

	git checkout main -- source/1.9
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
	git commit -m 'Commit Message Here'
	
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

We move back to the `main` branch using the checkout command, then
remove `raw_materials`, `browsable_source` and `source` from it:

	git rm -rf raw_materials browsable_source source

We now create the README.md file, add it and commit changes:

	git add README.md
	git commit -m "Final repository created"

Now we create the final remote repository, that we call "CMM", see
Figure {@fig:create_fin}, and we push the relevant branches (and tags) to it.

![The creation of the final repository.](./media/create_fin.png){#fig:create_fin}

    git push --tags git@github.com:Unipisa/CMM.git +main:main +SourceCode:SourceCode

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

### Codemeta Best Practices for SWHAP

Each SWHAP workbench must include a [`codemeta.json`](https://codemeta.github.io/terms/) file,
providing machine-readable metadata about the curated software. To ensure consistency
and validity against the CodeMeta 2.0 schema, curators should follow these best practices:

1. **Use only terms defined in the CodeMeta 2.0 context**
   - The context is fixed:
     ```json
     "@context": "https://doi.org/10.5063/sciencecodemeta/codemeta-2.0"
     ```
   - Avoid custom fields unless explicitly agreed and documented.

2. **Mandatory fields for SWHAP deposits**
   - `@type` = `"SoftwareSourceCode"`
   - `name` (title of the software)
   - `identifier` (short unique identifier, e.g. `CMM`)
   - `description` (short abstract of the software)
   - `version` (last archived version)
   - `author` (primary authors, with affiliation)
   - `license` (with URL to the license file in `metadata/`)
   - `programmingLanguage` (list with details)

3. **Recommended fields**
   - `keywords` (research areas, technologies)
   - `contributor` (secondary contributors)
   - `referencePublication` (books, papers, manuals)
   - `dateCreated`, `datePublished`, `dateModified` (ISO format `YYYY-MM-DD`)
   - `funder` (organization or project supporting the work)
   - `codeRepository` (URL to original upstream repository or archival location)
   - `relatedLink` (pointers to SWHAP guide, Software Heritage, project pages)

4. **Authors and contributors**
   - Use `author` for primary developers; `contributor` for collaborators.
   - Include `affiliation` objects whenever possible (with `@type: Organization`).

5. **Licensing**
   - Use a `license` object with `@type: CreativeWork`, including `name` and `url`.
   - If the license is non-standard (e.g. DEC non-commercial), link directly to the copy in `metadata/license.txt`.

6. **Publications**
   - Cite reference documents (manuals, handbooks, articles) under `referencePublication`, including authors and URLs when available.

7. **Validation**
   - Always validate `codemeta.json` using the [CodeMeta JSON-LD Playground](https://codemeta.github.io/codemeta-generator/) or JSON schema tools before finalizing.

8. **Do not include**
   - Fields not defined in CodeMeta 2.0.
   - Internal curatorial notes (keep those in `journal.md`).

Appendix A - Tools that can help
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

Bibliography
============

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

