.PHONY: all clean

all:
	@echo "Install tmux plugin manager tpm"
	@if [ ! -d ~/.config/tmux/plugins/tpm ]; then \
		git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm; \
	fi

install: all
	@echo "Source tmux.conf"
	tmux source-file ~/.config/tmux/tmux.conf
	@echo "Hit <prefix> + I to fetch the plugins"

clean:
	@echo "Remove tmux plugin manager tpm"
	rm -rf ~/.config/tmux/plugins/tpm
