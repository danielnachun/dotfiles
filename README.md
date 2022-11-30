This repository contains my set of personal dotfiles managed by [chezmoi](https://github.com/twpayne/chezmoi) for Linux and macOS.  The only requirements are:

- `curl` (`wget` will be added later)
- On Linux, `glibc` >= 2.17 and kernel >= 3.2 (required by Rust and some other `conda` packages)
- On macOS, any version officially supported by Apple (for Homebrew)

To install use:
```
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply -b $HOME/.local/bin danielnachun 
```
which will automatically download a pre-built `chezmoi` binary for your platform and clone the dotfiles in this repo into the correct locations.

Beyond simply copying the dotfiles, I also use the [scripting functionality](https://www.chezmoi.io/user-guide/use-scripts-to-perform-actions/) of `chezmoi` to bootstrap installing all necessary CLI tools for a complete environment.  The goal is to fully automate configuring Linux and macOS with a focus on using macOS on a personal computer with sudo access as a "gateway" to a Linux HPC system which does not have sudo access.

Future additions:
- [ ] Actually use Homebrew Brewfile (need to see how it behaves when some packages are already installed)
- [ ] Automatically configure iTerm2 with a dynamic profile
- [ ] Set up a minimal R environment
- [ ] Use `packer.vim` instead of `vim-plug`
- [ ] Write a YouCompleteMe interface for Nvim-R
