# Makefile per documento in LaTeX

default: all

all:
	latex relazione.tex
	bibtex relazione
	latex relazione.tex
	latex relazione.tex
	dvips -t a4 relazione.dvi -o
	ps2pdf relazione.ps

clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.toc
	rm -f *.loa
	rm -f *.lot
	rm -f *.lof
	rm -f *.idx
	rm -f *.bbl
	rm -f *.blg
	rm -f *.idx
	rm -f *.ilg
	rm -f *.ind
	rm -f *.ps
	rm -f *.out
	rm -f *~
erase:
	rm -f *.aux
	rm -f *.log
	rm -f *.toc
	rm -f *.loa
	rm -f *.lot
	rm -f *.lof
	rm -f *.idx
	rm -f *.bbl
	rm -f *.blg
	rm -f *.idx
	rm -f *.ilg
	rm -f *.ind
	rm -f *.ps
	rm -f *.out
	rm -f *~
	rm -f *.dvi*
	rm -f *.ps*
	rm -f *.pdf*

help:
	@echo "make [all]: genera i file .dvi e .pdf di tutti i file .tex"
	@echo "make clean: elimina i file non necessari"
	@echo "make erase: elimina i file non necessari e i file .dvi, .ps e .pdf"
	@echo "Leggere anche README"
