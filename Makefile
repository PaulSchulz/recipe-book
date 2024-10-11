.PHONY: deps clean dist-clean

recipe-book.pdf: recipe-book.tex recipes
	# Repeat to pickup table of contects and index
	lualatex recipe-book.tex \
	&& lualatex recipe-book.tex

clean:
	-rm -f recipe-book.aux \
		  recipe-book.idx \
          recipe-book.ilg \
          recipe-book.ind \
          recipe-book.log \
          recipe-book.out \
          recipe-book.toc \
          texput.log

dist-clean: clean
	-rm recipe-book.pdf

deps:
	sudo apt install texlive-full texlive-luatex
