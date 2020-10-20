SHELL := /bin/bash
ORIG_CONF_FILE=$(shell pwd)/.tmux.conf
CONF_FILE=$(HOME)/.tmux.conf
PROFILE_FILE=$(HOME)/.profile
ALIAS_FILE=$(HOME)/.bashrc

install:
	@if test ! -f $(CONF_FILE); \
		then ln -s $(ORIG_CONF_FILE) $(CONF_FILE); \
		if test -f $(PROFILE_FILE); then \
		echo '# if [ -n "$$VIRTUAL_ENV" ]; then . "$$VIRTUAL_ENV/bin/activate"; fi # for tmux' >> $(PROFILE_FILE); fi; \
		if test -f $(ALIAS_FILE); then \
		echo "alias tm='tmux attach || tmux new'" >> $(ALIAS_FILE); fi; \
	fi

install-server: install
	@if test -f $(PROFILE_FILE); then \
	echo '[ -z "$$TMUX"   ] && { tmux attach || tmux new && exit; }' >> $(PROFILE_FILE); fi; \

.PHONY: install install-server
