.PHONY: install
install:
	make install-paru
	make install-packages

.PHONY: install-paru
install-paru:
	git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si && cd ..	&& rm -rf paru

.PHONY: install-packages
install-packages:
	sudo pacman -S --needed --noconfirm git less tree stow hyprlock playerctl pavucontrol
	paru -Sa --needed --noconfirm hyprshot

.PHONY: links
links:
	stow . --adopt --no-folding --target ~ --verbose

.PHONY: restore
restore:
	git restore .

