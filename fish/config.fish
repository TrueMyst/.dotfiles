# -------------------------------
#       Fish Configurations
# -------------------------------

set modules $HOME/.config/fish/conf.d/*.fish

# Source the modules in conf.d
if status is-interactive
  for module in $modules; source $modules; end
end

# Allows Ctrl+F to be available in vim motion
for mode in insert default visual
    bind -M $mode \cf forward-char
end
