# -------------------------------------------
# Theme: Catppuccin Mocha
# Preferred Background: #1e1e2e
# -------------------------------------------

# Palette
set -l text      cdd6f4
set -l surface0  313244
set -l overlay1  7f849c
set -l flamingo  f2cdcd
set -l pink      f5c2e7
set -l red       f38ba8
set -l maroon    eba0ac
set -l peach     fab387
set -l yellow    f9e2af
set -l green     a6e3a1
set -l teal      94e2d5
set -l blue      89b4fa
set -l gray      6c7086

# Syntax Highlighting
set -g fish_color_normal          $text
set -g fish_color_command         $blue
set -g fish_color_keyword         $red
set -g fish_color_quote           $green
set -g fish_color_redirection     $pink
set -g fish_color_end             $peach
set -g fish_color_error           $red
set -g fish_color_param           $flamingo
set -g fish_color_valid_path      $flamingo --underline
set -g fish_color_option          $flamingo
set -g fish_color_comment         $overlay1
set -g fish_color_operator        $pink
set -g fish_color_escape          $maroon
set -g fish_color_autosuggestion  $gray
set -g fish_color_cancel          $red

# Selection & Search
set -g fish_color_selection     --background=$surface0
set -g fish_color_search_match  --background=$surface0

# Prompt
set -g fish_color_cwd          $yellow
set -g fish_color_cwd_root     $yellow
set -g fish_color_user         $teal
set -g fish_color_host         $blue
set -g fish_color_host_remote  $green

# Nonzero Exit Code
set -g fish_color_status  $red

# Completion Pager
set -g fish_pager_color_prefix       $pink
set -g fish_pager_color_progress     $gray
set -g fish_pager_color_completion   $text
set -g fish_pager_color_description  $gray
