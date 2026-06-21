.PHONY: copy render render-t2 gem5 compile run

PYDIR = $(shell mise where python@3.13.12)
RELT2 = relatorios/relatorio_trabalho2
ZIPT2 = trabalho2-joao-luis-almeida-santos-20240002508.zip


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

render-t2:
	-cd $(RELT2) && pdflatex -shell-escape -interaction=nonstopmode relatorio-trabalho2.tex
	-cd $(RELT2) && bibtex relatorio-trabalho2
	-cd $(RELT2) && pdflatex -shell-escape -interaction=nonstopmode relatorio-trabalho2.tex
	-cd $(RELT2) && pdflatex -shell-escape -interaction=nonstopmode relatorio-trabalho2.tex
	rm -f $(ZIPT2)
	zip -j $(ZIPT2) \
		main_gem5.s \
		main_gem5_random.s \
		$(RELT2)/relatorio-trabalho2.pdf \
		$(RELT2)/relatorio-trabalho2.tex

compile:
	mkdir -p output
	riscv64-linux-gnu-gcc -nostdlib -static main_gem5.s -o ./output/main_gem5

run: compile
	@echo "LocalBP"
	$(MAKE) run-local
	@echo "BiModeBP"
	$(MAKE) run-bimode
	@cat m5out/stats.txt

run-local: compile
	mkdir -p m5out/local
	LD_LIBRARY_PATH=$(PYDIR)/lib gem5/build/RISCV/gem5.opt --outdir=m5out/local \
		models/inorder.py --binary ./output/main_gem5 --bp local

run-bimode: compile
	mkdir -p m5out/bimode
	LD_LIBRARY_PATH=$(PYDIR)/lib gem5/build/RISCV/gem5.opt --outdir=m5out/bimode \
		models/inorder.py --binary ./output/main_gem5 --bp bimode

run-bp: run-local run-bimode

gem5:
	mise install python@3.13.12
	git clone https://github.com/gem5/gem5.git || true
	cd gem5 && $(PYDIR)/bin/python3 -m venv --clear venv && . venv/bin/activate && \
	pip install -r requirements.txt && \
	rm -rf build/RISCV && \
	CC=clang CXX=clang++ LD_LIBRARY_PATH=$(PYDIR)/lib scons build/RISCV/gem5.opt \
	-j$(shell nproc) \
	--ignore-style \
	PYTHON_CONFIG=$(PYDIR)/bin/python3-config \
	LINKFLAGS_EXTRA="-Wl,-rpath,$(PYDIR)/lib"
