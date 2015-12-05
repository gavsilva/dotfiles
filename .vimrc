set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
"Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'exu/pgsql.vim'
Plugin 'jmcomets/vim-pony'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets = "<c-k>" "List possible snippets based on current file

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:jedi#use_splits_not_buffers = "left"


"statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Flake8 check every time you write a Python file
"autocmd BufWritePost *.py call Flake8()

"fix terminal stuff so solarized works properly
se t_Co=256
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized


"pgsql syntax checker
autocmd BufNewFile,BufRead *.sql setf pgsql
let g:sql_type_default = 'pgsql'
"show line numbers
set number

"pony
"g:pony_prefix           prefix to all Pony's commands (default: "D")
"g:pony_display_colors   flag indicating if the manage.py should output colors (default: 1)
"g:pony_manage_filename  filename of the manage.py script (default: manage.py)
"g:pony_python_cmd       exact command to run on the manage.py script (default: python)


"if has('python')
"py << EOF
"import os.path
"import sys
"import vim
"if 'VIRTUAL_ENV' in os.environ:
"    project_base_dir = os.environ['VIRTUAL_ENV']
"    sys.path.insert(1, "/home/sx01/.virtualenvs/kaggle")
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"    execfile(activate_this, dict(__file__=activate_this))
"EOF
"endif

set ai ts=4 sts=4 et sw=4

