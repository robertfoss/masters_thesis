SHELL=		sh
RM=			rm
LATEX=		latex
BIBTEX=		bibtex
DVIPS=		dvips
PS2PDF=		ps2pdf
GS=			gs

.SUFFIXES:      .tex .dvi .eps .ps .pdf

MAIN = thesis

EMAIN = ethesis

FIGDIR = figures

#FIGURES =	$(FIGDIR)/MUN_Logo_Pantone.eps	\

FILES = thesis.tex thesis.sty ref.bib apdxa.tex

$(MAIN).dvi:    $(MAIN).tex $(FIGURES) $(FILES)
	$(LATEX) $*.tex; 
	$(BIBTEX) $*;
	$(LATEX) $*.tex;
#	while grep -s 'Rerun' $*.log 2> /dev/null; do	\
#		$(LATEX) $*.tex;							\
#	done

# GhostScript command line options based upon:
# http://pages.cs.wisc.edu/~ghost/doc/cvs/Ps2pdf.htm#PDFA
$(EMAIN).pdf:	$(MAIN).ps
	$(GS) -sPAPERSIZE=letter -sProcessColorModel=DeviceCMYK -q \
	-dPDFA -dBATCH -dNOPAUSE -dNOOUTERSAVE -dUseCIEColor \
	-sDEVICE=pdfwrite -sOutputFile=$@ pdfa/PDFA_def.ps  $<

.dvi.ps:        $*.dvi
	$(DVIPS) -Ppdf -G0 -t letter -o $@ $<
 
.ps.pdf:       $*.dvi
	$(PS2PDF) -sPAPERSIZE=letter $< $@

clean:
	$(RM) -f *.aux	\
		$(MAIN).log $(MAIN).dvi $(MAIN).ps $(MAIN).blg $(MAIN).bbl	\
		$(MAIN).lot $(MAIN).lof $(MAIN).toc $(MAIN).pdf $(EMAIN).pdf

# Suggested by Neil B.
neat:
	$(RM) -f *.aux	\
		$(MAIN).log $(MAIN).blg $(MAIN).bbl	\
		$(MAIN).lot $(MAIN).lof $(MAIN).toc
