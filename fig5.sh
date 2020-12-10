rm figures/fig5.pdf
pdflatex fig5.tex
pdfcrop fig5.pdf fig5.pdf
mv fig5.pdf figures
#okular figures/fig5.pdf
