" Quit insert mode
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kk <Esc>

" mapping standard horizontal movements to be movements by word instead
noremap h b
noremap H B
noremap l w
noremap L W

" Move to the start of line/ end of line
noremap w ^
noremap e $

"travesing methods
noremap W :action MethodUp<CR>
noremap E :action MethodDown<CR>

" Move half page faster
nnoremap J  <C-d>
nnoremap K  <C-u>

" Redo
nnoremap U <C-r

" Quit normal mode
nnoremap <Leader>q  :q<CR>
nnoremap <Leader>Q  :qa!<CR>

" Quit visual mode
vnoremap v <Esc>

" quit ==> close current window
nnoremap <Leader>q <C-W>w


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

"colorscheme gruvbox
"colorscheme onedark
colorscheme darcula
set termguicolors
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
let g:airline_theme='molokai'


