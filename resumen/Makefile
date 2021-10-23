
main = resumen
tex  = resumen

tex:
	pdflatex $(main).tex
	pdflatex $(main).tex
	bibtex $(main).aux
	bibtex $(main).aux
	makeindex -s $(main).ist -t $(main).glg -o $(main).gls $(main).glo
	pdflatex $(main).tex
	pdflatex $(main).tex
	zathura $(main).pdf &

.PHONY: vim

pdf:
	zathura $(main).pdf &
