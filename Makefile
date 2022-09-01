.PHONY: all update update-submodules

all: jonas/Devbox_JonasLiljestrand_profile.pdf mange/Devbox_MagnusBergmark_profile.pdf martin/Devbox_MartinEricson_profile.pdf stefan/Devbox_StefanAhman_profile.pdf

update: | update-submodules all

update-submodules:
	git submodule update --init --recursive --remote

jonas/Devbox_JonasLiljestrand_profile.pdf: jonas jonas/main.tex template.cls
	texfot pdflatex \
		-output-directory jonas \
		-jobname=Devbox_JonasLiljestrand_profile \
		jonas/main.tex

mange/Devbox_MagnusBergmark_profile.pdf: mange/upstream mange/upstream/cv.pdf
	cp mange/upstream/cv.pdf mange/Devbox_MagnusBergmark_profile.pdf

martin/Devbox_MartinEricson_profile.pdf: martin martin/main.tex template.cls
	texfot pdflatex \
		-output-directory martin \
		-jobname=Devbox_MartinEricson_profile \
		martin/main.tex

stefan/Devbox_StefanAhman_profile.pdf: stefan stefan/main.tex template.cls
	texfot pdflatex \
		-output-directory stefan \
		-jobname=Devbox_StefanAhman_profile \
		stefan/main.tex

mange/upstream:
	git submodule update --init mange/upstream

clean:
	rm -f jonas/Devbox_JonasLiljestrand_profile.pdf \
		mange/Devbox_MagnusBergmark_profile.pdf \
		martin/Devbox_MartinEricson_profile.pdf \
		stefan/Devbox_StefanAhman_profile.pdf
