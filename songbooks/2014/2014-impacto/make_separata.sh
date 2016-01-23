#!/bin/bash

# clear the screen
clear

pdflatex separata_impacto_2014.tex
songidx cbtitle.sxd cbtitle.sbx
pdflatex separata_impacto_2014.tex

 rm *.out *.log *.sxc *.sxd *.sbx *.aux