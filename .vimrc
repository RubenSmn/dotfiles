if has("termguicolors")
  set termguicolors
endif

""""""""""""""""""""""""""""""""""""""""""
" Sections
""""""""""""""""""""""""""""""""""""""""""
" > General
" > Plugins
" > Key mappings
" > Moving around
" > Theme
" > Abbreviations


""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""
set relativenumber
set number
set autoindent
set shiftwidth=2
set tabstop=2
set expandtab
set wildmenu
set showmode
syntax on
set laststatus=2
set hlsearch
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list


""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
  " Lightline
  Plug 'itchyny/lightline.vim'
  " Fuzzy finder
  Plug 'ctrlpvim/ctrlp.vim'
  " Typescript
  Plug 'leafgarland/typescript-vim'
  " Coc vim
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Let ctrlp ignore files in .ctrlpignore
let g:ctrlp_user_command = 'find %s -type f | grep -v "`cat .ctrlpignore`"'


""""""""""""""""""""""""""""""""""""""""""
" Key mappings
""""""""""""""""""""""""""""""""""""""""""
" Open netrw
nmap <silent> sf :Ex<CR>

" For autocompleting pairs
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>


""""""""""""""""""""""""""""""""""""""""""
" Moving around
""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" Move up/down file with auto center
nmap <silent> L Lzz<CR>
nmap <silent> H Hzz<CR>
nmap <silent> M Mzz<CR>


""""""""""""""""""""""""""""""""""""""""""
" Theme
""""""""""""""""""""""""""""""""""""""""""
set background=dark

" Lightline
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" Colorscheme
colorscheme onedark


""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""
iabbr lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
