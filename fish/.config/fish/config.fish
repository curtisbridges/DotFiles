# Setup autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
[ -f /usr/share/autojump/autojump.fish ]; and source /usr/share/autojump/autojump.fish

# Install Starship
starship init fish | source

