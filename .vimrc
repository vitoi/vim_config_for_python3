set nocompatible
syntax on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!

Plugin 'gmarik/vundle'
Plugin 'Lokaltog/powerline',{'rtp':'powerline/bindings/vim/'}
Plugin 'VundleVim/Vundle.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Bundle 'ervandew/supertab'

filetype plugin indent on

" The rest of your config follows here
" set row width limit of python file 
augroup vimrc_autocmds
	autocmd!
	" highlight characters past column 120
	autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
	autocmd FileType python match Excess /\%120v.*/
	autocmd FileType python set nowrap
	augroup END

" toggle on/off for file directory using shortcut F2 key
map <F2> :NERDTreeToggle<CR>
" run python file using shortcut F5 key
map <F5> :!python3 %<CR>

" config for python-mode
let g:pymode_rope = 1
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint = 1
let g:pymode_lint_checker = 'pyflakes, pep8'
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_folding = 0

" config for jedi-vim
set autochdir
set tabstop=4
set shiftwidth=4
set expandtab

if has('gui_running')
	highlight Pmenu guibg=#cccccc gui=bold
endif


