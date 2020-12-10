rm figures/fig9.pdf
pdflatex fig9.tex
pdfcrop fig9.pdf fig9.pdf
mv fig9.pdf figures
#okular figures/fig9.pdf
