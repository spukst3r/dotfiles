filetype indent on
filetype plugin on

set tabstop=4
set shiftwidth=4
set smarttab

if has('gui_running')
	set guioptions-=T
	set guioptions-=r
	set lines=32
	set columns=100
	set background=dark
	colorscheme solarized
endif

"if &term =~ '^\(xterm\|screen\)$' && $COLORTERM == 'gnome-terminal'
"	set t_Co=256
"endif

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
cmap w!! w !sudo tee >/dev/null %

" Settings for different file types
autocmd FileType sh setlocal tabstop=5 shiftwidth=5 expandtab
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType python setlocal expandtab
autocmd FileType nginx setlocal expandtab cindent

