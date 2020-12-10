rm figures/fig7.pdf
pdflatex fig7.tex
pdfcrop fig7.pdf fig7.pdf
mv fig7.pdf figures
#okular figures/fig7.pdf
