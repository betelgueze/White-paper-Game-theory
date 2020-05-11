
FILENAME=the

pdf: $(FILENAME).tex
	pdflatex -interaction=nonstopmode $(FILENAME).tex
	bibtex $(FILENAME)
	pdflatex -interaction=nonstopmode $(FILENAME).tex
	pdflatex -interaction=nonstopmode $(FILENAME).tex

clean:
	rm -f *.dvi *.aux *.log *.bbl *.blg *.ps 

.PHONY: pdf clean
