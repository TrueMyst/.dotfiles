# -------------------------------
#             Exports
# -------------------------------

# Applications
set -gx EDITOR "nvim"
set -gx BROWSER "firefox"
set -gx MANPAGER "nvim +Man!"

# Colorscheme for tools like eza, fd & etc
set -gx LS_COLORS (vivid generate catppuccin-mocha)

# Additional Variables
set -gx FZF_DEFAULT_OPTS $(cat $HOME/.config/fzf/config)
set -gx STARSHIP_CONFIG $HOME/.config/starship/starship.toml

# PATH Environment
fish_add_path \
  "$HOME/.local/bin/" \
  "$HOME/.config/scripts/"
