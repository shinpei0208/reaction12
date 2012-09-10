TARGET = draft
TEX = latex

all:
	$(TEX) $(TARGET)
	bibtex $(TARGET)
	$(TEX) $(TARGET)
	$(TEX) $(TARGET)
	dvips -t letter -o $(TARGET).ps $(TARGET).dvi
	ps2pdf $(TARGET).ps
	#dvipdf draft.dvi

clean:
	rm -fr *~ *.aux *.ps *.pdf *.dvi *.log *.bbl *.blg *.ent
