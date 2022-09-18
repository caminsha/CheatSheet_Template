TYP=Cheatsheet
NAME=CamenzindMarco
VERSION=51

.PHONY: draftpub publish draftclear main.pdf clear

main.pdf:
	latexmk -pdf main.tex

draftpub: main.pdf
	cp main.pdf DRAFT_${VERSION}_${TYP}_${NAME}.pdf

publish: main.pdf
	cp main.pdf ${VERSION}_${TYP}_${NAME}.pdf

draftclear: 
	rm DRAFT_*.pdf

clear: 
	latexmk -C
	rm main.bbl main.run.xml main.log

