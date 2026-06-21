# -------------------------------
#             Startup
# -------------------------------

# Fish VI keybinds
fish_vi_key_bindings

# Cowsay & Fortune
cowsay $(fortune -as)

# Essential Tools
starship init fish | source
zoxide init --cmd cd fish | source

# Global Virtual Environment for Python
set PYTHON_VENV $HOME/.python-venv

if not test -d $PYTHON_VENV
  echo "Creating a python virtual environment."; python3 -m venv $PYTHON_VENV
end

source $PYTHON_VENV/bin/activate.fish
