syntax on
"colorscheme evening
set cino=2
set tabstop=4
set shiftwidth=2
set expandtab


set smarttab
set autoindent
"set smartindent


filetype plugin indent on

map <F5> :set paste \| insert <CR> 
map <F6> :set nopaste \| :set ruler<CR>
map <C-o> :tabe 
map <C-q> :qall!
map <F1> :!cvs commit<cr>
map <F10> :g/^ *$/d
"map <C-l> :tabnext<cr>
"map <C-h> :tabprevious<cr>
"map <C-n> :tabnew<cr>
"map <C-d> :tabc<cr>

set hl=l:Folded

map <space> <C-f>
map <backspace> <C-b>

function InsertTabWrapper()
      let col = col('.') - 1
      if !col || getline('.')[col - 1] !~ '\k'
          return "\<tab>"
      else
          return "\<c-p>"
      endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

iab exx except Exception, ss:

imap <C-j> <ESC>jli
"imap <C-k> <ESC>kli
imap <C-h> <ESC>hli
imap <C-l> <ESC>la
set pastetoggle=<F11>

map <tab> :tabnext<cr>
map <C-tab> :tabprevious<cr>
