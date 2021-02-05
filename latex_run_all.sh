rm Diaboloid.pdf
rm figures/fig1.pdf
rm figures/fig4.pdf
rm figures/fig5.pdf
rm figures/fig7.pdf
rm figures/fig8.pdf
rm figures/fig9.pdf

./fig1.sh
./fig4.sh
./fig5.sh
./fig7.sh
./fig8.sh
./fig9.sh

pdflatex Diaboloid.tex
bibtex Diaboloid
sleep 1.0
pdflatex Diaboloid.tex
pdflatex Diaboloid.tex

#okular Diaboloid.pdf
