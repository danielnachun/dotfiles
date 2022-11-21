This repository contains my set of personal dotfiles managed by [chezmoi](https://github.com/twpayne/chezmoi) for Linux and macOS.  The only requirements are:

- `curl` (`wget` will be added later)
- On Linux, glibc >= 2.17 and kernel >= 3.2 (required by conda and Rust)
- On macOS, any version officially supported by Apple (required by Homebrew)

To install use `$ sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME`, which will automatically download a pre-built `chezmoi` binary for your platform and clone the dotfiles in this repo into the correct locations.

Future additions:
- [ ] Actually use Homebrew Brewfile (need to see how it behaves when some packages are already installed)
- [ ] Automatically configure iTerm2 with a dynamic profile
- [ ] Set up a minimal R environment
- [ ] Use `packer.vim` instead of `vim-plug`
- [ ] Write a YouCompleteMe interface for Nvim-R
