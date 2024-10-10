# Makefile for LaTeX compilation

# The main tex file (without extension)
MAIN = main

# LaTeX compiler
LATEX = pdflatex

# Bibliography compiler (if needed)
BIBTEX = bibtex

# Default target
all: $(MAIN).pdf

# Rule to make the PDF
$(MAIN).pdf: $(MAIN).tex
	$(LATEX) $(MAIN)
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)

# Clean up auxiliary files
clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc $(MAIN).bbl $(MAIN).blg

# Clean up everything including the PDF
cleanall: clean
	rm -f $(MAIN).pdf

# Phony targets
.PHONY: all clean cleanall
