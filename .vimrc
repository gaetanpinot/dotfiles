call plug#begin('~/.vim/plugged')
syntax on
Plug 'ziglang/zig.vim'
Plug 'sainnhe/everforest'
Plug 'prabirshrestha/vim-lsp'
Plug 'dpelle/vim-Grammalecte'
Plug 'christoomey/vim-system-copy'
if has('termguicolors')
	set termguicolors
endif

set background=dark
let g:everforest_background = 'soft'

let g:everforest_better_performance = 1

	
call plug#end()

try
	colo everforest
catch /^Vim\%((\a\+)\)\=:E185/
	colo evening
endtry

set relativenumber
set encoding=utf-8

set spelllang=fr
autocmd FileType markdown,tex setlocal spell

