all: pdf

view:
	make all
	xpdf resume.pdf
	

dvi: resume.tex
	latex resume.tex

pdf: dvi
	make dvi
	dvipdf resume.dvi
