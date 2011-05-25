" Frank Xu<yyfrankyy@gmail.com>
" f2e.us

" Editor Config {{{
if &cp | set nocp | endif
set go=
set helplang=cn
set encoding=utf-8
set fileencodings=gbk,ucs-bom,utf-8,gb18030,gb2312,cp936
set langmenu=en_US
let $LANG='en_US'
language messages en_US.utf-8
so $VIMRUNTIME/delmenu.vim
so $VIMRUNTIME/menu.vim
set wildmenu
set wildmode=list:longest,full
set ruler
set cursorline
set laststatus=2
set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{&fenc}\ \ %=\ buf:%n\ lines:%L\ %h%m%r%=%-10.(%l,%c%V%)\ %P
" set synmaxcol=0

" just for gvim
if has("gui_running")
    color lucius
    au GUIEnter * cd ~
    set cursorcolumn
else
    color desert
endif

" unix config, mac maybe
nmap <leader>v :vsp ~/.vim/_vimrc<cr>
au! bufwritepost .vimrc source %
if has("unix") && !has("mac")
    set guifont=Inconsolata\ Medium\ 11
    set guifontwide=WenQuanYi\ Micro\ Hei\ Mono\ Medium\ 10
endif

if has("mac")
    set guifont=Monaco:h13
endif

" windows config
au! bufwritepost _vimrc source %
if has("win32")
    au! bufwritepost hosts call RefreshSystemDNS()
    set guifont=Consolas:h11:cANSI
    set guifontwide=YaHei\ Consolas\ Hybrid:h11
    au GUIEnter * simalt ~x
    nmap <leader><leader> :simalt ~x<cr>
    nmap <leader>v :vsp ~/vimfiles/_vimrc<cr>
    nmap <leader>h :vsp c:\windows\system32\drivers\etc\hosts<cr>
