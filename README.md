# Prerequisites
* `make` ([instructions](https://askubuntu.com/q/161104))
* `pdflatex` ([instructions](https://www.latex-project.org/get/))

# Instructions
## Building the Document
Call `make` to compile the document. In order to correctly compile new references, call `make references`.

## Renaming `main_layout.tex`
Ensure that the `TARGET_FILE_NAME` variable inside the Makefile has the name of the main latex file that is to be compiled. By default, the main latex file is called `main_layout.tex`.

When renaming the main latex file, remember to update `TARGET_FILE_NAME` with the new name.

## Importing and modifying packages
The entire preamble is found in the `preamble.tex` file. You may find all the packages there.
