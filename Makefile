.PHONY: all

stefan/main.pdf: stefan stefan/main.tex template.cls
	pdflatex \
		-output-directory stefan \
		stefan/main.tex \
		> /dev/null 2>&1

all: | stefan/main.pdf

clean:
	rm -f stefan/main.pdf
