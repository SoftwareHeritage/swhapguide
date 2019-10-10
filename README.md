Software Heritage Acquisition Process Guidelines
------------------------------------------------

This directory contains the full sources of the SWHAP Guidelines, in Markdown
format, which are designed to produce a beautifully rendered PDF output, as well
as to ease maintainability.

This requires the use of a few extensions, that make the Markdown rendering on
GitHub suboptimal, hence we also add the generated PDF output for your immediate use.

In order to reproduce the PDF, you will need the following tools installed:

Mandatory:
 - pandoc https://pandoc.org
 - pandoc-secnos and pandoc-fignos from the pandoc-xnos filter suite: https://github.com/tomduck/pandoc-xnos
   usually just make sure you have Python 3 and do:
     pip install pandoc-secnos pandoc-fignos --user

Optional:
 - rubber https://launchpad.net/ubuntu/+source/rubber

See the Makefile for the commands used to produce LaTeX from Markdown.
