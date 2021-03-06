
#LATEX    = latex
LATEX    = pdflatex
BIBTEX   = bibtex
DVIPS    = dvips

NOTENAME = thesis

all: thesis title clean

thesis: 
	${LATEX}  -interaction=errorstopmode  ${NOTENAME}
	${BIBTEX}  ${NOTENAME}
	${LATEX}  ${NOTENAME}
	${LATEX}  ${NOTENAME}
#	dvipdf -sPAPERSIZE=a4 -dPDFSETTINGS=/prepress ${NOTENAME}
#
# standard Latex targets
#

title:
	pdflatex title_page.tex 

%.dvi:	%.tex 
	$(LATEX) $<

%.bbl:	%.tex *.bib
	$(LATEX) $*
	$(BIBTEX) $*

%.ps:	%.dvi
	$(DVIPS) $< -o $@

%.pdf:	%.tex
	$(PDFLATEX) $<

.PHONY: clean

clean:
	rm -f *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg  \
	      *.inx *.dvi *.toc *.out *.nav *.snm *.lof *.lot  spellTmp 