endif
" }}}
" File Config {{{
filetype on
filetype plugin on
filetype indent on
" augroup markdown
"     au! BufRead,BufNewFile *.mkd set filetype mkd
"     au! BufRead,BufNewFile *.md set filetype mkd
"     au! BufRead *.md  set ai formatoptions=tcroqn2 comments=n:&gt; filetype=mkd
"     au! BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt; filetype=mkd
" augroup END
" }}}
" Code Config {{{
set nowrap
set number
set autoindent
set smartindent
set autoread
syn on
set tabstop=4 shiftwidth=4
set bs=indent,eol,start
set ignorecase
set smartcase
set expandtab
set is
set foldmethod=marker
set magic
" no error alarm
set noeb
set novb
" }}}
" Key Map Config {{{
vnoremap <tab> >gv 
vnoremap <s-tab> <gv
inoremap <s-tab> <esc>V<s-tab>
nmap ,w :w!<cr>
nmap ,sw :call SudoSave()<cr>
vmap ,w <ESC>:w!<cr>
map H ^
map L $
nmap <c-s> :w<cr>
map ,q :q<cr>
nmap <tab> <C-W>
imap <c-j> <c-n>
imap <c-k> <c-p>
nmap <C-t> :tabnew<CR>
vmap <C-y> "+y
vmap x "zd
nmap <C-Z> <C-R>
nmap <C-h> <C-PageUp>
nmap <C-l> <C-PageDown>
nmap <space> 30<c-d>
vmap <space> 30<c-d>
nmap <s-space> 30<c-u>
vmap <s-space> 30<c-u>
nmap <a-l> <c-w>>
nmap <a-h> <c-w><
nmap <a-j> <c-w>+
nmap <a-k> <c-w>-
imap <c-s> <esc>:w<cr>li
nmap <a-b> <s-v>yp
nmap <leader>b :BufExplorer<cr>
nmap <c-a> ggvGL
" XXX Mac's F9, F10 conflict with global setting
map <F9> :NERDTreeToggle<cr>
map <F10> :Tlist<cr>
nmap <silent> <F2> <esc>:call ToggleHighLightSearch()<cr>
nmap <leader>` :cw<cr>
" clean \t to space
nmap <leader>ts :silent! :%s/\t/    /g<cr>
nmap <leader>gbk :set fenc=gbk<cr>,w
" }}}
" Plugin Config {{{
if has("win32")
    " Ctags for taglist
    let Tlist_Ctags_Cmd="D:\\Apps\\ctags58\\ctags.exe"
endif

" vimwiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_camel_case = 0
let g:vimwiki_valid_html_tags = "script"
let g:vimwiki_menu = ''
let g:vimwiki_list = [{'path': '~/projects/yyfrankyy.github.com/src/wiki/',
            \                      'path_html': '~/projects/yyfrankyy.github.com/wiki/',
            \                      'diary_link_count': 8,
            \                      'diary_index': 'index',
            \                      'html_header': '~/projects/yyfrankyy.github.com/src/template/header.tpl',
            \                      'html_footer': '~/projects/yyfrankyy.github.com/src/template/footer.tpl'},
            \         {'path': '~/projects/yyfrankyy.github.com/src/slides/',
            \                      'path_html': '~/projects/yyfrankyy.github.com/slides/',
            \                      'html_header': '~/projects/yyfrankyy.github.com/src/template/header.tpl',
            \                      'html_footer': '~/projects/yyfrankyy.github.com/src/template/footer.tpl'}]
if has('win32')
    let g:vimwiki_list = [{'path': 'd:/projects/yyfrankyy.github.com/src/wiki/',
                \                      'path_html': 'd:/projects/yyfrankyy.github.com/wiki/',
                \                      'diary_link_count': 8,
                \                      'diary_index': 'index',
                \                      'html_header': 'd:/projects/yyfrankyy.github.com/src/template/header.tpl',
                \                      'html_footer': 'd:/projects/yyfrankyy.github.com/src/template/footer.tpl'},
                \                     {'path': 'd:/projects/yyfrankyy.github.com/src/wiki/diary/',
                \                      'path_html': 'd:/projects/yyfrankyy.github.com/log/',
                \                      'html_header': 'd:/projects/yyfrankyy.github.com/src/template/header.tpl',
                \                      'html_footer': 'd:/projects/yyfrankyy.github.com/src/template/footer.tpl'}]
endif

" TOHtml
let html_use_css = 1
let use_xhtml = 1
let html_number_lines = 1
nmap <S-F8> :Vimwiki2HTML<cr>
nmap <S-F9> :VimwikiAll2HTML<cr>
nmap gh :VimwikiIndex<cr>
nmap <leader>c :ConqueTermSplit 

" Bash Plugin
let g:BASH_AuthorName = 'yyfrankyy'
let g:BASH_Email = 'yyfrankyy@gmail.com'

" Template
let g:template_path = '~/.vim/template/'
if has('win32')
    let g:template_path = '~/vimfiles/template/'
endif

" gjslint.vim
let g:gjslint_toggle = 'true'

" snippets
function! ReloadSnippets( snippets_dir, ft )
  if strlen( a:ft ) == 0
    let filetype = "_"
  else
    let filetype = a:ft
  endif

  call ResetSnippets()
  call GetSnippets( a:snippets_dir, filetype )
endfunction
nmap \r :call ReloadSnippets(snippets_dir, &filetype)<cr>
" }}}
" Project Config {{{
" set makeprg=ant
" set efm=\ %#[javac]\ %#%f:%l:%c:%*\\d:%*\\d:\ %t%[%^:]%#:%m,\%A\ %#[javac]\ %f:%l:\ %m,%-Z\ %#[javac]\ %p^,%-C%.%#
if has("unix")
    nmap <leader>srp :cd ~/work/dev/search/<cr><F9>
    nmap <leader>bang :cd ~/work/dev/bang<cr><F9>
    nmap <leader>wk :cd ~/projects/yyfrankyy.github.com/src/wiki/<cr><F9>
endif
" autocmd BufWritePost */work/*.js call RefreshFirefox()
" autocmd BufWritePost */work/*.css call ReloadCSSFirefox()
" autocmd BufWritePost */work/*.php call RefreshFirefox()
" }}}
" Private Function {{{
func! ToggleHighLightSearch()
    if &hls
        set nohls
    else
        set hls
    endif
endfunc

" write a file for firefox autorefresh plugin
func! RefreshFirefox()
    !echo '' > /tmp/refresh.firefox
    syn on
endfunc
func! ReloadCSSFirefox()
    !echo '' > /tmp/reloadCSS.firefox
    syn on
endfunc
func! RefreshSystemDNS()
    !start cmd /C ipconfig /flushdns
    syn on
endfunc
func! SudoSave()
    :w !sudo tee %
    syn on
endfunc
" }}}
