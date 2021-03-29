" For a full description of all available options see
" http://vimdoc.sourceforge.net/htmldoc/options.html
" or use ':help $option'

" Syntax highlighting
syntax on

" 3 space tabs, force tabs for indentation, use 'smart' tabs as per 
" https://vim.fandom.com/wiki/Indent_with_tabs,_align_with_spaces
set tabstop=3 noexpandtab shiftwidth=3 smarttab

" add line numbers in margin
set number

" Automatic indentation
set smartindent autoindent

" Case-insenitive search except when explicitly specified
set ignorecase smartcase

" Highlight search matches as they are typed
set incsearch hlsearch

" Allow left/right cursor movements to go to previous/next line
set whichwrap=b,s,<,>,[,]

" Allow backspacing over autoindents, line breaks & start of insert (ctrl-v)
set backspace=2

" Show the line & column number and percentage of file in the staus line
set ruler

" Always show status line
set laststatus=2

" XTerm is fast so send more characters at a time
set ttyfast

" Autodetect filetypes & indentation
filetype plugin indent on

" Use external grep command
set grepprg=grep\ -nH\ $*

" Highlight the screen line of the cursor
set cursorline

" Colour options
hi CursorLine  cterm=NONE  ctermbg=236 ctermfg=NONE
hi LineNr      cterm=NONE  ctermbg=236 ctermfg=GREY
hi StatusLine  cterm=NONE  ctermbg=236 ctermfg=YELLOW

" Restore cursor to file position in previous edit
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END
