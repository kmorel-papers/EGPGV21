#!/bin/bash

latex sane_pgv21
bibtex sane_pgv21
latex sane_pgv21
latex sane_pgv21

dvips -t a4 -Ppdf -G0 -o sane_pgv21.ps sane_pgv21.dvi

ps2pdf -dPDFSETTINGS=/prepress -dCompatibilityLevel=1.3 -dAutoFilterColorImages=false -dAutoFilterGrayImages=false -dColorImageFilter=/FlateEncode -dGrayImageFilter=/FlateEncode -dMonoImageFilter=/FlateEncode -dDownsampleColorImages=false -dDownsampleGrayImages=false sane_pgv21.ps noembed_sane_pgv21.pdf

gs -q -dNOPAUSE -dBATCH -dPDFSETTINGS=/prepress -sDEVICE=pdfwrite -sOutputFile=sane_pgv21.pdf noembed_sane_pgv21.pdf
