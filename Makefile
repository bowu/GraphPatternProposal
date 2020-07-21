SOURCES	= \
 	main.tex

.PHONY: default all clean

default:
	pdflatex main
main:
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
all:	main
clean:
	-rm -rf *.aux main.bbl main.out main.blg main.dvi *.log main.pdf main.ps *~
sources:
	@echo  ${SOURCES}
