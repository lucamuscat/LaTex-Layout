TARGET_FILE_NAME=main_layout
LATEX_PROCESSOR=pdflatex
LATEX_FLAGS=-shell-escape -interaction=nonstopmode \
	--jobname="$(TARGET_FILE_NAME)" \
	$(TARGET_FILE_NAME).tex

PDF_LATEX_COMMAND=$(LATEX_PROCESSOR) $(LATEX_FLAGS)

content:
	$(PDF_LATEX_COMMAND) && $(PDF_LATEX_COMMAND)

references:
	$(PDF_LATEX_COMMAND) && \
	bibtex $(TARGET_FILE_NAME) && \
	$(PDF_LATEX_COMMAND) && \
	$(PDF_LATEX_COMMAND) \

clean:
	rm -f *.aux *.log *.out *.pdf *.toc && \
	rm -rf _minted-$(TARGET_FILE_NAME)