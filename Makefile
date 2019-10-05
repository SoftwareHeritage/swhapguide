# Depends: rubber
MDS = $(wildcard *.md)
TEXS = $(patsubst %.md,%.tex,$(MDS))
PDFS = $(patsubst %.md,%.pdf,$(MDS))

all: $(PDFS)

.PRECIOUS: $(TEXS)

%.tex: %.md
	pandoc -s $< -f markdown+fenced_code_blocks+fenced_code_attributes+pipe_tables -t latex --biblatex --bibliography=swhap.bib -o $@

%.pdf: %.tex
	rubber -m pdftex $<

clean: $(patsubst %,%/clean,$(TEXS))

%/clean:
	if [ -f $* ]; then rubber -m pdftex --clean $* ; fi
	rm -f $*

distclean: clean
