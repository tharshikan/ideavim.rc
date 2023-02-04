""" ------------------------- DVORAK SETTINGS-------------------------
" Quit insert mode
inoremap hh <Esc>

" wORD left/right
"noremap d b|vnoremap d B|onoremap d |
nnoremap d b
noremap n w|vnoremap n w|onoremap n w|

" Up/down
noremap t k|xnoremap t k|onoremap t k|
noremap h j|xnoremap h j|onoremap h j|

" Move half page faster
nnoremap H  <C-d>
nnoremap T  <C-u>,
nnoremap H :action MoveLineDown<CR>
nnoremap T :action MoveLineUp<CR>

nnoremap <Down> 19j
nnoremap <Up> 19k

nnoremap D  4b
nnoremap N  4w

" cut
noremap e d
noremap E D|xnoremap E D|
"noremap ee dd|

" replace
" noremap r c
noremap = c
noremap + C|xnoremap > C|

"noremap ee dd|
"yank
"noremap , y
"noremap < Y

" inSert/Replace/append (T)
noremap l i
noremap L I

"under
noremap r o
noremap R O

"to
noremap z t
noremap Z T

"delete using j when in visual mode
vnoremap j d
vnoremap k c

"Join and keep it centered
noremap j mzJ'z

"replace single char
noremap c r

"undo
" Redo
nnoremap U <C-r>

"find and keep it centered
noremap w nzzzv
noremap m Nzzzv


noremap . /
noremap > ?

"make Y behave just like C or D
nnoremap Y y$

" inner text objects
" e.g. dip (delete inner paragraph) is now drp
function s:MapTOPart(tostart)
    let char=getchar()
    if type(char)==type(0)
        let char=nr2char(char)
    endif
    return a:tostart.((char is# 'z')?('w'):(char))
endfunction

onoremap ln iw
onoremap lp iw
onoremap an aw
onoremap <expr> i <SID>MapTOPart('i')
onoremap <expr> a <SID>MapTOPart('a')

" Delete/Backspace
nnoremap <C-d> "_dw|vnoremap <C-d> "_d|inoremap <C-d> <Delete>|cnoremap <C-d> <Delete>|
nnoremap <Delete> "_x|vnoremap <Delete> "_d|
nnoremap <Backspace> a<Left><Backspace><Right><Esc>|vnoremap <Backspace> x|
nnoremap <C-Backspace> a<Left><C-W><Right><Esc>|inoremap <C-Backspace> <C-w>|cnoremap <C-Backspace> <C-w>|
nnoremap <C-Delete> "_dw|inoremap <C-Delete> <C-o>"_dw|cnoremap <C-Delete> <Delete>|
nnoremap <S-Backspace> "_d^|inoremap <S-Backspace> <Backspace>|cnoremap <S-Backspace> <Backspace>|
nnoremap <S-Delete> "_d$|inoremap <S-Delete> <Delete>|cnoremap <S-Delete> <Delete>|

""" ------------------------- DVORAK SETTINGS-------------------------

"split vertically"
nnoremap ov <C-W>v
"split horizontally"
"nnoremap sh <C-W>h"
"go to right split window"
nnoremap or <C-W>l
nnoremap ol <C-W>h
"increment"
nnoremap o. <C-a>
"decrement"
nnoremap o, <C-x>

"delete/change in word
nnoremap es diw
nnoremap =s ciw

"delete/change in () {} []

nnoremap eh di(
nnoremap et di{
nnoremap ed di[
nnoremap =h ci(
nnoremap =t ci{
nnoremap =d ci[



"delete/change around () {} []

nnoremap eah da(
nnoremap eat da{
nnoremap ead da[
nnoremap =ah ca(
nnoremap =at ca{
nnoremap =ad ca[





let mapleader=' '


"Common Settings"
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmode
set number
set autoindent
set smartindent
set hls
set relativenumber
set scrolloff=3
"set history=100000
"set clipboard=unnameds



" Change cursor shape in different modes for iterm2
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


"terminal specific settings
set noerrorbells
nnoremap ss :TagbarToggle<CR>
nnoremap sf :NERDTreeToggle<CR>

"terminal plugins
call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'uiiaoo/java-syntax.vim'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'gosukiwi/vim-atom-dark'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Chiel92/vim-autoformat'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'doums/darcula'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'sonph/onehalf', {'rtp': 'vim/'}

call plug#end()


"iterm theme 
"let g:onedark_termcolors=16
"colorscheme onedark
set cursorline
set numberwidth=3
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
"highlight CursorLine guibg=#303000 ctermbg=234
"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
"set cpoptions+=n
"colorscheme onehalflight
set background=dark

colorscheme gruvbox
set bg=dark
"colorscheme onedark
"colorscheme grim
"colorscheme darcula
"set termguicolors
syntax on
set number
highlight Normal ctermbg=None
highlight LineNr ctermfg=DarkGrey
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic 

" airline settings
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_powerline_fonts=1
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_powerline_fonts=1
"let g:airline_theme='molokai'
"let g:lightline.colorscheme='onehalflight'

