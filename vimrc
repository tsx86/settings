"-------------------------------------------------------------------------------- 
"options
"-------------------------------------------------------------------------------- 
"{{{
"-------------------------------------------------------------------------------- 
" 1 important
"-------------------------------------------------------------------------------- 

set nocompatible

"-------------------------------------------------------------------------------- 
" 2 moving around, searching and patterns
"-------------------------------------------------------------------------------- 

set incsearch	
set ignorecase	
set smartcase	

"-------------------------------------------------------------------------------- 
" 3 tags
"-------------------------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 
" 4 displaying text
"-------------------------------------------------------------------------------- 

set number relativenumber
set linebreak
set scrolloff=10

"-------------------------------------------------------------------------------- 
" 5 syntax, highlighting and spelling
"-------------------------------------------------------------------------------- 

set hlsearch
set background=dark
set cursorline

"-------------------------------------------------------------------------------- 
" 6 multiple windows
"-------------------------------------------------------------------------------- 

set laststatus=2
set hidden

"-------------------------------------------------------------------------------- 
" 7 multiple tab pages
"-------------------------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 
" 8 terminal
"-------------------------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 
" 9 using the mouse
"-------------------------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 
"10 printing
"-------------------------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 
"11 messages and info
"-------------------------------------------------------------------------------- 

set showcmd
set ruler

"-------------------------------------------------------------------------------- 
"12 selecting text
"-------------------------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 
"13 editing text
"-------------------------------------------------------------------------------- 

set showmatch
set nrformats-=octal
set backspace=indent,eol,start

"-------------------------------------------------------------------------------- 
"14 tabs and indenting
"-------------------------------------------------------------------------------- 

set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set shiftround

"-------------------------------------------------------------------------------- 
"15 folding
"-------------------------------------------------------------------------------- 

set foldmethod=indent

"-------------------------------------------------------------------------------- 
"16 diff mode
"-------------------------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 
"17 mapping
"-------------------------------------------------------------------------------- 

set timeout
set timeoutlen=1000
set ttimeoutlen=100

"-------------------------------------------------------------------------------- 
"18 reading and writing files
"-------------------------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 
"19 the swap file
"-------------------------------------------------------------------------------- 

set noswapfile

"-------------------------------------------------------------------------------- 
"20 command line editing
"-------------------------------------------------------------------------------- 

set wildmenu
set wildmode=full

"-------------------------------------------------------------------------------- 
"21 executing external commands
"-------------------------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 
"22 running make and jumping to errors
"-------------------------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 
"23 language specific
"-------------------------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 
"24 multi-byte characters
"-------------------------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 
"25 various
"-------------------------------------------------------------------------------- 

set gdefault

"-------------------------------------------------------------------------------- 

"}}}

""-------------------------------------------------------------------------------- 
"general
""-------------------------------------------------------------------------------- 
"{{{

filetype plugin indent on
syntax on
set autoread

let mapleader = ","

nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv  :!cp $MYVIMRC $HOME/workspace/settings/vimrc<cr>

packadd! matchit
set rtp+=~/.vim/bundle/Vundle.vim

"}}}

""-------------------------------------------------------------------------------- 
"Plugins
""-------------------------------------------------------------------------------- 
"{{{

call vundle#begin()


Plugin 'VundleVim/Vundle.vim'

"----------TOOLS----------
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
"Plugin 'tpope/vim-fugitive'
"Plugin 'fholgado/minibufexpl.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'mitermayer/vim-prettier'
Plugin 'alvan/vim-closetag'
"Plugin 'sirver/ultisnips'
"Plugin 'honza/vim-snippets'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
" BEGIN order required
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'othree/html5.vim'
Plugin 'schickling/vim-bufonly'
" END order required
"------------------------------

"----------JAVASCRIPT---------- 
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
"Plugin 'marijnh/tern_for_vim'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'elzr/vim-json'
"------------------------------

"----------CSS---------- 
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'cakebaker/scss-syntax.vim'
"------------------------------

"----------PHP----------
"Plugin 'StanAngeloff/php.vim'
"Plugin '2072/PHP-Indenting-for-VIm'
"Plugin 'rayburgemeestre/phpfolding.vim'
"Plugin 'shawncplus/phpcomplete.vim'
"------------------------------

