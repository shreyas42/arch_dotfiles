# Dotfiles for a (hopefully) portable arch linux install
Some files need to be manually created:
- `.zshenv`: located inside the `$HOME` directory

Please ensure that `$HOME/.config` is created before creating the symlinks.

Use GNU stow to setup the symlinks correctly, example:
`cd arch_dotfiles; stow zsh`


## Support for Keychron K2
Check out this fabulous [link here.](https://gist.github.com/andrebrait/961cefe730f4a2c41f57911e6195e444)   
For reference, I've set the `hid_apple` mode to 2, meaning function keys act as function keys by default.
Pressing the fn modifier, enables the usage of multimedia keys.

For ArchLinux, just replace the initram-fs commands with `sudo mkinitcpio -P`, which will re-generate the initramfs for all kernel presets.
