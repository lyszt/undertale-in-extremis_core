.PHONY: copy render gem5 compile run 

copy:
	cat main.s | wl-copy
simulate:
	java -jar rars.jar nc main.s

render:
	-cd relatorio && pdflatex -shell-escape -interaction=nonstopmode relatorio-joao-luis-almeida-santos.tex
	-cd relatorio && bibtex relatorio-joao-luis-almeida-santos
	-cd relatorio && pdflatex -shell-escape -interaction=nonstopmode relatorio-joao-luis-almeida-santos.tex
	-cd relatorio && pdflatex -shell-escape -interaction=nonstopmode relatorio-joao-luis-almeida-santos.tex
	rm -f relatorio-joao-luis-almeida-santos.pdf
	pdfunite capa.pdf relatorio/relatorio-joao-luis-almeida-santos.pdf relatorio-joao-luis-almeida-santos.pdf
	rm -f trabalho-joao-luis-almeida-santos-20240002508.zip
	zip trabalho-joao-luis-almeida-santos-20240002508.zip relatorio-joao-luis-almeida-santos.pdf main.s rars.jar Makefile

compile:
	riscv64-linux-gnu-gcc -nostdlib -static main.s -o ./output/main.s
run:
	gem5/build/RISCV/gem5.opt models/simple-riscv.py --binary ./output/main.asm

gem5:
	git clone https://github.com/gem5/gem5.git || true
	cd gem5 && python -m venv venv && . venv/bin/activate && pip install -r requirements.txt && scons build/RISCV/gem5.opt
