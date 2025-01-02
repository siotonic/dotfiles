# dotfiles

This repository is used to store my configuration files for my personnal needs. Feel free to check only the configuration files you are interested in.

## Installation

1. Install minimum dependencies:

    ```bash
    sudo pacman -S git stow
    ```

2. Clone this repository:

    ```bash
    git clone https://github.com/siotonic/dotfiles.git && cd dotfiles
    ```

3. Install the rest of the required dependencies (desktop environment specific):

    ```bash
    xargs -a packages.list sudo pacman -S
    ```

4. Create symlinks to files inside this repository :

    ```bash
    stow --adopt --no-folding .
    ```

5. If necessary, cancel changes / diff to force usage of the configuration of this repository:

    ```bash
    git restore .
    ```
