.PHONY: all

all: jonas/main.pdf mange/main.pdf martin/main.pdf stefan/main.pdf

jonas/main.pdf: jonas jonas/main.tex template.cls
	texfot pdflatex \
		-output-directory jonas \
		jonas/main.tex

mange/main.pdf: mange mange/main.tex template.cls
	texfot pdflatex \
		-output-directory mange \
		mange/main.tex

martin/main.pdf: martin martin/main.tex template.cls
	texfot pdflatex \
		-output-directory martin \
		martin/main.tex

stefan/main.pdf: stefan stefan/main.tex template.cls
	texfot pdflatex \
		-output-directory stefan \
		stefan/main.tex

clean:
	rm -f jonas/main.pdf mange/main.pdf martin/main.pdf stefan/main.pdf
