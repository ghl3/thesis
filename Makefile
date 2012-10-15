
#LATEX    = latex
LATEX    = pdflatex
BIBTEX   = bibtex
DVIPS    = dvips

NOTENAME = thesis

all: thesis clean

thesis: 
	${LATEX}  ${NOTENAME}
	${BIBTEX}  ${NOTENAME}
	${LATEX}  ${NOTENAME}
	${LATEX}  ${NOTENAME}
#	dvipdf -sPAPERSIZE=a4 -dPDFSETTINGS=/prepress ${NOTENAME}
#
# standard Latex targets
#

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

