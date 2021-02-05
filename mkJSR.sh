#
# script to create the ArXiv submission
#
# please be sure that you run compile.sh in the main directory before running 
# this script, so paper-hierarchical.bbl and the figures/*eps-converted-to.pdf files 
# are created
#

cd /users/srio/OASYS1.2/paper-jsr-diaboloid-part2
./latex_run_all.sh
rm -rf JSR
mkdir JSR
cd JSR
cp ../Diaboloid.tex ./main.tex
cp ../iucr.bib .
cp ../iucr.cls .
cp ../iucr.bst .
cp ../harvard.sty .

cp -r ../figures .

cp main.tex main.tex.orig

pdflatex main.tex
bibtex main


# figure 1
cp figures/fig1.pdf ./figure1.pdf
mv main.tex tmp1.tex
sed "s/figures\/fig1.pdf/figure1.pdf/" tmp1.tex > main.tex

# figure 2
cp figures/widget.png ./figure2.png
mv main.tex tmp2.tex
sed "s/figures\/widget.png/figure2.png/" tmp2.tex > main.tex 

# figure 3
cp figures/p2s_V_z.png ./figure3a.png
cp figures/p2s_K_z.png ./figure3b.png
mv main.tex tmp3a.tex
sed "s/figures\/p2s_V_z.png/figure3a.png/" tmp3a.tex > main.tex
mv main.tex tmp3b.tex
sed "s/figures\/p2s_K_z.png/figure3b.png/" tmp3b.tex > main.tex

# figure 4
cp figures/fig4.pdf ./figure4.pdf
mv main.tex tmp4.tex
sed "s/figures\/fig4.pdf/figure4.pdf/" tmp4.tex > main.tex

# figure 5
cp figures/fig5.pdf ./figure5.pdf
mv main.tex tmp5.tex
sed "s/figures\/fig5.pdf/figure5.pdf/" tmp5.tex > main.tex

# figure 6
cp figures/scan_toroid.png ./figure6a.png
cp figures/scan_diaboloid.png ./figure6b.png
mv main.tex tmp6a.tex
sed "s/figures\/scan_toroid.png/figure6a.png/" tmp6a.tex > main.tex
mv main.tex tmp6b.tex
sed "s/figures\/scan_diaboloid.png/figure6b.png/" tmp6b.tex > main.tex

# figure 7
cp figures/fig7.pdf ./figure7.pdf
mv main.tex tmp7.tex
sed "s/figures\/fig7.pdf/figure7.pdf/" tmp7.tex > main.tex

# figure 8
cp figures/fig8.pdf ./figure8.pdf
mv main.tex tmp8.tex
sed "s/figures\/fig8.pdf/figure8.pdf/" tmp8.tex > main.tex

# figure 9
cp figures/fig9.pdf ./figure9.pdf
mv main.tex tmp9.tex
sed "s/figures\/fig9.pdf/figure9.pdf/" tmp9.tex > main.tex



mv main.tex tmpP.tex
sed "s/documentclass/documentclass[preprint]/" tmpP.tex > main.tex
 
rm -rf figures tmp*

pdflatex main.tex
pdflatex main.tex
okular main.pdf
#
