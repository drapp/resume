all: pdf

view:
	make all
	open resume.pdf
	

dvi: resume.tex
	export PATH=/Library/TeX/texbin:${PATH}
	/Library/TeX/texbin/latex resume.tex

pdf: dvi
	export PATH=/Library/TeX/texbin:${PATH}
	make dvi
	dvipdf resume.dvi
