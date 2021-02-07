if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.config/nvim/plugged')
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jamshedvesuna/vim-markdown-preview'
Plug 'chiel92/vim-autoformat'
call plug#end()

" fzf
map ; :Files<CR>

" vim-gitgutter
let g:gitgutter_override_sign_column_highlight=0

" vim-airline
"let g:airline_powerline_fonts=1
"let g:airline_theme='powerlineish'

" clang-format
"function! Formatonsave()
"    let l:formatdiff = 1
"    py3f /usr/share/clang/clang-format-10/clang-format.py
"endfunction
"autocmd BufWritePre *.h,*.cpp,*.c call Formatonsave()

" vim-autoformat
au BufWrite * :Autoformat
let g:autoformat_autoindent = 0

" UI config
set number
set ruler
"set cursorline
set nowrap
let &colorcolumn="80"
set signcolumn=yes

" serach
set incsearch
set nohlsearch
set ignorecase
set smartcase

" misc
syntax enable
set nobackup
set noswapfile
set updatetime=100

" tabs and indention
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Esc to leave insert mode in terminal:
:tnoremap <Esc> <C-\><C-n>
" ALT+{h,j,k,l} to navigate windows from terminal-mode:
:tnoremap <A-h> <C-\><C-N><C-w>h
:tnoremap <A-j> <C-\><C-N><C-w>j
:tnoremap <A-k> <C-\><C-N><C-w>k
:tnoremap <A-l> <C-\><C-N><C-w>l
" ALT+{h,j,k,l} to navigate windows from insert-mode:
:inoremap <A-h> <C-\><C-N><C-w>h
:inoremap <A-j> <C-\><C-N><C-w>j
:inoremap <A-k> <C-\><C-N><C-w>k
:inoremap <A-l> <C-\><C-N><C-w>l
" ALT+{h,j,k,l} to navigate windows from normal-mode:
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l
