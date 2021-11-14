set hlsearch " 검색어 하이라이팅
set nu " 줄번호
set autoindent " 자동 들여쓰기
set scrolloff=2 " 2줄 범위에서부터 scroll
set wildmode=longest,list
set sw=1 " 스크롤바 너비
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set cindent " C언어 자동 들여쓰기
set bs=eol,start,indent " 줄의 끝, 시작, 들여쓰기에서 백스페이스를 사용하면 이전 줄과 연결됨
set history=256 " 편집한 256줄 까지 기억
set laststatus=2 " 상태바 표시 항상
"set paste " 붙여넣기 계단현상 없애기
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set smartindent
set softtabstop=4 " Tab키를 눌렀을 때 4개 space로
set tabstop=4 " Tab을 4개 space로
set expandtab " 모든 Tab을 space로 설정
set incsearch " 단어 검색시 글자 입력할 때마다 검색

"===================================================================================================="

" swap file 저장 경로를 지정한다.
if !isdirectory(expand("$HOME/.vim/swap"))
    call mkdir(expand("$HOME/.vim/swap"), "p")
endif
set directory=$HOME/.vim/swap

" 되돌리기 상태를 저장해서 영구적으로 사용할 수 있도록 한다.
" u (undo) / Ctrl + r (redo)
set undofile
if !isdirectory(expand("$HOME/.vim/undodir"))
    call mkdir(expand("$HOME/.vim/undodir"), "p")
endif
set undodir=$HOME/.vim/undodir

" Installing plugins
" ~/.vim/pack/plugins/start
packloadall " Load all plugins.
silent! helptags ALL " Load help files for all plugins.

" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Fast split navigation with <Ctrl> + hjkl
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

command! Bd :bp | :sp | :bn | :bd " Close buffer without closing window. (:Bd)


"===================================================================================================="
 
" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
 
" 구문 강조 사용
if has("syntax")
 syntax on
endif
 
" 컬러 스킴 사용
colorscheme gruvbox
" 다크 모드로 사용
set bg=dark

" Set Cursor
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise
