# Build from the terminal with `latexmk` (this file is picked up automatically)
$pdf_mode = 1;            # pdflatex
$out_dir  = 'build';
$bibtex_use = 2;          # biber is detected automatically from the .bcf
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 -file-line-error %O %S';
@default_files = ('main.tex');
