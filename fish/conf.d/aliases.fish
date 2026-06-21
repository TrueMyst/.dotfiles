# -------------------------------
#             Aliases
# -------------------------------

# Basic
alias cls "clear"
alias reload "source $HOME/.config/fish/config.fish"

# Pacman
alias pkgs "paru -Qqe | sort | bat"

# CD Paths
alias ..  "cd .."
alias ... "cd ../.."

# Eza
alias lt "exa -T --icons"
alias ls "exa -x --icons --group-directories-first"
alias ll "exa -lah --icons --group-directories-first"

# Tools
alias nv "nvim"
alias lg "lazygit"

# Fetch
alias cn "catnap"
alias ff "fastfetch"

# Bat Tools
alias bg "batgrep -C=0 --no-separator"

# Abbreviations
abbr -a --position anywhere -- --help "--help | bat -plhelp"
