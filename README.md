# dotfiles

This repository is used to store my configuration files with a quick installation guide for my personal needs. You probably don't want the full configuration, feel free to check only the configuration files you are interested in.

## Installation

1. Install required dependencies:

    ```bash
    sudo pacman -S base-devel git stow
    ```

2. Install [`paru`](https://github.com/Morganamilo/paru) for managing packages from the [Arch User Repository (AUR)](https://aur.archlinux.org/):

    ```bash
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
    cd ..
    rm -rf paru
    ```

3. Clone this repository:

    ```bash
    git clone https://github.com/siotonic/dotfiles.git && cd dotfiles
    ```

4. Create symbolic links*:

    ```bash
    stow --adopt --no-folding .
    ```

5. If necessary, you can cancel changes to force usage of the configuration of this repository:

    ```bash
    git restore .
    ```

> ***\* NOTE:** By default, `stow` command creates symbolic links inside the parent directory. Therefore, it is recommended to clone this repository directly inside home directory.*
