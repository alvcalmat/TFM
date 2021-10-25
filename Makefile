
main = TFM
tex  = TFM

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

vim:
	vi "+setlocal spell" "+setlocal spell spelllang=en" "+setlocal spellfile=~/.vim/dict_es.add" $(tex).tex

pdf:
	zathura $(main).pdf &

resumen:
	pdflatex resumen.tex
	pdflatex resumen.tex
	makeindex -s resumen.ist -t resumen.glg -o resumen.gls resumen.glo
	pdflatex resumen.tex
	pdflatex resumen.tex
	zathura resumen.pdf &
