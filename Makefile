.PHONY: build clear

build:
	latexmk -pdf main.tex

view:
	latexmk -pdf -pvc main.tex

clear: 
	latexmk -C
	rm main.bbl main.run.xml main.log
