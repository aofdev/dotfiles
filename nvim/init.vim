" Set this vimrc file to not be compatible with vi
set nocompatible
" Turn off filetype detection. This is turned on again after plugins load
filetype off

set number
set relativenumber
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=a
set encoding=UTF-8
set clipboard=unnamedplus " Use + register as unnamed register
set hlsearch " Highlight search terms
set ignorecase " Ignore case in search
set incsearch " Allow for incremental search

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'neoclide/coc.nvim'  " Auto Completion
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale' " Ale: Automagically check for syntax errors

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" nnoremap Y "+y
" vnoremap Y "+y
" nnoremap yY ^"+y$

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" rust
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

" Ale (linter)
let g:ale_rust_cargo_use_check = 1
let g:ale_rust_cargo_check_all_targets = 1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
