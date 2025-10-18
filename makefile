TEX = pandoc
src = template.tex details.yml
FLAGS = --pdf-engine=xelatex

output.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS) --quiet

.PHONY: clean
clean :
	rm output.pdf
