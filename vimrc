" --------------------------
" PATHOGEN
" --------------------------
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" --------------------------
" MISC
" --------------------------
set linebreak
set foldmethod=indent " more indent means a higher fold level
set foldcolumn=2 " number of spaces used to indicates folds 
set shiftwidth=2 " autoindent uses 2 spaces 
set tabstop=2 " a tabstop is 2 spaces 
set softtabstop=4 
set sw=2
set number " always show line numbers
filetype plugin on
filetype indent on

" --------------------------
"  VIM LATEX PLUGIN SETTINGS
"  -------------------------

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_CompileRule_pdf = '/home/marcus/opt/texlive/2012/bin/x86_64-linux/pdflatex -interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'evince'
let g:tex_comment_nospell= 1

" tex environments
let g:Tex_Env_mathinline = '\(<++>\)<++>'
let g:Tex_PromptedEnvironments = 'mathinline,$$'
let g:Tex_HotKeyMappings = 'mathinline,$$' 

" tex commands
let g:Tex_Com_fopclcond = '\\fopclcond{<++>}[<++>]{<++>}{<++>}<++>'
let g:Tex_PromptedCommands = 'fopclcond'
vnoremap m <C-\><C-N>:call VEnclose('\(','\)', '\(','\)')<CR>  

" --------------------------
"  BREAKINDENT SETTINGS
" --------------------------
set breakindent 
set showbreak=>..

" --------------------------
"  SESSION SAVE SETTINGS
" --------------------------
set ssop-=options	" do not store global and local values in a session 
set ssop-=folds		" do not store folds in a session

" --------------------------
" STATUS LINE
" --------------------------

" enable status line
set laststatus=2

" jamessan's
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset


colorscheme koehler

syntax on
filetype on

