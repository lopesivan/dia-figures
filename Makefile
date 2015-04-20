SRCS = $(shell ls *.dia)
EXT  = png
OUT  = $(foreach s,$(SRCS), $(addprefix $(s:.dia=.), $(EXT)))

PNG  = $(SRCS:.dia=.png)

TARGETS   = $(PNG)

all: $(TARGETS)

###
### ls *.tex| sed 's/.*/echo `basename & .tex`.pdf: &/'| sh | sed 's/.*/&\n\t\$(PDFLATEX) \$^/'>> Makefile
###

# dia -> png
%.png:  %.dia
	dia --export=$@ --size=600x --filter=png $^

clean:
	/bin/rm -rf $(TARGETS) *~ $(OUT)

# END OF FILE
