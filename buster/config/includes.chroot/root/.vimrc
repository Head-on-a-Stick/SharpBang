set tabstop=3 softtabstop=0 expandtab shiftwidth=3 smarttab
set number
set smartcase
set autoindent
set incsearch
set hlsearch
set cursorline
set whichwrap=b,s,<,>,[,]
set backspace=2
set ruler
set laststatus=2
set noshowcmd
set ttyfast
filetype plugin indent on
set grepprg=grep\ -nH\ $*
syntax on
hi CursorLine  cterm=NONE  ctermbg=236 ctermfg=NONE
hi LineNr      cterm=NONE  ctermbg=236 ctermfg=GREY
hi StatusLine  cterm=NONE  ctermbg=236 ctermfg=YELLOW
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END
