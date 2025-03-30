# dotfiles

This repository is used to store my configuration files for my personal needs. You probably don't want the full configuration, feel free to check only the configuration files you are interested in.

## Installation

1. Install required dependencies:

    ```bash
    sudo pacman -Sy git stow
    ```

2. Clone this repository:

    ```bash
    git clone https://github.com/siotonic/dotfiles.git && cd dotfiles
    ```

3. Create symbolic links*:

    ```bash
    stow --adopt --no-folding .
    ```

4. If necessary, you can cancel changes to force usage of the configuration of this repository:

    ```bash
    git restore .
    ```

> ***\* NOTE:** By default, `stow` command creates symbolic links inside the parent directory. Therefore, it is recommended to clone this repository directly inside home directory.*

