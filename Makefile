include common/make/Makefile.latex
%.tex: %.md
	pandoc -s $< -t latex --biblatex --bibliography=swhap.bib -o $@

%.pdf: %.tex
	rubber -m pdftex $<
