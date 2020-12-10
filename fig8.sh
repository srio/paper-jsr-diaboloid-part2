rm figures/fig8.pdf
pdflatex fig8.tex
pdfcrop fig8.pdf fig4.pdf
mv fig8.pdf figures
#okular figures/fig8.pdf
