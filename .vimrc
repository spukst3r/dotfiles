set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" GitHub plugins
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'davidhalter/jedi-vim'

" vim.org plugins
Bundle 'xml.vim'

" Jedi-vim settings
let g:jedi#popup_on_dot = 0

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set smarttab
set cryptmethod=blowfish

if has('gui_running')
	set guioptions-=T
	set guioptions-=r
	set lines=32
	set columns=100
	set background=dark
	colorscheme solarized
else
	set background=dark
	colorscheme solarized
endif

if &term =~ '^\(xterm\|screen\)$' && $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
cmap w!! w !sudo tee >/dev/null %

" Settings for different file types
autocmd FileType sh setlocal tabstop=5 shiftwidth=5 expandtab
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType python setlocal expandtab completeopt-=preview
autocmd FileType nginx setlocal expandtab cindent

