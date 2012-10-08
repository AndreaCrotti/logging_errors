SPHINXOPTS    =
SPHINXBUILD   = sphinx-build2
PAPER         =
BUILDDIR      = logging_errors_slides

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   =  $(PAPEROPT_$(PAPER)) $(SPHINXOPTS)
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) .
DROP = $(HOME)/Dropbox/Public/talks

.PHONY: logging_errors clean

all: logging_errors

upload:
	cp -Rv $(BUILDDIR) $(DROP)/

logging_errors:
	$(SPHINXBUILD) -b slides $(ALLSPHINXOPTS) . $(BUILDDIR)

clean:
	-rm -rf $(BUILDDIR)
