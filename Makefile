# File........: Makefile
# Summary.....: Basic targets
# Created.....: February 17, 2025 
# Authors.....: Alex A. Davronov <al.neodim@gmail.com> (2025-)
# Repository..: N/A
# Description.: Combines LICENSE into README.md 
# Usage.......: $ make -r 

.ONESHELL:

README.md: README.md.in LICENSE
	@LICENSE_TEXT="$$(cat LICENSE)" envsubst < $< > $@ 

.PHONY:
clean: README.md
	rm -v -i $^
