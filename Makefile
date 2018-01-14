install:
	@ln -s `pwd`/.tmux.conf $(HOME)/.tmux.conf
	@echo 'if [ -n "$$VIRTUAL_ENV" ]; then . "$$VIRTUAL_ENV/bin/activate"; fi # for tmux' >> $(HOME)/.bashrc

.PHONY: install
	
