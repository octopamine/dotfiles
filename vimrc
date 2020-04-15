" security - disable modelines (exploit in vim <8.1.1365)
set modelines=0
set nomodeline

" i always want syntax highlighting
syntax enable

" i don't like lines wrapping. i can scroll.
set nowrap
" i do like to keep track of what line I'm on
set cursorline
hi User1 term=underline cterm=bold ctermfg=Blue ctermbg=Black

"" All the tabs and shifting BS
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
"set nocompatible
"set laststatus=2
"set smartindent
" override language specific tabstops (ahem, python)
autocmd Filetype * setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
" No magic shifts on Vim line continuations
let g:vim_indent_cont = 0

" This beauty remembers where you were the last time you edited the file, and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" fortran tabs and red highlighting for whitespace
let fortran_have_tabs=1
highlight ExtraWhitespace ctermbg=red guibg=red

" 80 line highlight (yellow bg, black fg)
highlight ColorColumn ctermbg=yellow ctermfg=black
call matchadd('ColorColumn', '\%81v', 100)

" status line customization
hi StatColor guibg=#95e454 guifg=black ctermbg=lightblue ctermfg=black
hi Modified guibg=orange guifg=black ctermbg=lightyellow ctermfg=black

function! MyStatusLine(mode)
    let statusline=""
    if a:mode == 'Enter'
        let statusline.="%#StatColor#"
    endif
    let statusline.="\(%n\)\ %f\ "
    if a:mode == 'Enter'
        let statusline.="%*"
    endif
    let statusline.="%#Modified#%m"
    if a:mode == 'Leave'
        let statusline.="%*%r"
    elseif a:mode == 'Enter'
        let statusline.="%r%*"
    endif
    let statusline .= "\ (%l/%L,\ %c)\ %P%=%h%w\ %y\ [%{&encoding}:%{&fileformat}] Ω \ "
    return statusline
endfunction

au WinEnter * setlocal statusline=%!MyStatusLine('Enter')
au WinLeave * setlocal statusline=%!MyStatusLine('Leave')
set statusline=%!MyStatusLine('Enter')

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi StatColor guibg=orange ctermbg=lightred
  elseif a:mode == 'r'
    hi StatColor guibg=#e454ba ctermbg=magenta
  elseif a:mode == 'v'
    hi StatColor guibg=#e454ba ctermbg=magenta
  else
    hi StatColor guibg=red ctermbg=red
  endif
endfunction 

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi StatColor guibg=#95e454 guifg=black ctermbg=lightblue ctermfg=black

" line numbers
set number
hi LineNr       cterm=NONE ctermfg=DarkGrey guifg=DarkGrey ctermbg=NONE gui=NONE guibg=NONE
hi CursorLineNr cterm=NONE ctermfg=red      guifg=red ctermbg=NONE gui=NONE guibg=NONE

" tabs
nnoremap <C-l> :tabnext<CR>
nnoremap <C-h> :tabprevious<CR>
