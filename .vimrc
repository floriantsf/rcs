" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

"Config pour Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
"Plugin 'itchyny/lightline.vim'
"Plugin 'powerline/powerline'
Plugin 'valloric/youcompleteme'
Plugin 'altercation/solarized'
Plugin 'Syntastic'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'aluriak/nerdcommenter'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
"Plugin pour color scheme
Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'arcticicestudio/nord-vim'
Plugin 'dracula/vim'
Plugin 'cocopon/iceberg.vim'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'sainnhe/vim-color-forest-night'
Plugin 'romgrk/doom-one.vim'
" Plugin pour debugging 
Plugin 'puremourning/vimspector'
" Plugin pour le multi cursor 
Plugin 'mg979/vim-visual-multi'
" Plugin pour Ocaml
Plugin 'the-lambda-church/merlin'
Plugin 'rgrinberg/vim-ocaml'

call vundle#end()
filetype plugin indent on
" Pour airline
let g:airline#extensions#tabline#enabled = 1
set ttimeoutlen=50 "Pour enlever la latence a la sortie du insert mode

set path+=**

set laststatus=2 			" Pour que la barre de statut apparaisse tout le temps
set tabstop=2
set sw=2
set nu
set rnu
set cursorline


" Des bindings pour pouvoir faire monter et descendre des blocs dans un
" fichier 


"packadd! vimspector

hi CursorLine cterm = NONE
hi CursorLineNR cterm = NONE ctermbg = black

"Ici je pimpe mon vim
let python_highlight_all=1
set termguicolors


"Config pour gruvbox
let g:gruvbox_contrast_light= 'soft'
let g:gruvbox_italic= 1 

"Config pour molokai
let g:molokai_original = 1

"Config pour nord
let g:nord_cursor_line_number_background = 1

colorscheme dracula
set background=dark
"color torte
"industry, murphy, torte	
"

map <F5> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

