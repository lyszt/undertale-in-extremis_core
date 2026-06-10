.PHONY: copy render gem5 compile run 

PYDIR = $(shell mise where python@3.13.12)


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
	LD_LIBRARY_PATH=$(PYDIR)/lib gem5/build/RISCV/gem5.opt models/simple-riscv.py --binary ./output/main.asm

gem5:
	mise install python@3.13.12
	git clone https://github.com/gem5/gem5.git || true
	cd gem5 && $(PYDIR)/bin/python3 -m venv --clear venv && . venv/bin/activate && \
	pip install -r requirements.txt && \
	LD_LIBRARY_PATH=$(PYDIR)/lib scons build/RISCV/gem5.opt \
	-j$(shell nproc) \
	--ignore-style \
	PYTHON_CONFIG=$(PYDIR)/bin/python3-config \
	LINKFLAGS_EXTRA="-Wl,-rpath,$(PYDIR)/lib"
