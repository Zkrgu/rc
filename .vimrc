" Various things ---------------------------------------------------------------
" Set color scheme
packadd! onedark
syntax on
colorscheme onedark

" Enable line numbers
set number

" Set tab width
set tabstop=4

set showmode

" Highlight search matches
set showmatch
set hlsearch

" Enable hidden buffers!
set hidden
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
nnoremap <C-D> :bd<CR>
" Show hidden buffers as tabs

" Enable ex tab completion
set wildmenu
set wildmode=longest:list,full

" STATUS LINE ------------------------------------------------------------------
" Enable status-line
set laststatus=2

" Test
"au InsertEnter * set statusline=%#SpellRare#Insert
"au InsertLeave * set statusline=mode()
" TAB LINE ---------------------------------------------------------------------
hi TabLine ctermbg=237 ctermfg=grey cterm=underline
hi TabLineFill ctermbg=237 cterm=underline
hi BufTabLineActive ctermbg=232

" Nerdtree config --------------------------------------------------------------

" Close the tab if NERDTree is the only window remaining in it.
au BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
au BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Automatic window setup -------------------------------------------------------
" Nerdtree
au VimEnter * NERDTree | set wfw | wincmd p
" Terminal at bottom
set termwinsize=10x0
au VimEnter * below term
au VimEnter * set wfh | wincmd p
