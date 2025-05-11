.PHONY: install
install:
	make paru
	make utils
	make hyprland
	make terminal

.PHONY: paru
paru:
	git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si && cd .. && rm -rf paru

.PHONY: utils
utils:
	sudo pacman -S --needed --noconfirm \
		man \
		git \
		less \
		tree \
		stow \
		noto-fonts-emoji \
		ttf-jetbrains-mono-nerd \
		fastfetch \
		neovim \
		lua-language-server

.PHONY: hyprland
hyprland:
	sudo pacman -S --needed --noconfirm \
		hyprlock \
		hyprpaper \
		playerctl \
		pavucontrol \
		xdg-desktop-portal-gtk \
		rofi-wayland
	paru -Sa --needed --noconfirm hyprshot

.PHONY: terminal
terminal:
	sudo pacman -S --needed --noconfirm ghostty fish
	chsh -s $(which fish)

.PHONY: links
links:
	stow . --adopt --no-folding --target ~ --verbose

.PHONY: restore
restore:
	git restore .
