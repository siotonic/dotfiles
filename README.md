# dotfiles

This repository is used to store my configuration files for my personnal needs. You probably don't want the full configuration, feel free to check only the configuration files you are interested in.

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

4. Create symbolic links:

    ```bash
    stow --adopt --no-folding .
    ```

5. If necessary, cancel changes / diff to force usage of the configuration of this repository:

    ```bash
    git restore .
    ```

> ***NOTE:** By default, `stow` command create symbolic links inside the parent directory. Therefore, it is recommended to clone this repository inside home directory.*
