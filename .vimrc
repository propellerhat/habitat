" Modeline {
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker :
" }

" High-priority {
   set nocompatible
   scriptencoding utf-8
   set encoding=utf-8
" }

" Startup {
   " Don't show the intro message
   set shortmess=atI
" }

" General Editing {
   set history=1000
   set number
   set relativenumber
   augroup numbertoggle
       autocmd!
       autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
       autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
   augroup END
   " Matches as you type a search pat.
   set incsearch
   set hlsearch
   set tabstop=4
   set softtabstop=4
   set shiftwidth=4
   " When <Tab> is pressed, insert spaces instead of '\t'
   set expandtab
   " Always insert space instead of '\t' at ^, but may insert '\t' elsewhere.
   " <BS> will delete shiftwidth worth of spaces from the start of the line.
   set smarttab
   set autoindent
   set smartindent
   set wrap
   " The screen will not be redrawn while exec'ing macros and other things
   set lazyredraw
   " Briefly jump to & highlight matching bracket, brace, etc. if visible
   set showmatch
   set ignorecase
   " Overrides ignorecase if there are uppercase chars in search pat.
   set smartcase
   set cursorline
   set colorcolumn+=80
   " Start scrolling the window early
   set scrolloff=5
   " Determines what to print for invisible chars when list is set
   set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_
   " Turn off printing invisible chars at startup.
   set nolist
" }

" Shhhh {
   set visualbell t_vb=
" }

" Language Specific {
   filetype on
   filetype plugin on
   filetype indent on

   " Ruby {
       autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
   " }

   " Python {
       autocmd FileType python setlocal ts=2 sts=2 sw=2 expandtab
   " }

   " make {
       autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
   " }

   " Plaintext {
       autocmd FileType text setlocal textwidth=78
   " }
" }

" Backup/Undo/Swap/Reload Policy {
   " Do not create a backup before overwriting
   set nobackup
   " Do not create a temp backup before overwriting
   set nowritebackup
   set noswapfile
   " Update buffer with changes made to file on disk
   set autoread
   " set viminfo='50,n~/.habitat/vim.d/.viminfo
   " set undodir=~/.habitat/vim.d
   set undofile
   set undoreload=500
   set undolevels=500
" }

" Functions {
   function! ToggleInvisibleChars()
       if &list
           set nolist
       else
           set list
       endif
   endfunction
" }

" Mappings {
   let mapleader = ","
   let g:mapleader = ","

   " Back to normal mode from insert mode
   imap <leader>e <ESC>
   " Clear the highlight pattern
   map <leader>c :let @/=""<CR>
   " Toggles display of invisible chars
   map <leader>i :call ToggleInvisibleChars()<CR>
" }

