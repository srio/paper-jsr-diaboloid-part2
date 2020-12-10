rm figures/fig4.pdf
pdflatex fig4.tex
pdfcrop fig4.pdf fig4.pdf
mv fig4.pdf figures
#okular figures/fig4.pdf
