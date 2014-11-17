set nocompatible
set backspace=2
set laststatus=2
"set ruler
"set tw=80

syntax on
filetype off

let g:closetag_html_style = 1
let NERDTreeIgnore = [ '\.pyc$' ]

set formatoptions+=t
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" GitHub plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'davidhalter/jedi-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'garbas/vim-snipmate'
Plugin 'gmarik/vundle'
Plugin 'honza/vim-snippets'
Plugin 'klen/python-mode'
Plugin 'majutsushi/tagbar'
Plugin 'marijnh/tern_for_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'mattn/emmet-vim'
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'rosenfeld/conque-term'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'

" vim.org plugins
Plugin 'xml.vim'
Plugin 'django.vim'
Plugin 'closetag.vim'

" Jedi-vim settings
"let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = "<C-Space>"

" Python-mode settings
" let g:pymode_python = "python3"
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

let g:pymode_lint = 0
let g:pymode_virtualenv = 1
let g:pymode_folding = 0
let g:pymode_run = 0

" Syntastic settings
let g:syntastic_python_flake8_args = '--ignore E123,E124,E126,E128,E501'

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

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
	set guioptions-=L
	set guioptions-=m
	set lines=36
	set columns=120
	set background=dark

	colorscheme solarized
	"let g:airline_theme="luna"

	set guifont=Inconsolata\ for\ Powerline\ Medium\ 13
	let g:airline_powerline_fonts=1
else
	set background=dark
	colorscheme solarized
	let g:airline_powerline_fonts=1
endif

let g:airline#extensions#tabline#enabled = 1

set t_Co=256

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

map <F4> :TagbarToggle<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
cmap w!! w !sudo tee >/dev/null %

" Settings for different file types
autocmd FileType sh setlocal tabstop=5 shiftwidth=5 expandtab
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType python setlocal expandtab completeopt-=preview
autocmd FileType nginx setlocal expandtab cindent
autocmd FileType puppet setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType latex setlocal spell spelllang=ru,en
autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType perl setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab

