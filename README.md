ZSH

    rm ~/.zshrc
    ln -s ~/dotfiles/zshrc ~/.zshrc
    ln -s ~/dotfiles/joelcogen.zsh-theme ~/.oh-my-zsh/themes
    exec $SHELL

Git

    ln -s ~/dotfiles/gitconfig ~/.gitconfig

Ghostty

    mkdir -p ~/.config/ghostty
    ln -s ~/dotfiles/ghostty-config ~/.config/ghostty/config

