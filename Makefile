EMACS=emacs
ELISP_DIR=elisp
ELPA_DIR=elpa

FILESTOCLEAN=compile-elisp compile-elpa
EVAL="(setq byte-compile-warnings \
	'(not nresolved free-vars callargs redefine obsolete \
          noruntime cl-functions interactive-only))"

define compile-dir
	@if [ -e $1/Makefile ]; then\
		cd $1; make; \
	else \
		$(EMACS) -Q -L $1 -batch -eval $(EVAL) -f batch-byte-compile $1/*.el; \
	fi

endef

define clean-dir
	@if [ -e $1/Makefile ]; then\
		cd $1; make clean; \
	else \
		rm -rf $1/*.elc; \
	fi

endef

all: elisp elpa

elisp: compile-elisp

elpa: compile-elpa

compile-elisp:
	$(call compile-dir, $(ELISP_DIR))
	$(foreach d,\
		$(shell ls -F $(ELISP_DIR) | grep / | sed -e "s/\///g"),\
		$(call compile-dir, $(ELISP_DIR)/$(d)))
	@touch $@

compile-elpa:
	$(foreach d,\
		$(filter-out archives,\
			$(shell ls -F $(ELPA_DIR) | grep / | sed -e "s/\///g")),\
		$(call compile-dir, $(ELPA_DIR)/$(d)))
	@touch $@

clean:
	$(call clean-dir, $(ELISP_DIR))
	$(foreach d,\
		$(shell ls -F $(ELISP_DIR) | grep / | sed -e "s/\///g"),\
		$(call clean-dir, $(ELISP_DIR)/$(d)))
	$(foreach d,\
		$(filter-out archives,\
			$(shell ls -F $(ELPA_DIR) | grep / | sed -e "s/\///g")),\
		$(call clean-dir, $(ELPA_DIR)/$(d)))
	rm -rf $(FILESTOCLEAN)

.PHONY: all elisp elpa clean
