" => plugin List

call plug#begin('~/.vim/plugged')

Plug 'AndrewRadev/splitjoin.vim' " multiline <-> single-line
Plug 'HerringtonDarkholme/yats.vim' " typescript syntax
Plug 'Shougo/denite.nvim', { 'tag': '2.1' }
Plug 'Shougo/neomru.vim'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular' " text filtering and alignment
Plug 'hotoo/pangu.vim' "中文排版自动规范化
Plug 'idanarye/vim-merginal' "Fugitive extension to manage and merge Git branches
Plug 'idanarye/vim-vebugger'
Plug 'itchyny/calendar.vim'
Plug 'itchyny/lightline.vim'
Plug 'jparise/vim-graphql'
Plug 'junegunn/goyo.vim' "Distraction-free writing
Plug 'junegunn/gv.vim' " a git commit browser
Plug 'justinmk/vim-dirvish'
Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'html', 'css'] }
Plug 'moll/vim-node'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neoclide/coc.nvim', {'do': 'yarn --frozen-lockfile'}
Plug 'neoclide/denite-git'
Plug 'neoclide/vim-jsx-improve'
Plug 'prettier/vim-prettier', { 'do': 'yarn' }
Plug 'qpkorr/vim-bufkill' " :BD
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch' "Helpers for UNIX
Plug 'tpope/vim-fugitive' " an awesome Git wrapper
Plug 'tpope/vim-rhubarb' " GitHub extension for fugitive.vim
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'

call plug#end()

" => Plugin Trash

" Plug 'neoclide/coc-smartf', {'do': 'yarn'}
" Plug 'mxw/vim-jsx'
" Plug 'scrooloose/nerdtree'
" Plug 'masukomi/vim-markdown-folding'
" Plug 'machakann/vim-highlightedyank'
" Plug 'jiangmiao/auto-pairs'
" Plug 'w0rp/ale'
" Plug 'ap/vim-css-color'
" Plug 'morhetz/gruvbox'
" Plug 'junegunn/vim-slash' " 1) auto clear search highlight; 2) improved star-search
" Plug 'yianwillis/vimcdoc' " chinese help
" Plug 'pangloss/vim-javascript'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'tommcdo/vim-lion' " A simple alignment operator for Vim text editor
" Plug 'itchyny/dictionary.vim' " not compatible with neovim
" Plug 'mileszs/ack.vim'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'romainl/vim-qf'
" Plug 'leafgarland/typescript-vim'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" Plug 'neoclide/vim-jsx-improve'
" Plug 'tpope/vim-dadbod'
" Plug 'wincent/ferret' " Enhanced multi-file search for Vim 
" Plug 'wincent/command-t'
" Plug 'tpope/vim-obsession' " continuously updated session files
" Plug 'henrik/vim-indexed-search'
" Plug 'ap/vim-buftabline'
" Plug 'justinmk/vim-sneak' " motion
" Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " file explorer
" Plug 'mhinz/vim-startify' " The fancy start screen for Vim
" Plug 'neoclide/denite-extra'
" Plug 'mhinz/vim-startify' " The fancy start screen for Vim
" Plug 'majutsushi/tagbar'
" Plug 'Shougo/neomru.vim'
" Plug 'sonph/onehalf', { 'rtp': 'vim/' }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'carlitux/deoplete-ternjs', { 'do': 'yarn global add tern' }
" Plug 'ternjs/tern_for_vim', { 'do': 'yarn install', 'for': ['javascript', 'javascript.jsx'] }
" Plug 'Quramy/tsuquyomi' " typescript plugin
" Plug 'bling/vim-bufferline'
" Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'Valloric/YouCompleteMe'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets' " default snippets
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'scrooloose/nerdcommenter'
" Plug 'vim-syntastic/syntastic' "Syntax checking hacks for vim
" Plug 'othree/yajs.vim' "Yet Another JavaScript Syntax for Vim
" Plug 'sbdchd/neoformat'
" Plug 'posva/vim-vue'
" Plug 'jparise/vim-graphql'
" Plug 'trevordmiller/nova-vim'
" Plug 'reedes/vim-lexical' " Build on Vim’s spell/thes/dict completion
" Plug 'flazz/vim-colorschemes'
" Plug 'felixhummel/setcolors.vim'
" Plug 'junegunn/fzf'
" Plug 'junegunn/fzf.vim'
" Plug 'pbogut/fzf-mru.vim'
" Plug 'tpope/vim-vinegar' " Combine with netrw to create a delicious salad dressing

