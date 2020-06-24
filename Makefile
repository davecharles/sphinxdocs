# Makefile for Sphinx Docs.
.PHONY: help clean compose-build compose-up local-build

# Options can also be set as env vars.
SPHINXOPTS    = -j auto
SPHINXBUILD   = sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

help:
	@echo "== Targets ========================================================="
	@echo "Use make with one of the following general targets:"
	@echo "clean                      - Clean generated files"
	@echo "compose-build              - Docker compose build"
	@echo "compose-up                 - Docker compose up"
	@echo " "
	@echo "== Sphinx specific targets ========================================="
	@echo "Use make with one of the following SPHINX targets:"
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

clean:
	rm -rf build/

compose-build:
	@echo "compose-build not implemented"

compose-up:
	@echo "compose-up not implemented"

%:
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
