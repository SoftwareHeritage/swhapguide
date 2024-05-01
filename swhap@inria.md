---
title: 'The Software Heritage Acquisition Process: archiving and preserving legacy source code'
date: 18 October 2022
author: 
 - name: Mathilde Fichen
   affiliation: Software Heritage, Inria
   email: mathilde.fichen@inria.fr
subparagraph: yes
bibliography: swhap.bib
---
<a name="intro"/>

Introduction
============

The primary goal of this guide is to help anyone archive **legacy source code** into the **Sofware Heritage universal archive**. 
By legacy, we mean any source code which has not been developped on a modern software forge (such as Github or Gitlab). 
Typically the source code can be stored on a private hard drive, a USB stick or even on paper listings and you might be worried it will get lost if not archived properly. 
The guide focuses on preserving the software **source code**, which we believe is worth preserving for itself. The process does not tackle the execution of this code, or how to deal with emulation systems. 

Appart from archiving the source code itself, the guide will also propose solutions to help archive historical artefacts linked to the story of the source code (such as pictures, screenshots, reports etc.) and help you build an online presentation of the software. 
The guide is devided into three sections, each of them can be read and executed independently of the others.

1. How to archive legacy source code into Software Heritage Archive
2. How to archive other historical artefacts linked to the history of the software
3. How to build an online presentation of the software

Note that the process aims at preserving and presenting legacy source code and related materials in a **digital** format, to ensure long term availability of the curated materials and the possibility to share and present it to a broad audience. 
Archiving physical artefacts is not the primary goal of this guide but we will provide some contact points if you would intend to do so. 

This document builds up on the SWHAP, the ***SoftWare Heritage Acquisition Process*** to rescue, curate and illustrate landmark legacy software source code. The initial version of this guide was published in 2019 as a joint initiative of Software
Heritage and the University of Pisa, in collaboration with UNESCO. 


Why preserve legacy source code?
================================

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

What if I am stuck or have a question ?
======================================

Because we are still developping and improving the SWHAP process you may stumble upon some difficulties, have some doubts on the best practices to adopt or you may just want to suggest an improvment. 
To do so, you can join our SWHAP [mailing list](https://sympa.inria.fr/sympa/subscribe/swhap?previous_action=info) and share your questions and your comments with the community. 

Archiving legacy source code into Software Heritage Archive
================================================================
Requirements and setup
----------------------

To start archiving legacy source code in the Sofwtare Heritage Archive, the following elements are required:
- A source code in machine readable format
- A Github account
- A Linux Console
- Git
- Connect to Github with SSH

### A source code in machine readable format

If your source code is already stored in a digital machine-readable format, you can skip this step. 
However, if your source code is not machine-readable (typically your code is a paper listing), a little prework is required so that your code can be ingested in the Software Heritage Archive. 

1) Use a scanner to digitalize your code. If your code is too long to be scanned in its entirety, select a section that you find most relevant for archiving.
2) Convert your code to a machine-readable format, for example by using an OCR tool such as [OCR.space](https://ocr.space/) and paste your code into a text editor.
3) Check for any error, correct if needed, and save your code using the file extension linked to the programming language asociated with your code. 

### A Github account

Source code ingestion into the Software Heritage archives will require your source code to be uploaded into a public forge first, such as Github or Gitlab. 
In this guide we will show you how to do it using Github, and you will therefore need a Github account. If you do not already own one, you can easily create it [here](https://github.com/signup).

### A Unix Console

To properly deposit your source code into the archive, you will need to use the Git versionning management system. You do not need an extensive understanding of Git mechanisms to do so and we will guide you step by step.
However, the command lines we will use are written for a Unix exploitation system. If your computer is running on a Unix-like exploitation system (Unix, Linux, MacOS), you can skip this step. If you are using Windows, you can download a Linux subsystem for Windows.

To do so, you can find detailed instructions [here]([url](https://learn.microsoft.com/en-us/windows/wsl/install)).
In practice do the following:
- Open Windows PowerShell
- Enter the following command line: 'wsl --install'
- Wait for the installation to complete
- Restart your computer
- Re-open Windows PowerShell and open a new Ubuntu tab (clicking on the small + sign on top)
- You will be asked to enter a new user name and password. And that's it, you can start typing linux command lines in your console.

### Git

Git is the versionning system we will use to curate your source code. If you do not have Git installed yet, you will need to install it. From your Linux console enter the following instruction: 'sudo apt install git-all'.
If it does not work the first time, you may need to first update the local packages index using the following command line: 'sudo apt-get update'. 

### Connect to GitHub with SSH

The archiving process will require you to interact with Github from your Linux console. To do so, you need to establish a secure SSH connexion. You can find detailed instructions [here]([url](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)). If you do not already have a SSH key, here is what you need to do:
- Create a new SSH using this command line `ssh-keygen -t ed25519 -C "john.smith@gmail.com" ` using your own email address. Press enter to accept the default repository or adjust as you wish. Enter a passphrase if you wish of leave empty and press enter.
- Then add your newly created SSH key into your ssh-agent. Check that your ssh-agent is running by entering: `eval "$(ssh-agent -s)" `. Then add your key by entering: `ssh-add ~/.ssh/id_ed25519`
- Navigate to the folder where your SSH key is stored. If you use a Windows Linux Subsystem, it should be in `Linux>Ubuntu>home>myname>.ssh`. Open the public key file `id_ed25519.pub` and copy the key
- Now go to your Github account, click on your logo on the top right corner, go the `Settings` and `SSH and GPG keys`. Click on `New SSH key`, enter a name to your key and paste the public key. Click on `Add SHS key`

You are done with the settings and you are now ready to archive your code into the Software Heritage Universal Archive!
    
Archiving your legacy code
----------------------
In order to archive your legacy code on the Software Heritage Universal Archive, you first need to deposit your code on a public forge such as Github or Gitlab, and most of the work we will do in the following steps aims at doing so in a clean way. In this guide we will the most widely used forge, Github. 

We will provide a step by step guidance, using a historical software called Amaya as an example. 

**Wait, why don't I just manually upload my code on Github then?**
If you just uploaded your source code files on Github the metadata associated with your code would be wrong. For example, if I, Mathilde, upload a code initially written in 1987 by Tim Berners Lee on Github, the commit data will tell that I am the author and that the code was written in 2024. That would be obviously wrong. Using Git command lines will allow us to properly set the metadata. 

If your source code has several versions we will also reconstruct the version history, using Git to _stack_ each version upon the other and make them easier to navigate and compare one to another for future viewers. 


### Set up your working environment

To archive your legacy source code we will be using Github, and we prepared a Github template that you can clone (if you are not familiar with Github lingo _to clone_ means _to make a copy_) to create your own working space. 
Visit [the template page](https://github.com/mathfichen/Swhap-Template), on the upper eight hand corner click on `Use this template` > `Create a new repository` 

The repository you will create is a temporary working environment, and we recommand naming it `MySoftware-Workbench` and to make it private.




### Prepare your code for archival

As mentionne earlier, to start the process your code needs to be in a machine-readable format.
If the code is only available in non digital form (e.g. printed listings), you can either transcribe it manually, or use a scanner and an OCR (optical character recognition) tool to parse it.
If the raw source code is an archived and/or compressed file (.tar or .zip), you should unpack it locally on your computer. 

If your code has several versions, organize each version in a dedicated foler, calling each folder with an easily recognizable name, for example `MySoftware_V1`, `MySoftware_V2` etc.    

For historical accuracy purpose we will upload both your source code in its initial format, and in its machine-readable format. 






