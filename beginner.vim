" ========
" Defaults
" ========

" Show extra whitespace at the end of the line.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Highlight searches
set hlsearch

" Highlight dynamically as pattern is typed.
set incsearch

" Folding code.
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Show tabs even if there is one tab open.
set showtabline=2

" Use numbered lines.
set number relativenumber

" Enable recursive searching.
set path+=**

" Enable wildmenu.
set wildmenu

" Use advanced vim.
set nocompatible

" Enable Syntax
syntax enable

" Enable filtype plugin.
filetype plugin on

" Change the netrw banner to not display.
let g:netrw_banner=0

" Change the list style of the netrw file browser.
let g:netrw_liststyle=3

" Show hidden files in NERDTree
let g:NERDTreeShowHidden=1
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeQuitOnOpen=0

" Set up the project drawer.
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter *, :Vexplore
augroup END

" Enable line highlights.
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

" Move lines up and down with Shift + K or Shift + J
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+2<CR>gv=gv


" ==========
" Key Remaps
" ==========

" Open up a terminal window within vim.
noremap <Leader>q :term<CR>

" Open a terminal tab within vim.
:nnoremap <Leader>` :tab terminal<CR>

" Make switching tabs easy.
:noremap <Leader>n :tabn<CR>

" Make new tabs.
:noremap <Leader>t :tabnew<CR>

" Closing tabs.
:noremap <Leader>w :tabclose<CR>

