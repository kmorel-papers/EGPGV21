
SHELL = /bin/sh

all: sane_pgv21.pdf

sane_pgv21.pdf: *.tex 
	pdflatex sane_pgv21
	pdflatex sane_pgv21
	bibtex sane_pgv21
	touch sane_pgv21.tex
	pdflatex sane_pgv21
	pdflatex sane_pgv21


clean:
	if (rm -f *.log *.aux *.bbl *.blg *.out *.toc *.dvi *.ps *.brf *.lbl sane_pgv21.pdf) then :; fi

