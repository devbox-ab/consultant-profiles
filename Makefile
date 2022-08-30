.PHONY: all

all: jonas/main.pdf mange/main.pdf martin/main.pdf stefan/main.pdf

jonas/main.pdf: jonas jonas/main.tex template.cls
	texfot pdflatex \
		-output-directory jonas \
		-jobname=Devbox_JonasLiljestrand_profile \
		jonas/main.tex

mange/main.pdf: mange mange/main.tex template.cls
	texfot pdflatex \
		-output-directory mange \
		-jobname=Devbox_MagnusBergmark_profile \
		mange/main.tex

martin/main.pdf: martin martin/main.tex template.cls
	texfot pdflatex \
		-output-directory martin \
		-jobname=Devbox_MartinEricson_profile \
		martin/main.tex

stefan/main.pdf: stefan stefan/main.tex template.cls
	texfot pdflatex \
		-output-directory stefan \
		-jobname=Devbox_StefanAhman_profile \
		stefan/main.tex

clean:
	rm -f jonas/Devbox_JonasLiljestrand_profile.pdf \
		mange/Devbox_MagnusBergmark_profile.pdf \
		martin/Devbox_MartinEricson_profile.pdf \
		stefan/Devbox_StefanAhman_profile.pdf
