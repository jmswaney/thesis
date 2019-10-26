PY=python
PANDOC=pandoc

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/source
OUTPUTDIR=$(BASEDIR)/output
TEMPLATEDIR=$(INPUTDIR)/templates
STYLEDIR=$(BASEDIR)/style

BIBFILE1=$(INPUTDIR)/references_chapter_1.bib
BIBFILE2=$(INPUTDIR)/references_chapter_2.bib
BIBFILE3=$(INPUTDIR)/references_chapter_3.bib
BIBFILE4=$(INPUTDIR)/references_chapter_4.bib

help:
	@echo ' 																	  '
	@echo 'Makefile for the Markdown thesis                                       '
	@echo '                                                                       '
	@echo 'Usage:                                                                 '
	@echo '   make html                        generate a web version             '
	@echo '   make pdf                         generate a PDF file  			  '
	@echo '   make docx	                       generate a Docx file 			  '
	@echo '   make tex	                       generate a Latex file 			  '
	@echo '                                                                       '
	@echo ' 																	  '
	@echo ' 																	  '
	@echo 'get local templates with: pandoc -D latex/html/etc	  				  '
	@echo 'or generic ones from: https://github.com/jgm/pandoc-templates		  '

pdf:
	pandoc "$(INPUTDIR)"/*.md \
	-o "$(OUTPUTDIR)/thesis.pdf" \
	-H "$(STYLEDIR)/preamble.tex" \
	--template="$(STYLEDIR)/template.tex" \
	--bibliography="$(BIBFILE1)" 2>pandoc.log \
	--bibliography="$(BIBFILE2)" 2>pandoc.log \
	--bibliography="$(BIBFILE3)" 2>pandoc.log \
	--csl="$(STYLEDIR)/ref_format.csl" \
	--highlight-style pygments \
	-V fontsize=12pt \
	-V papersize=a4paper \
	-V documentclass=report \
	-F pandoc-citeproc \
	--lua-filter section-refs.lua \
	-N \
	--pdf-engine=xelatex \
	--verbose

docker:
	docker run -it -v "$(BASEDIR):/data" pandoc \
	sh -c 'pandoc source/*.md \
	-o "output/thesis.pdf" \
	-H "style/preamble.tex" \
	--template="style/template.tex" \
	--bibliography="source/references_chapter_1.bib" \
	--bibliography="source/references_chapter_2.bib" \
	--bibliography="source/references_chapter_3.bib" \
	--bibliography="source/references_chapter_4.bib" \
	--csl="style/ref_format.csl" \
	--highlight-style pygments \
	-V fontsize=12pt \
	-V papersize=a4paper \
	-V documentclass=report \
	-F pandoc-citeproc \
	--lua-filter section-refs.lua \
	-N \
	--pdf-engine=xelatex \
	--verbose'

tex:
	pandoc "$(INPUTDIR)"/*.md \
	-o "$(OUTPUTDIR)/thesis.tex" \
	-H "$(STYLEDIR)/preamble.tex" \
	--bibliography="$(BIBFILE1)" \
	--bibliography="$(BIBFILE2)" \
	--bibliography="$(BIBFILE3)" \
	-V fontsize=12pt \
	-V papersize=a4paper \
	-V documentclass=report \
	-N \
	--csl="$(STYLEDIR)/ref_format.csl" \
	--latex-engine=xelatex

docx:
	pandoc "$(INPUTDIR)"/*.md \
	-o "$(OUTPUTDIR)/thesis.docx" \
	--bibliography="$(BIBFILE1)" \
	--bibliography="$(BIBFILE2)"\
	--bibliography="$(BIBFILE3)" \
	--csl="$(STYLEDIR)/ref_format.csl" \
	--toc

html:
	pandoc "$(INPUTDIR)"/*.md \
	-o "$(OUTPUTDIR)/thesis.html" \
	--standalone \
	--template="$(STYLEDIR)/template.html" \
	--bibliography="$(BIBFILE1)" \
	--bibliography="$(BIBFILE2)" \
	--bibliography="$(BIBFILE3)" \
	--csl="$(STYLEDIR)/ref_format.csl" \
	--include-in-header="$(STYLEDIR)/style.css" \
	--toc \
	--number-sections
	rm -rf "$(OUTPUTDIR)/source"
	mkdir "$(OUTPUTDIR)/source"
	cp -r "$(INPUTDIR)/figures" "$(OUTPUTDIR)/source/figures"

.PHONY: help pdf docx html tex
