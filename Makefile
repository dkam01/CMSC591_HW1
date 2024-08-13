

# Detect OS and set RM command accordingly

RM = rm -f
CAT = cat
SEP = /

ifeq ($(OS),Windows_NT)
	RM = del /Q
	CAT = type
	SEP = \\
endif

files_to_clean := .$(SEP)docs$(SEP)gantt.html .$(SEP)docs$(SEP)mermaid.html .$(SEP)docs$(SEP)graphviz.html .$(SEP)src$(SEP)report.html \
	.$(SEP)docs$(SEP)index.html

.PHONY: default
default: 
	@echo No default target.  See Makefile for more details!

.PHONE: clean
clean:
	@echo removing $(files_to_clean)
	@-$(RM) $(files_to_clean)
	@echo Done.
	