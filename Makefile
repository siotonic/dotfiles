.PHONY: install
install:
	make paru
	make utils
	make hyprland
	make terminal

.PHONY: paru
paru:
	git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si && cd ..	&& rm -rf paru

.PHONY: utils 
utils:
	sudo pacman -S --needed --noconfirm git less tree stow noto-fonts-emoji ttf-jetbrains-mono

.PHONY: hyprland
hyprland:
	sudo pacman -S --needed --noconfirm hyprlock playerctl pavucontrol
	paru -Sa --needed --noconfirm hyprshot

.PHONY: terminal
terminal:
	sudo pacman -S --needed --noconfirm fish 
	chsh -s $(which fish)

.PHONY: links
links:
	stow . --adopt --no-folding --target ~ --verbose

.PHONY: restore
restore:
	git restore .
