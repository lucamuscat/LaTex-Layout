PROJECT_NAME = "assignment.pdf"

content:
	pdflatex -shell-escape -interaction=nonstopmode main_layout.tex && pdflatex -shell-escape -interaction=nonstopmode main_layout.tex

references:
	bibtex main_layout
	pdflatex -shell-escape -interaction=nonstopmode main_layout.tex
	pdflatex -shell-escape -interaction=nonstopmode main_layout.tex

clean:
	rm -f *aux *log *out *pdf *toc
	rm -rf _minted-main_layout

rename:
	mv main_layout.pdf $(PROJECT_NAME)