EMACS=emacs
ELISP_DIR=elisp
ELPA_DIR=elpa

LOADPATH=$(addprefix -L ,\
	$(shell ls -alR ./$(ELPA_DIR) | grep ':$$' | sed 's/://g'))

FILESTOCLEAN=compile-elisp compile-elpa
EVAL="(setq byte-compile-warnings \
	'(not nresolved free-vars callargs redefine obsolete \
          noruntime cl-functions interactive-only))"

all: elisp elpa

elisp: compile-elisp

elpa: compile-elpa

compile-elisp:
	$(EMACS) -Q -L $(ELISP_DIR) -batch -eval $(EVAL) \
		-eval '(byte-recompile-directory "./$(ELISP_DIR)" 0)'
	@touch $@

compile-elpa:
	$(EMACS) -Q $(LOADPATH) -batch -eval $(EVAL) \
		-eval '(byte-recompile-directory "./$(ELPA_DIR)" 0)'
	@touch $@

clean:
	rm -rf $(FILESTOCLEAN)
	find ./ -name "*.elc" -exec rm -rf {} \;

.PHONY: all elisp elpa clean
