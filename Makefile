all: pdf epub

_build:
	mkdir -p _build

pdf: _build
	cd tex && pdflatex -interaction=nonstopmode -halt-on-error -output-directory ../_build document.tex
	cd tex && pdflatex -interaction=nonstopmode -halt-on-error -output-directory ../_build document.tex
	mv _build/document.pdf _build/the-core-fr-3.03.pdf

epub: _build
	cd tex && pandoc document.tex -o ../_build/document.epub -M date="`date "+%e %B %Y"`"
	mv _build/document.epub _build/the-core-fr-3.03.epub
	
