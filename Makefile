.PHONY: all build clean

all: build

build:
	latexmk -pdf -file-line-error -halt-on-error -interaction=nonstopmode main.tex
	cp main.pdf article.pdf

clean:
	latexmk -C
	rm -f article.pdf
