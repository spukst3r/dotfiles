set nocompatible
set backspace=2
set tw=80

syntax on
filetype off

let g:closetag_html_style = 1

set formatoptions+=t
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
Bundle 'puppetlabs/puppet-syntax-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'mattn/emmet-vim'

" vim.org plugins
Bundle 'xml.vim'
Bundle 'django.vim'
Bundle 'closetag.vim'

" Jedi-vim settings
"let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = "<C-Space>"


autocmd vimenter * if !argc() | NERDTree | endif

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set smarttab

if v:version >= 703
	set cryptmethod=blowfish
endif

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

set t_Co=256

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
cmap w!! w !sudo tee >/dev/null %

" Settings for different file types
autocmd FileType sh setlocal tabstop=5 shiftwidth=5 expandtab
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType python setlocal expandtab completeopt-=preview
autocmd FileType nginx setlocal expandtab cindent
autocmd FileType puppet setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType latex setlocal spell spelllang=ru,en

