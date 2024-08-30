.PHONY: clean

recipe-book.pdf: recipe-book.tex
	lualatex recipe-book.tex \
	&& lualatex recipe-book.tex

clean:
	rm -f recipe-book.aux \
		  recipe-book.idx \
          recipe-book.ilg \
          recipe-book.ind \
          recipe-book.log \
          recipe-book.out \
          recipe-book.toc \
          texput.log

dist-clean:
	-rm recipe-book.pdf
