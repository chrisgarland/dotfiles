set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Fuzzy search
Plugin 'wincent/command-t'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Show file system
Plugin 'scrooloose/nerdtree'

" Molokai theme
Plugin 'tomasr/molokai'

" Color scheme
Plugin 'RussellBradley/vim-warriors-away'

" Color scheme
Plugin 'altercation/vim-colors-solarized'

" Color scheme
Plugin 'AlessandroYorba/Sierra'

" Color scheme
Plugin 'morhetz/gruvbox'

" Fuzzy file searching
" Plugin 'kien/ctrlp.vim'

" auto-inserts closing bracket
Plugin 'Raimondi/delimitMate'

" angular status bar. Aesthetic
"Plugin 'bling/vim-airline'

" compiler error checker: Multi language support
Plugin 'scrooloose/syntastic'

" Code completion for c like languages
Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-airline/vim-airline'

" Used for commenting lines or blocks of code - <leader>cc - while in Visual.
Plugin 'scrooloose/nerdcommenter'

" Changing brackets, parenthases, etc...
Plugin 'tpope/vim-surround'

" Visually display indent levels
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'vim-scripts/c.vim'

" the following two plugins are for ultisnips
Plugin 'SirVer/ultisnips'
" this one is optional (snipmate)
Plugin 'honza/vim-snippets'

" Expansion while in visual made
Plugin 'terryma/vim-expand-region'

" html + css
Plugin 'mattn/emmet-vim'

" C code completion
" Plugin 'mbbill/code_complete'

" Character/word move around file
Plugin 'easymotion/vim-easymotion'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Remap <leader> to <Space>
let mapleader = "\<Space>"

" Configuration file for vim
set number		" show absolute line numbers
set relativenumber	" show line numbers relative to cursor
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set incsearch		" search as characters are entered
set hlsearch		" highlight matches

" Settings for syntastic---
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Settings for airline. Show status bar even when only 1 file open
set laststatus=2

" Add a space after commenting
let g:NERDSpaceDelims = 1

" CtrlP settings
" let g:ctrlp_map='<Leader>p'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" end settings for Syntastic ---


" Settings for UltiSnips
let g:UltiSnipsExpandTrigger="<C-k>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsEditSplit="vertical"
let g:ultisnips_java_brace_style="nl"

" Key mapping for easyMotion
map <C-n> <Leader><Leader>w
map <C-p> <Leader><Leader>b
map <C-f> <Leader><Leader>f
map <C-g> <Leader><Leader>F

" Auto cretes new line after opening parenthises...
imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"

" Find (automatically) trailing whitespace
match ErrorMsg '\s\+$'
" Delete trailing whitespace
nnoremap <leader>rtw :%s/\s\+$//e<CR>

filetype plugin indent on
" show existing tab with 8 spaces width
set tabstop=4
" when indenting with '>', use 8 spaces width
set shiftwidth=4
" On pressing tab, insert 8 spaces
set expandtab
" highlight row at cursor
set cursorline

" on jk is escape
inoremap jk <esc>

" put ; at end of line
inoremap <leader>; <C-o>A;

" put {} below current line
inoremap <leader>[ <C-o>o{}<C-o>i<CR><C-o>O

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup

" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" Enable syntax highlighting
syntax enable

" ----------MOLOKAI------------
" let g:molokai_original = 1
" colorscheme molokai
" -----------------------------

" ----------WARRIORS-----------
" colorscheme warriors-away
" -----------------------------

" ----------SIERRA-------------
" let g:sierra_Sunset = 1
" colorscheme sierra
" -----------------------------

" ----------SOLARIZED----------
" set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized
" -----------------------------

" ----------GRUVBOX------------
colorscheme gruvbox
set background=dark
" -----------------------------
