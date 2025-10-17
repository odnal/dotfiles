#!/bin/bash
# Symlink config to target environment
set -eou pipefail

DOTFILES_HOME="$HOME/dotfiles"
DOTFILES_BACKUP="$HOME/.dotfiles_bak"

# TODO: We want to implement a force flag or have some sort of smart mechanism for this scenario.
backup_dotfiles() {
    if [ ! -e "$DOTFILES_BACKUP" ]; then
        echo "'${DOTFILES_BACKUP}' already exists. Are you sure you want to overwrite this file? [y/n]: "
        read response 
        if [ $response == 'y' ]; then
            echo "Overwriting '${DOTFILES_BACKUP}'..."
            # TODO: may need to rm -rf, mkdir, and cp? Something quick.
            #mkdir -p $DOTFILES_BACKUP
        #else
        #    echo "Aborting!"
        #    exit 1
        fi
    else
        echo "Creating '$HOME/.dotfiles_bak'"
        mkdir -p "$DOTFILES_BACKUP"
        echo "Backing up dotfiles..."
        cp -r "$PWD" "$DOTFILES_BACKUP"
        if [ $? != 0 ]; then
            echo "Error backing up $PWD"
            exit 1
        else
            echo "'$PWD' backed up to '$DOTFILES_BACKUP'"
        fi
    fi
}

link() {
    src="$DOTFILES_HOME/$1"
    dest="$HOME/$2"

    # backup $dest first if it exists and is not already symlinked
    if [ -e "$dest" ] && [ ! -L "$dest" ]; then
        echo "Backing up current $dest to $DOTFILES_BACKUP"
        mkdir -p "$DOTFILES_BACKUP/.config_bak"
        cp -r "$dest" "$DOTFILES_BACKUP/.config_bak"
    fi

    if [ -e "$dest" ]; then
        rm -rf "$dest"
    fi

    # link files
    ln -sf "$src" "$dest"
    echo "Linked $src -> $dest" 
}

#backup_dotfiles
link "config3/i3/config" ".config/i3/config"
link "config3/nvim" ".config/nvim"
link "config3/.vimrc" ".vimrc"
link "config3/.tmux.conf" ".tmux.conf"
