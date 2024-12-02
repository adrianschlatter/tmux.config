.PHONY: all clean

all:
	@echo "Install tmux plugin manager tpm"
	@if [ ! -d ~/.config/tmux/plugins/tpm ]; then \
		git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm; \
	fi
	@echo "Install catppuccin"
	mkdir -p ~/.config/tmux/plugins/catppuccin
	git clone https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
	cd ~/.config/tmux/plugins/catppuccin/tmux && git checkout a0119d25283ba2b18287447c1f86720a255fb652; \

install:
	@echo "Source tmux.conf"
	tmux source-file ~/.config/tmux/tmux.conf
	@echo "Hit <prefix> + I to fetch the plugins"

clean:
	@echo "Remove tmux plugin manager tpm"
	rm -rf ~/.config/tmux/plugins/tpm
	@echo "Remove catppuccin"
	rm -rf ~/.config/tmux/plugins/catppuccin
