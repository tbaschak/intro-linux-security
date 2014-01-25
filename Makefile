SRCS		= index.md
PDFOBJS		= $(SRCS:.md=.pdf)
SLIDEOBJS	= $(SRCS:.md=.html)
PANDOC		= pandoc
PFLAGS		= -t beamer

.PHONY: all clean slides pdf 

all: clean slides $(PDFOBJS)
	@echo Slides and PDF generated

%.pdf:	%.md
	$(PANDOC) $(PFLAGS) $< -o $@

pdf: cleanpdf $(PDFOBJS)

slides: cleanslides
#	pandoc -s -S -i -t dzslides --mathjax $(SRCS) -o $(SLIDEOBJS)
#	pandoc --self-contained -s -S -t slidy --mathjax $(SRCS) -o $(SLIDEOBJS)   ## nice and simple

#	pandoc --self-contained -s -S -i -t revealjs --mathjax $(SRCS) -o $(SLIDEOBJS)
	$(PANDOC) -V theme=default -s -S -t revealjs --mathjax $(SRCS) -o $(SLIDEOBJS)

clean: cleanpdf cleanslides

cleanpdf:
	@rm -f $(PDFOBJS)

cleanslides:
	@rm -f $(SLIDEOBJS) 

gh-pages: slides pdf
	@git add $(PDFOBJS) $(SLIDEOBJS)
	@git commit -m 'generate latest slides via Makefile'
	@git push -u origin master
	@git checkout gh-pages
	@git checkout master -- $(SLIDEOBJS)
	@git checkout master -- $(PDFOBJS)
	@git add $(PDFOBJS) $(SLIDEOBJS)
	@git commit -m 'pull in latest generated slides from master branch'
	@git push -u origin gh-pages
	@git checkout master
	@echo Slides generated and pushed to gh-pages branch
