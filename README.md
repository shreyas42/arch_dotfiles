## Dotfiles for a (hopefully) portable arch linux install
Some files need to be manually created:
- `.zshenv`: located inside the `$HOME` directory

Please ensure that `$HOME/.config` is created before creating the symlinks.

Use GNU stow to setup the symlinks correctly, example:
`cd arch_dotfiles; stow zsh`
