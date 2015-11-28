set nocompatible
set noswapfile
set nobackup
set number
set laststatus=2

"" Configuracion personal
"" Pathogen on
execute pathogen#infect()
filetype plugin indent on
syntax on

"" Color y fuentes
set background=dark
"colorscheme solarized

"" Barra de estado (Powerline)
"" Fuentes para windows: https://github.com/powerline/fonts
set laststatus=2
"set guifont=Liberation_Mono_for_Powerline:h9
"set encoding=utf-8
"let g:Powerline_symbols = 'fancy'
"set fillchars+=stl:\ ,stlnc:\
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\[POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

"" Configuracion vim
set number
set ignorecase
set smartcase
set hlsearch
set mouse=a
set history=1000
set undolevels=1000
set showcmd

"" Tamanyo de columna
set tw=79
set colorcolumn=80

"" Python
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set shiftround

"" Detecta virtualenv y autocompleta (django)
"" Hay que tener en sistema la variable "VIRTUAL_ENV"
"" En linux hay que cambiar la ruta por bin/activate_this.py
if has('python3')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
     project_base_dir = os.environ['VIRTUAL_ENV']
     sys.path.insert(0, project_base_dir)
     activate_this = os.path.join(project_base_dir, 'bin/activate')
     execfile(activate_this, dict(__file__=activate_this))
EOF
endif

"" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"

"" Omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

