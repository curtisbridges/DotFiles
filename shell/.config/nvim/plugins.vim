" Plugins

" Load vim-plugged plugin manager
call plug#begin('~/.vim/plugged')

"
" My Plugins!
"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'           " Set up fzf and fzf.vim

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Themes
"Plug 'flazz/vim-colorschemes'
"Plug 'morhetz/gruvbox' " the original gruvbox
Plug 'gruvbox-community/gruvbox' " a better maintained gruvbox
Plug 'arcticicestudio/nord-vim'
"Plug 'sainnhe/edge' " a new onedark derivative

" tpope
Plug 'tpope/vim-commentary'
"Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'

" language support
Plug 'leafgarland/typescript-vim'

" markdown support
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Allows creation of bullet points within files. 100% necessary.
Plug 'dkarter/bullets.vim'

" finish plugin loading
call plug#end()

" Can't set colorscheme before plug#end
colorscheme nord

"
" Plugin configuration
"
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1

let g:coc_global_extensions = [ 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver' ]

" make fzf use ag so it leverages .gitignores
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Show autocomplete when Tab is pressed
"inoremap <silent><expr> <Tab> coc#refresh()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Markdown plugin config
let g:vim_markdown_conceal = 2
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_auto_insert_bullets = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_folding_disabled = 1

filetype plugin on
filetype plugin indent on
filetype indent on

