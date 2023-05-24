# Dotfiles
My OS configuration files, used to quickly set up a new environment and keep multiple environments consistent with my preferences as a developer.

Files are managed with GNU Stow, which allows me to keep things organised and create all the necessary symlinks with a single command -- `stow .`

# Installation
If setting up a fresh machine, make sure to first:
- install NeoVim 0.9.0
- install NvChad
- install git
- clone this repo to your home directory

Then, run stow:
`stow .`
Note that if you cloned this repo to anywhere other than $HOME/dotfiles, you should give paths to stow instead, e.g. `stow -t ~`. If you want to be more selective about what gets linked, stow has that covered too. See its help page for more specific ways to use it.

There are some other steps too, next time I do a fresh install I'll expand on this.
To my future self struggling to get this working, go watch the NvChad and Tmux videos by Dreams of Code on YouTube.

## Inspiration
I was originally inspired by @holman's dotfiles, which I modified and used for many years. Now, as I'm beginning to make use of neovim and a more terminal-based development approach, I found @dreamsofcode-io's dotfiles and YouTube videos to be an incredibly useful.

## Work in progress
This repo is still very much a work in progress. While I'm very happy with the current NeoVim (more specifically NvChad) setup, I have yet to port across my other more general dotfiles, which include things like brew packages, MacOS defaults and, notably, my prompt customisations.

As mentioned in the Inspiration section, I currently combine two different dotfiles methodologies. This repository is a much faster and lighter version. As I consider incorporating more of my original dotfile customisations it may become necessary to maintain a separate branch that's suitable for cloning onto remote servers and containers.

## Environment setup
More things that need to be in place to 1-1 replicate my dev environment on a new machine:

### Prepare the terminal
This is only required for the host machine, it's not necessary to set up on remote machines.

#### Install fonts
- Install a nerd font. Currently I use JetBrains Mono. See https://github.com/ryanoasis/nerd-fonts/tree. For MacOS, install with Brew. If using a different font, update `.config/alacritty/alacritty.yml`.

### Setup Alacritty theme
I use catppuccin for the terminal, nvim, and anything else I can.
Go to https://github.com/catppuccin/alacritty and follow the steps, including the part in the FAQs about colors in tmux.
