"# Disable viminfo
set viminfofile=NONE

"# Theme
set background=dark
"# Colorscheme
"# Linux path: /home/skyfox/.vim/colors/
"# Win path: C:\Program Files\Git\usr\share\vim\vimXX\colors
"# Win path2: C:\Program Files (x86)\Vim\vimXX\colors
colorscheme hybrid_reverse

"# Show line numbers
set number

"# Syntax highlightning
syntax on

"# Activates indentation by file type
filetype plugin indent on

"# Redefines tab as 4 spaces
set tabstop=4
set laststatus=2

"# Accents
set encoding=utf-8

"# Powerline Plugin - Linux
set rtp+=/home/skyfox/.local/share/pipx/venvs/powerline-status/lib/python3.14/site-packages/powerline/bindings/vim/

"# Powerline Plugin - Windows
"#set rtp+=C:/Users/SkyFox07/AppData/Local/python/pythoncore-3.14-64/Lib/site-packages/powerline/bindings/vim/
"#set termguicolors
