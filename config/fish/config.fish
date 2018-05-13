# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# alias less='less -r'                        # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in color

# Some shortcuts for different directory listings
alias ls='ls -FHG'
alias ll='ls -l'

# Update and Upgrade Homebrew
alias buu='brew update; and brew upgrade; and brew cu -acy; and brew prune; and brew cleanup; and brew doctor'
alias buf='brew bundle --file=~/.Brewfile'

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# Apps
alias vsc=code
alias tower=gittower
