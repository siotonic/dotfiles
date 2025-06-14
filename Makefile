.PHONY: install
install:
	make paru
	make packages
	make terminal
	make hyprland

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
		ttf-jetbrains-mono-nerd

.PHONY: terminal
terminal:
	sudo pacman -S --needed --noconfirm fish alacritty
	chsh -s /usr/bin/fish

.PHONY: hyprland
hyprland:
	sudo pacman -S --needed --noconfirm \
		alacritty \
		hyprshot \
		hyprlock \
		playerctl \
		xdg-desktop-portal-gtk

.PHONY: links
links:
	stow . --adopt --no-folding --target ~ --verbose
