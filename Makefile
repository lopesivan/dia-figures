###
### ls *.tex| sed 's/.*/echo `basename & .tex`.pdf: &/'| sh | sed 's/.*/&\n\t\$(PDFLATEX) \$^/'>> Makefile
###

all:
	@echo dia2code -t c example1.dia
	@echo dia2code -t cpp example1.dia
	@echo dia2code -t java example1.dia

clean:
	git clean -dfx

# END OF FILE
