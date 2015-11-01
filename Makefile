all: pdf

view:
	make all
	open resume.pdf
	

dvi: resume.tex
	export PATH=/usr/texbin:${PATH}
	/usr/texbin/latex resume.tex

pdf: dvi
	export PATH=/usr/texbin:${PATH}
	make dvi
	dvipdf resume.dvi
