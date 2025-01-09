" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
syntax on
" Plug 'sainnhe/everforest'
Plug 'prabirshrestha/vim-lsp'
" Plug 'dpelle/vim-Grammalecte'
Plug 'christoomey/vim-system-copy'
Plug 'tpope/vim-commentary'
if has('termguicolors')
	set termguicolors
endif

set background=dark
" let g:everforest_background = 'soft'

" let g:everforest_better_performance = 1

	
call plug#end()

colo slate

set relativenumber nu
set encoding=utf-8

" set spelllang=fr
" autocmd FileType markdown,tex setlocal spell

