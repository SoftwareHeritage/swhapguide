include common/make/Makefile.latex
%.tex: %.md
	pandoc -s $< -f markdown+fenced_code_blocks+fenced_code_attributes -t latex --biblatex --bibliography=swhap.bib -o $@

%.pdf: %.tex
	rubber -m pdftex $<
