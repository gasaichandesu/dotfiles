# Dotfiles

This repository is designed to inject required dotfiles using stow.

Example usage:
```bash
stow vim
```

As a result, a symlink in home folder will be created with same structure as in vim folder

# Bootstrap ZSH
Two ZSH plugins are installed externally. Steps to install:
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

```

