set nocompatible
set backspace=2
set laststatus=2
"set ruler
"set tw=80

syntax on
filetype off

let g:closetag_html_style = 1

set formatoptions+=t
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" GitHub plugins
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'chase/vim-ansible-yaml'
Plugin 'davidhalter/jedi-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'garbas/vim-snipmate'
Plugin 'gmarik/vundle'
Plugin 'honza/vim-snippets'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'keith/swift.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'othree/yajs.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'rosenfeld/conque-term'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ternjs/tern_for_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline-themes'

" vim.org plugins
Plugin 'xml.vim'
Plugin 'django.vim'
Plugin 'closetag.vim'

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
	let g:airline_theme="solarized"

	set guifont=Fira\ Mono\ 14
	let g:airline_powerline_fonts=0
else
	set background=dark
	colorscheme solarized
	let g:airline_theme="solarized"
	let g:airline_powerline_fonts=0
endif

set t_Co=256

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

map <F4> :TagbarToggle<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
cmap w!! w !sudo tee >/dev/null %

for f in split(glob('~/.vim/conf.d/*'), '\n')
	exe 'source' f
endfor
