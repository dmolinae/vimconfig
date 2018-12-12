" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'sheerun/vim-polyglot'
Plugin 'leafgarland/typescript-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'matze/vim-move'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mhinz/vim-startify'
Plugin 'pelodelfuego/vim-swoop'
Plugin 'alvan/vim-closetag'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

Plugin 'godlygeek/tabular'
Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-airline/vim-airline'

Plugin 'KabbAmine/vCoolor.vim'
Plugin 'lilydjwg/colorizer'
Plugin 'shmargum/vim-sass-colors'

Plugin 'ryanoasis/vim-devicons'
Plugin 'dominikduda/vim_current_word'
Plugin 'drmingdrmer/vim-toggle-quickfix'
Plugin 'tpope/vim-surround'

call vundle#end()            " required
filetype plugin indent on    " required

" my config
set fileencoding=utf-8
set termguicolors
set lazyredraw

syntax on
let g:onedark_terminal_italics=1
colorscheme onedark

set colorcolumn=90
set number
let mapleader=","
set showmatch
set mouse=a
set scrolloff=10

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" smarth way to move between windows
noremap <Esc>j <C-W>j
noremap <Esc>k <C-W>k
noremap <Esc>h <C-W>h
noremap <Esc>l <C-W>l

" if accidentaly type with mayus
:command WQ wq
:command Wq wq
:command W w
:command Q q

" space to search
map <space> /

" navigate between buffers
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

set wildignore+=node_modules/**,*.swp,*.swo
map <leader>s :execute "noautocmd vimgrep /\\<" . expand("<cword>") . "\\>/gj **/*.*" <Bar> cw<CR>

noremap <C-s> :tabprevious<CR>
noremap <C-f> :tabnext<CR>

noremap <silent> <A-s> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
noremap <silent> <A-f> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" airline
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

" nerdtree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['*.swo', '*.swp', 'node_modules$[[dir]]']
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "~",
    \ "Renamed"   : ">",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "x",
    \ "Dirty"     : "✗ ",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" gitgutter
set updatetime=250
if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif

" startify
noremap <C-t> :Startify<CR>

" Check for file modifications automatically
" (current buffer only).
" Use :NoAutoChecktime to disable it (uses b:autochecktime)
set autoread
fun! MyAutoCheckTime()
  " only check timestamp for normal files
  if &buftype != '' | return | endif
  if ! exists('b:autochecktime') || b:autochecktime
    checktime %
    let b:autochecktime = 1
  endif
endfun
augroup MyAutoChecktime
  au!
  au FocusGained,BufEnter,CursorHold * call MyAutoCheckTime()
augroup END
command! NoAutoChecktime let b:autochecktime=0

" current word
let g:vim_current_word#highlight_current_word = 1

" vim move
let g:move_key_modifier = 'C'

" snippets
let g:UltiSnipsExpandTrigger="<tab>"

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
highlight link SyntasticError DiffDelete
highlight link SyntasticWarning DiffAdd

highlight link ErrorMsg DiffDelete
highlight link CurrentWord CurrentWordTwins 
highlight link IncSearch Directory
highlight link WildMenu ModeMsg
highlight link Error DiffDelete

" markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0

" ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|plugins\|platforms'

" vColoor
let g:vcoolor_disable_mappings = 1
let g:vcoolor_lowercase = 1
let g:vcoolor_map = '<leader>c'

" YCM
nnoremap <leader>d :YcmCompleter GoToDefinition<CR>
nnoremap <leader>f :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>r :YcmCompleter GoToReferences<CR>

" fugitive
noremap <leader>gs :Gstatus<CR>
noremap <leader>gd :Gdiff<CR>
noremap <leader>gw :Gwrite<CR>
noremap <leader>gr :Gread<CR>

" quickfix
nmap <leader>q <Plug>window:quickfix:toggle
nmap <leader>qn :cn<CR>
nmap <leader>qp :cp<CR>
