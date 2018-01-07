# vim_config_for_python3
Record the vim configuration for python3

Desktop:
Ubuntu 17.10,64-bit

Vim version:
8.0

Purpose:
Find a suitable configuration profile for python3 development using Vim

Setup Vundle:
1. git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
2. add following lines in .vimrc
  1 set nocompatible
  2 syntax on
  3 filetype off
  4 
  5 set rtp+=~/.vim/bundle/vundle/
  6 call vundle#rc()
  7 
  8 " let Vundle manage Vundle
  9 " required!
 10 
 11 Plugin 'gmarik/vundle'
 12 Plugin 'Lokaltog/powerline',{'rtp':'powerline/bindings/vim/'}
 13 Plugin 'VundleVim/Vundle.vim'
 14 Bundle 'tpope/vim-fugitive'
 15 Bundle 'scrooloose/nerdtree'
 16 Bundle 'klen/python-mode'
 17 Bundle 'davidhalter/jedi-vim'
 18 Bundle 'ervandew/supertab'
 19 
 20 filetype plugin indent on
 21 
 22 " The rest of your config follows here
 23 augroup vimrc_autocmds
 24     autocmd!
 25     " highlight characters past column 120
 26     autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
 27     autocmd FileType python match Excess /\%120v.*/
 28     autocmd FileType python set nowrap
 29     augroup END
 30 
 31 map <F2> :NERDTreeToggle<CR>
 32 map <F5> :!python3 %<CR>
 33 
 34 let g:pymode_rope = 1
 35 let g:pymode_doc = 1
 36 let g:pymode_doc_key = 'K'
 37 let g:pymode_lint = 1
 38 let g:pymode_lint_checker = 'pyflakes, pep8'
 39 let g:pymode_lint_write = 1
 40 let g:pymode_virtualenv = 1
 41 let g:pymode_breakpoint = 1
 42 let g:pymode_breakpoint_bind = '<leader>b'
 43 let g:pymode_syntax = 1
 44 let g:pymode_syntax_all = 1
 45 let g:pymode_syntax_indent_errors = g:pymode_syntax_all
 46 let g:pymode_syntax_space_errors = g:pymode_syntax_all
 47 let g:pymode_folding = 0
 48
 49 set autochdir
 50 set tabstop=4
 51 set shiftwidth=4
 52 set expandtab
 53 
 54 if has('gui_running')
 55     highlight Pmenu guibg=#cccccc gui=bold
 56 endif
3. :BundleList, this is to list all bundle/plugins
4. :BundleInstall, this is to install all bundle/plugins


