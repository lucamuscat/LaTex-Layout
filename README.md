This is the latex layout that I commonly use.

# Prerequisites
* `make` ([instructions](https://askubuntu.com/q/161104))
* `pdflatex` ([instructions](https://www.latex-project.org/get/))

# Instructions
## Compiling the tex document
Type `make` or `make content` in order to create the PDF file. Call `make references` to compile the references and the content.
## Rename PDF output
Go into the Makefile and change the `PROJECT_NAME` variable.

## Renaming the main_layout.tex
If you are going to rename `main_layout.tex`, don't forget to change the `TARGET_FILE_NAME` variable to the name of the new name (exclude `.tex` from the variable).

## Importing and modifying packages
The entire preamble is found in the `preamble.tex` file. You may find all the packages there.
