"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

""""""""""""""""""""""""""""""""""""""""""
" Sections
""""""""""""""""""""""""""""""""""""""""""
" > General
" > Plugins
" > Key mappings
" > Moving around
" > Theme


""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""
set relativenumber
set number
set autoindent
set shiftwidth=2
set wildmenu
set showmode
syntax on
set laststatus=2
set hlsearch


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
