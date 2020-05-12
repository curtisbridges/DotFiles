"basic settings
set nocompatible

"Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

"turn on syntax highlighting
syntax on

"Add vim8 packages; NOTE: this is the airline theme, not vim theme
"packadd! onedark.vim

"set guifont=SFMonoPowerline-Regular:h13

"let g:airline_powerline_fonts = 1
"let g:airline_theme='onedark'

"Let's make it pretty
"colorscheme onedark
set background=dark "use dark background with terminal
set laststatus=2

"directory handling
set autochdir "always change working directory to the buffer's

"backups
set nowritebackup
"set autowrite
set noswapfile
set nobackup

"indentation settings
set expandtab "no tab characters
set smarttab
set shiftwidth=4 "auto-indent amount when using cindent, >>, << and stuff like that
set softtabstop=4 "when hitting tab or backspace, how many spaces should a tab be (see expandtab)
set tabstop=4
set shiftround "when at 3 spaces, and I hit > ... go to 4, not 5

"set ignorecase "case insensitive by default
set smartcase "if there are caps, go case-sensitive
set infercase "case inferred by default

set nowrap "do not wrap line

set showmatch "show matching brackets
set matchtime=5 "how many tenths of a second to blink matching brackets
set list "we want to show tabs, to ensure we get them out of my files
"set listchars=tab:>-,trail:· "show tabs and trailing
set listchars=tab:\›\ ,trail:·,extends:>,precedes:<,eol:¬

set autoindent
set smartindent

"set ignorecase "case insensitive by default
set smartcase "if there are caps, go case-sensitive
set infercase "case inferred by default

set nowrap "do not wrap line
set showmatch "show matching brackets
set matchtime=5 "how many tenths of a second to blink matching brackets
set directory=/tmp "directory to place swap files in
set clipboard+=unnamed "share windows clipboard
set mouse=a "use mouse everywhere
set mousehide "hide the mouse while typing

"line and column numbering
set number "turn on line numbers
set numberwidth=4 "We are good up to 9999 lines
" set relativenumber
set cursorline
set ruler "Always show current positions along the bottom
set linespace=0 "don't insert any extra pixel lines betweens rows
set scrolloff=10 "Keep 10 lines (top/bottom) for scope
set sidescrolloff=10 "Keep 5 lines at the size
set noshowmode "Let our lightline show the mode

"filesystem and term settings
set ttyfast
set novisualbell
set noerrorbells "don't make noise
set wildchar=<TAB> "Expansion in the command line..
set wildignore+=*~,*.swp,*.o,*.obj,*.bak,*.exe,*.class,*.jar,*.pyc
set wildignore+=*node_modules/**,*vendor/**,.git
set wildmenu  "Enable command-line completion
set suffixes=.swp,.exe,.zip,.gz,.class,.jar
set tags=tags;src/**/tags
set hlsearch "highlight the search pattern while searching
set incsearch "BUT do highlight as you type you search phrase

set spell