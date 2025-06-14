.PHONY: install
install:
	make paru
	make packages
	make terminal

.PHONY: paru
paru:
	git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si && cd .. && rm -rf paru

.PHONY: packages
packages:
	sudo pacman -S --needed --noconfirm \
		man \
		less \
		stow \
		noto-fonts-emoji \
		ttf-jetbrains-mono-nerd \

.PHONY: terminal
terminal:
	sudo pacman -S --needed --noconfirm fish
	chsh -s /usr/bin/fish

.PHONY: links
links:
	stow . --adopt --no-folding --target ~ --verbose
