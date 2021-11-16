Software Heritage Acquisition Process Guidelines
------------------------------------------------

This directory contains the full sources of the [ScienceStories](https://swh.stories.k2.services/) part of [SWHAP](https://www.softwareheritage.org/swhap) Guidelines, 
that describe the detailed process to present landmark legacy source code, as originally
developed by Software Heritage and the University of Pisa with support from UNESCO.

The document sources are in Markdown format, and are designed to produce
a [beautifully rendered PDF output](SWHAP@Pisa.pdf), as well as to ease
maintainability.

This requires the use of a few extensions, that make the Markdown rendering on
GitHub suboptimal, hence we also add the generated PDF output for your immediate use.

In order to reproduce the PDF, you will need the following tools installed:

Mandatory:
 - pandoc https://pandoc.org ; use at least version 2
 - pandoc-secnos and pandoc-fignos from the pandoc-xnos filter suite: https://github.com/tomduck/pandoc-xnos
   usually just make sure you have Python 3 and do:
     pip install pandoc-secnos pandoc-fignos --user

Optional:
 - rubber https://launchpad.net/ubuntu/+source/rubber

See the Makefile for the commands used to produce LaTeX from Markdown.
