rm figures/fig1.pdf
pdflatex fig1.tex
pdfcrop fig1.pdf fig1.pdf
mv fig1.pdf figures
#okular figures/fig1.pdf