" => options

colorscheme onedark

let mapleader=" "

packadd cfilter

set path+=**
set wildignore+=**/node_modules/** 
set shortmess+=I " hide intro message
set noerrorbells
set novisualbell
set termguicolors
set noshowmode
set nowrap
set linebreak
set updatetime=100
set clipboard=unnamed
set number
set nocursorline
set signcolumn=yes
set fillchars=vert:\│,fold:-
set splitright
set splitbelow
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set ignorecase
set foldmethod=indent "syntax highlighting items specify folds
set foldlevelstart=99 "start file with all folds opened
set autoread
set list " work great with onedark.vim for showing trail chars
set cmdheight=1
set synmaxcol=500

hi VertSplit guibg=bg

" => plugin Config

" ---> vimwiki

let wiki = {
      \ 'path': '~/Dropbox/vimwiki',
      \ 'syntax': 'markdown',
      \ 'ext': '.md',
      \ 'auto_tags': 1,
      \}
let g:vimwiki_list = [wiki]
let g:vimwiki_folding = 'expr'
let g:vimwiki_user_htmls = '404.html,search.html'

" ---> Dirvish

let g:dirvish_mode = ':sort ,^.*[\/],'

" ---> Nerdtree

" function! s:openNERDTree() abort
"   if &ft == 'nerdtree'
"     call nerdtree#ui_glue#upDir(0)
"     return
"   endif
"   let path = empty(expand('%')) ? '.' : expand('%:h')
"   execute 'edit '.path
" endfunction

" nnoremap <silent> - :call <SID>openNERDTree()<CR>

" let NERDTreeMinimalUI = 1

" ---> highlightedyank

let g:highlightedyank_highlight_duration = 100



" ---> vimcdoc

" reset helplang, yianwillis/vimcdoc set helplang=cn
autocmd! VimEnter * set helplang=en

" ---> Denite

" call denite#custom#alias('source', 'file/rec/git', 'file/rec')
" call denite#custom#var('file/rec/git', 'command',
"       \ ['git', 'ls-files', '-co', '--exclude-standard'])
" nnoremap <silent> <C-p> :<C-u>Denite
"       \ `finddir('.git', ';') != '' ? 'file/rec/git' : 'file/rec'`<CR>
call denite#custom#map(
      \ 'insert',
      \ '<C-n>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-p>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)

call denite#custom#var('file/rec', 'command',
      \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" " narrow by path in grep source
" call denite#custom#source('grep',
"       \ 'converters', ['converter/relative_word'])

" ---> coc.nvim
let g:coc_start_at_startup = 1
let g:coc_global_extensions = [
\ 'coc-tsserver',
\ 'coc-json',
\ 'coc-css',
\ 'coc-html',
\ 'coc-yaml',
\ 'coc-python',
\ 'coc-snippets',
\ 'coc-eslint',
\ 'coc-jest',
\ 'coc-highlight',
\ 'coc-vimlsp',
\ 'coc-pairs',
\ 'coc-yank',
\ ]

nmap <silent> <leader>dd <Plug>(coc-definition)
nnoremap <silent> gd <Plug>(coc-defininion)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <leader>qf  <Plug>(coc-fix-current)
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
" ---> pangu

"autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()

" ---> ultisnips

" let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/UltiSnips']

" ---> ale

" let g:ale_linters = {
" \   'javascript': ['eslint'],
" \}
" let g:ale_fixers = {
" \   'javascript': ['prettier'],
" \   'css': ['prettier'],
" \}
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" let g:ale_open_list = 0
" let g:ale_lint_on_text_changed = 0
" let g:ale_lint_on_save = 1
" let g:ale_keep_list_window_open = 0


" let g:ale_sign_error = '●' " Less aggressive than the default '>>'
" let g:ale_sign_warning = '.'
" let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" ---> lightline

let g:lightline = { 'colorscheme': 'onedark' }

let g:lightline.component = {
    \ 'totalLine': "%{line('$')}",
    \ }

let g:lightline.subseparator = { 'left': '|', 'right': '|' }

let g:lightline.component_expand = {
      \ }

let g:lightline.component_type = {
      \ }

let g:lightline.component_function = {
    \ 'gitbranch': 'fugitive#head',
    \ 'workingDirectory': 'WorkingDirectory',
    \ 'cocstatus': 'CocStatus',
    \ }

let g:lightline.active = {
    \ 'left': [ [ 'mode' ],
    \           [ 'gitbranch', 'workingDirectory' ],
    \           [ 'filename', 'readonly', 'modified' ] ],
    \ 'right': [ ['cocstatus'],
    \            [ 'lineinfo' ],
    \            [ 'filetype' ] ] }


let g:lightline.inactive = {
    \ 'left': [ [ 'filename' ],
    \           [ 'readonly', 'modified' ] ],
    \ 'right': [ [ 'totalLine' ],
    \            [ 'lineinfo' ],
    \            [ 'filetype' ] ] }

let g:lightline.tabline = {
    \ 'left': [ [ 'tabs' ] ],
    \ 'right': [ ] }

function! WorkingDirectory()
 return strpart(getcwd(), strridx(getcwd(), '/') + 1)
endfunction

function! CocStatus() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, 'E' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, 'W' . info['warning'])
  endif
  return join(msgs, ' '). ' ' . get(g:, 'coc_status', '')
endfunction

" augroup lightline#ale
"   autocmd!
"   autocmd User ALEJobStarted call lightline#update()
"   autocmd User ALELintPost call lightline#update()
"   autocmd User ALEFixPost call lightline#update()
" augroup END

" ---> emmet

let g:user_emmet_leader_key='<c-e>'
let g:user_emmet_mode='i'
let g:user_emmet_install_global = 0
let g:user_emmet_settings={
\  'javascript.jsx' : {
\    'extends': 'jsx',
\    'ignore_embeded_filetype': 1,
\    'attribute_name': {'class': 'className', 'for': 'htmlFor'},
\    'empty_element_suffix': ' />',
\  },
\}

augroup emmet
  autocmd!
  autocmd FileType html,css,javascript.jsx EmmetInstall
augroup END


" ---> prettier

" let g:prettier#config#parser = 'babel'
let g:prettier#config#single_quote = 'true' 
let g:prettier#config#trailing_comma = 'all'

let g:sneak#label = 1

" ---> gitgutter

" autocmd BufEnter * GitGutterAll

" ---> goyo

let g:goyo_height = '100%'
let g:goyo_linenr = 1

function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  " set scrolloff=999
  " silent !tmux set status off
  " silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  " set scrolloff=5
  " silent !tmux set status on
  " silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()


" => Mappings

nnoremap : ;
nnoremap ; :

vnoremap : ;
vnoremap ; :

nnoremap <leader><Tab> :b#<cr>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>
nnoremap <leader>nn :nohl<cr>

nnoremap <silent><leader>f :Denite buffer file/rec<cr>
nnoremap <silent><leader>gg :Denite -no-empty grep<cr>

nnoremap <leader>nb :bnext<cr>
nnoremap <leader>pb :bprevious<cr>
nnoremap <leader>nc :cnext<cr>
nnoremap <leader>pc :cprevious<cr>
nnoremap <leader>nl :lnext<cr>
nnoremap <leader>pl :lprevious<cr>

nnoremap <leader>gj :GitGutterNextHunk<cr>
nnoremap <leader>gk :GitGutterPrevHunk<cr>
nnoremap <leader>gu :GitGutterUndoHunk<cr>

nnoremap <silent><leader>g :<c-u>set operatorfunc=GrepOperator<cr>g@
vnoremap <silent><leader>g :<c-u>call GrepOperator(visualmode())<cr>

nmap <Leader>wp <Plug>VimwikiDiaryPrevDay
nmap <Leader>wn <Plug>VimwikiDiaryNextDay

nnoremap <leader>z :Goyo<cr>

" save buffer
noremap <C-S>    :w<CR>
vnoremap <C-S>   <C-C>:w<CR>
inoremap <C-S>   <C-C>:w<CR>

" search visual
vnoremap // y/<C-r>"<cr>

" terminal
tnoremap <Esc> <C-\><C-n>

" switch windows
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

" search google
" nnoremap <leader>s :<c-u>set operatorfunc=SearchOperator<cr>g@
" vnoremap <leader>s :<c-u>call SearchOperator(visualmode())<cr>

function! SearchOperator(type)
    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else
        return
    endif

    silent execute '!open https://www.google.com/search\?q=\'. @@
endfunction

nnoremap <silent><leader>ds :<c-u>call Webster()<cr>

function! Webster()
  silent execute '!open http://learnersdictionary.com/definition/'.expand('<cword>')
endfunction

nnoremap <silent><leader>ys :<c-u>call Youglish()<cr>

function! Youglish()
  silent execute '!open https://youglish.com/search/'.expand('<cword>').'/us'
endfunction

" => Autocmds

" augroup AutoSaveAndRestoreView
"   autocmd!
"   autocmd BufWinLeave * mkview
"   autocmd BufWinEnter * silent loadview
" augroup END<Paste>

autocmd BufWritePost,WinEnter * GitGutter

autocmd BufNewFile,BufRead *.vue set filetype=html
autocmd BufNewFile,BufRead *.wxml set filetype=html
autocmd FocusGained * :checktime

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md set wrap linebreak
" autocmd BufRead,BufNewFile *.md call deoplete#disable()

" augroup lexical
"   autocmd!
"   autocmd FileType markdown,mkd call lexical#init()
"   autocmd FileType textile call lexical#init()
"   autocmd FileType text call lexical#init({ 'spell': 1 })
" augroup END

augroup ft_help
  autocmd!
  autocmd FileType help set number
augroup END

" => folding

autocmd BufRead *.vim set foldmethod=expr
autocmd BufRead *.vim set foldexpr=FoldLevel(v:lnum)

function! FoldLevel(lnum)
  let firstLine = getline(1)
  let curLine = getline(a:lnum)
  let nextLine = getline(a:lnum + 1)
  let expr1 = '\v^"\s*\=\>'
  let expr2 = '\v^"\s*\-\-\-\>'

  if firstLine !~? expr1
    return 0
  endif

  if curLine =~? expr1
    return 1
  endif

  if curLine =~? expr2
    return 2
  endif

  " empty line
  if curLine =~? '\v^\s*$'
    if nextLine =~? expr1
      return 0
    endif
    if nextLine =~? expr2
      return 1
    endif
  endif

  return '='
endfunction


" => Terminal

let $GIT_EDITOR = 'nvr -cc split --remote-wait'

augroup term_cmd
  autocmd!
  " for answering nvr remote
  autocmd FileType gitcommit set bufhidden=delete

  autocmd TermOpen * startinsert
  autocmd TermClose * bd!
augroup END

" => Abbreviations

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

" => functions

function! GrepOperator(type)
    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else
        return
    endif

    execute "Denite grep -input=" . @@
endfunction

