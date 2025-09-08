# Setup

For now just storing the non-trivial ones here (the ones I'll mostly forget eventually).

## Terminal color scheme

https://iterm2colorschemes.com/

Arthur is nice.

## Fzf for sweet terminal experience

https://github.com/junegunn/fzf

Don't forget to run the `install` steps after.

## Jenv

https://developer.bring.com/blog/configuring-jenv-the-right-way/

## Volta

https://volta.sh/

## iTerm key bindings

https://gist.github.com/squarism/ae3613daf5c01a98ba3a

## Tmux

`.tmux.conf`

```
# remap prefix from 'C-b' to 'C-space;'
unbind C-b
set-option -g prefix C-space;
bind-key C-space; send-prefix

# Start window numbering at 1
set -g base-index 1

# Start pane numbering at 1
setw -g pane-base-index 1
```

## Exa (better ls)

https://github.com/ogham/exa

Don't forget to `export LS_COLORS={LS_COLORS FILE HERE}`
Yes it starts with the `bd=`

### Shortcuts

alias ll='exa -la --icons'
alias ls='exa'

### Fonts

#### Nerdfonts

- `brew install --cask font-jetbrains-mono-nerd-font`
- In iTerm2, go to Preferences → Profiles → Text
- JetBrainsMonoNL Nerd Font Mono

## Ripgrep (rg)

https://github.com/BurntSushi/ripgrep

## Bat (better cat)

https://github.com/sharkdp/bat
