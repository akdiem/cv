TEX=cv
.PHONY: clean


all: $(TEX).pdf


$(TEX).pdf: $(TEX).tex
	# for bibtex to work correctly we need to compile twice
	pdflatex $(TEX)


clean:
	# remove all files except for .tex, .bib and the Makefile
	find -type f | grep -v 'tex\|bib\|Makefile\|git' | xargs rm
