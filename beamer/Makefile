DOCS := \
	beamer

all: $(DOCS)

$(DOCS): %: %.pdf

%.pdf: %.org org-beamer.el
	@emacs --batch --no-init-file -l org-beamer.el $< -f org-beamer-export-to-pdf

clean:
	@for doc in $(DOCS); do \
		$(RM) -frv $${doc}.pdf \
			$${doc}.tex $${doc}.ver $${doc}.hst $${doc}.tex~ _minted-$${doc}; \
	done

.PHONY: $(DOCS) all clean