"---------BASH----------
Plugin 'vim-scripts/bash-support.vim'
"------------------------------

call vundle#end()

"-----------------------YCM-------------
"let g:ycm_server_python_interpreter = ''
"------------------------------------------------

"-------------------- Snippets ----------
" Trigger configuration
"let g:UltiSnipsListSnippets="<c-l>"
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"----------------------------------------

" scheme/color settings
let g:solarized_termcolors=256
"set background=light
colorscheme solarized

let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

"------------ vim-airline -------
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_v = 'BN: %{bufnr("%")}'

"--------------------- vim-javascript ---------------------
let g:javascript_plugin_jsdoc = 1

"-------------------------------

"---------------------- bash-support ----------------------------
" Change have been made in bash-support/templates/Templates
"let g:BASH_AuthorName   = 'Taha Saad'
"let g:BASH_Email        = 'fullstackdeveloper.taha@gmail.com'
"let g:BASH_Company      = 'fsd-taha'
"--------------------------------------------------------------
"
"--------------------- CtrlP ------------------
let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
"----------------------------------------------
"
"------------- Fugitive ----------
"set statusline+=%{fugitive#statusline()}

" Close tags
let g:closetag_filenames = "*.jsx,*.js,*.html,*.xhtml,*.phtml,*.xml,*.php"

"----------- delimiMate ------------
"pair <:> is interfering with closetag
let delimitMate_matchpairs = "(:),[:],{:}"

"---------- prettier ---------- 
let g:prettier#config#semi = 'false'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#quickfix_enabled = 0
"------------------------------

"--Syntastic settings--
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_checkers = ['eslint']
let g:syntastic_css_checkers = ['csslint']

"---------------------
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

"----------------------markdown----------------------------
"let g:vim_markdown_folding_disabled = 1
" To fold in a style like python-mode
let g:vim_markdown_folding_style_pythonic = 1
" Do not require .md extensions for Markdown links
let g:vim_markdown_no_extensions_in_markdown = 1
" Auto-write when following link
let g:vim_markdown_autowrite = 1
"----------------------------------------------------------

"------------------ html5 ------------------------
"Disable event-handler attributes support:
let g:html5_event_handler_attributes_complete = 0

"Disable RDFa attributes support:
let g:html5_rdfa_attributes_complete = 0

"Disable microdata attributes support:
let g:html5_microdata_attributes_complete = 0

"Disable WAI-ARIA attribute support:
let g:html5_aria_attributes_complete = 0
"-----------------------------------------------------

"}}}

""-------------------------------------------------------------------------------- 
"Custom autocommands
"-------------------------------------------------------------------------------- 
"{{{

augroup utilities
  autocmd!
  " return to last edit position when opening files
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  " set help window to max size
  autocmd BufWinEnter * if &l:buftype ==# 'help' | wincmd _ | endif
augroup END

augroup vimscript
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC 
  autocmd BufWritePost $MYVIMRC set filetype=vim  "trigger FileType event
  autocmd BufWritePost $MYVIMRC :AirlineRefresh
augroup END

augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker foldmarker={{{,}}}
augroup END

augroup html
  autocmd!
  autocmd BufRead *.html :normal gg=G
augroup END

augroup css
  autocmd!
  autocmd BufRead,BufNewFile *.scss set filetype=scss.css
  autocmd FileType scss set iskeyword+=-
augroup END

augroup json
  autocmd!
  autocmd FileType json :normal gg=G
  "autocmd BufRead *.json :normal gg=G
augroup END

augroup mapping-CR
  autocmd!
  autocmd CmdwinEnter * nnoremap <cr> <cr>
  autocmd BufReadPost quickfix nnoremap <cr> <cr>
augroup END

" a hack to enable matchit html matching pairs 
" in javascript and php files
augroup matchit
  autocmd!
  autocmd FileType javascript,php let b:match_words = '<:>,' .
    \ '<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,' .
    \ '<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,' .
    \ '<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'
augroup END


"--------------------- vim-css3-syntax -----------------
augroup VimCSS3Syntax
  autocmd!
  autocmd FileType css setlocal iskeyword+=-
