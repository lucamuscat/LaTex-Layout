PROJECT_NAME="assignment"
LATEX_PROCESSOR=pdflatex
LATEX_FLAGS=-shell-escape -interaction=nonstopmode
PDF_LATEX_COMMAND=$(LATEX_PROCESSOR) $(LATEX_FLAGS) --jobname=$(PROJECT_NAME) main_layout.tex 

content:
	$(PDF_LATEX_COMMAND) && $(PDF_LATEX_COMMAND)

references:
	bibtex main_layout
	$(PDF_LATEX_COMMAND)
	$(PDF_LATEX_COMMAND)

clean:
	rm -f *.aux *.log *.out *.pdf *.toc
	rm -rf _minted-$(PROJECT_NAME)