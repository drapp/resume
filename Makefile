all: pdf

view:
	make all
	open resume.pdf
	

dvi: resume.tex
	export PATH=/usr/texbin:$PATH
	latex resume.tex

pdf: dvi
	make dvi
	dvipdf resume.dvi