augroup END
"--------------------------------------------------------------------------------

"augroup microsoft-doc
  "autocmd!
  "autocmd BufReadPre *.doc, *.docx set ro
  "autocmd BufReadPre *.doc, *.docx set nohlsearch
  "autocmd BufReadPost *.doc, *.docx %!antiword "%"
"augroup END

"}}}

""-------------------------------------------------------------------------------- 
"Custom functions
""-------------------------------------------------------------------------------- 
"{{{

function! GotoJump()
  jumps
  let j = input("Please select your jump: ")
  if j != ''
    let pattern = '\v\c^\+'
    if j =~ pattern
      let j = substitute(j, pattern, '', 'g')
      execute "normal " . j . "\<c-i>"
    else
      execute "normal " . j . "\<c-o>"
    endif
  endif
endfunction

"}}}

""-------------------------------------------------------------------------------- 
"Custom mappings
""-------------------------------------------------------------------------------- 
"{{{

nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j
vnoremap k gk
vnoremap j gj

inoremap jk <esc>l
vnoremap jk <esc>

nnoremap <tab> >>
nnoremap <s-tab> <<
vnoremap <tab> >
vnoremap <s-tab> <

nnoremap <cr> o<esc>
nnoremap <space><cr> O<esc>
inoremap <space><cr> <cr><esc>O<tab>

"nnoremap <s-j> <c-f>
"nnoremap <s-k> <c-b>

nnoremap / /\v
vnoremap / /\v
nnoremap <silent><leader><cr> :noh<cr>

"yank from current position to the end of the line
nnoremap Y y$ 
nnoremap & :&&<cr>

nnoremap ;; A;<esc>
nnoremap ,, A,<esc>


nnoremap <leader>w :w<cr>
nnoremap <leader>wa :wall<cr>

"navigate between buffers
"nnoremap <leader>n :bn<cr>
"nnoremap <leader>p :bp<cr>
"nnoremap <leader>l :bl<cr>
"nnoremap <leader>f :bf<cr>
"nnoremap <leader>b :b #<cr>

" navigate between windows
nnoremap <leader>k <c-w>k
nnoremap <leader>j <c-w>j
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l

" go to a specific jump from the jump list
nnoremap <leader>jj :call GotoJump()<cr>

" max size window
nnoremap <leader>m :wincmd _<cr>

" close window
nnoremap <leader>c :close<cr>

" keep this window only 
nnoremap <leader>ca :only<cr>

" delete current buffer 
nnoremap <leader>d :bd<cr>

" delete all buffers 
nnoremap <leader>da :bufdo bd<cr>

" force delete all buffers 
nnoremap <leader>da! :bufdo bd!<cr>

" delete all buffers except the current one
nnoremap <leader>do :BufOnly<cr>

" force delete all buffers except the current one
nnoremap <leader>do! :BufOnly!<cr>

" Opens a new buffer (in the current window)
" with the current buffer's path
nnoremap <leader>be :edit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Expand to the path of the active buffer
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" set filetype to json (highlight purpose)
nnoremap <leader>rc :set filetype=json<cr>

" toggle mini buffer explorer
"nnoremap <leader>e :MBEToggle<cr><c-w>k

" focus nerdtree
nnoremap <leader>t :NERDTreeFocus<cr>

" quit nerdtree
nnoremap <leader>q :NERDTreeClose<cr>

" generate Js documentation
nnoremap <leader>jd :JsDoc<cr>

" Toggle tagbar
nnoremap <silent> <f8> :TagbarOpenAutoClose<cr>


if exists(":Tabularize")
  nnoremap <leader>a= :Tabularize /=<cr>
  vnoremap <leader>a= :Tabularize /=<cr>
  nnoremap <leader>a: :Tabularize /:\zs<cr>
  vnoremap <leader>a: :Tabularize /:\zs<cr>
endif

" CtrlP
nnoremap <c-p>b :CtrlPBuffer<cr>

" Prettier
nnoremap <leader>p :PrettierAsync<cr>

" Save ReadOnly files as sudo
cnoremap w!! w !sudo tee >/dev/null %

" Make current file executable (for pesonal scripts)
cnoremap x!! !chmod +x %

"}}}
