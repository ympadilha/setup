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

`config/tmux/tmux.conf`

```
# Bind r to reload source-file
unbind r
bind r source-file ~/.config/tmux/tmux.conf

# remap prefix from 'C-b' to 'C-space;'
unbind C-b
set-option -g prefix C-space;
bind-key C-space; send-prefix

# Status bar
set-option -g status-position bottom

# Start window numbering at 1
set -g base-index 1

# Start pane numbering at 1
set -g pane-base-index 1

# Misc
set -g default-terminal "tmux-256color"
set -g @catppuccin_window_status_style "rounded"
set -g @catppuccin_window_text " #W"
set -g @catppuccin_window_current_text "#W"
set -g @catppuccin_window_default_text "#W"

## Little hack to count the window correctly (since it starts with 1 now)
set -g @catppuccin_window_number "#(expr #I + 1)"

# Make the status line pretty and add some modules
set -g status-right-length 100
set -g status-left-length 100
set -g status-left ""
set -g status-right "#{E:@catppuccin_status_application}"
set -agF status-right "#{E:@catppuccin_status_cpu}"
set -ag status-right "#{E:@catppuccin_status_session}"
set -ag status-right "#{E:@catppuccin_status_uptime}"
set -agF status-right "#{E:@catppuccin_status_battery}"

# Plugins
set -g @plugin 'tmux-plugins/tpm'

set -g @plugin 'catppuccin/tmux'

run '~/.config/tmux/plugins/tpm/tpm'
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
