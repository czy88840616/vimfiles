" Vim color file
" Name:           typofree.vim
" Maintainer:     Michiel Roos <vim@typofree.org>
" Created:        ma 06 okt 2008 07:29:31 pm CEST
" Last Modified:  wo 25 feb 2009 09:41:12 am CET
" License:        This file is placed in the public domain.
" Version:        0.1 alpha
"
" This is a 256 color theme for xterm-256color
 
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
 
let colors_name = "typofree"
 
hi Normal        guifg=247   guibg=NONE  gui=NONE
hi SpecialKey    guifg=127   guibg=NONE  gui=NONE " ^M
hi NonText       guifg=20    guibg=NONE  gui=NONE " e.g. the + symbol on line wrap
hi PreProc       guifg=68    guibg=NONE  gui=NONE
 
hi Cursor        guifg=130   guibg=NONE  gui=NONE
hi CursorLine    guifg=NONE  guibg=NONE  gui=underline
hi CursorColumn  guifg=NONE  guibg=234   gui=NONE
 
hi DiffAdd       guifg=NONE  guibg=22    gui=NONE
hi DiffDelete    guifg=NONE  guibg=52    gui=NONE
hi DiffChange    guifg=NONE  guibg=17    gui=NONE
hi DiffText      guifg=NONE  guibg=NONE  gui=underline
 
hi ModeMsg       guifg=65    guibg=NONE  gui=NONE
hi MoreMsg       guifg=65    guibg=NONE  gui=NONE
hi Question      guifg=65    guibg=NONE  gui=NONE
 
hi Pmenu         guifg=16    guibg=23    gui=NONE
hi PmenuSel      guifg=65    guibg=23    gui=NONE
hi PmenuSbar     guifg=16    guibg=23    gui=NONE
hi PmenuThumb    guifg=65    guibg=23    gui=NONE
 
hi IncSearch     guifg=209   guibg=88    gui=NONE
hi Search        guifg=209   guibg=88    gui=NONE
"hi NonText       guifg=38    guibg=NONE  gui=NONE
hi Visual        guifg=231   guibg=60    gui=NONE
hi Error         guifg=231   guibg=88    gui=NONE
 
hi FoldColumn    guifg=88    guibg=NONE  gui=NONE
hi Folded        guifg=108   guibg=23    gui=NONE
 
hi StatusLineNC  guifg=94    guibg=234   gui=NONE
hi StatusLine    guifg=208   guibg=236   gui=NONE
hi VertSplit     guifg=16    guibg=23    gui=NONE
 
" Tab menu
hi TabLineSel    guifg=208   guibg=NONE  gui=NONE
hi TabLineFill   guifg=94    guibg=236   gui=underline
hi TabLine       guifg=94    guibg=236   gui=underline
 
hi Comment       guifg=240   guibg=NONE  gui=NONE
hi Todo          guifg=16    guibg=94    gui=NONE
 
hi String        guifg=65    guibg=NONE  gui=NONE " 'blah'
"hi Character     guifg=65    guibg=NONE  gui=NONE
hi Number        guifg=88    guibg=NONE  gui=NONE
hi Boolean       guifg=127   guibg=NONE  gui=NONE
hi Float         guifg=88    guibg=NONE  gui=NONE
hi Constant      guifg=127   guibg=NONE  gui=NONE
 
hi Identifier    guifg=68    guibg=NONE  gui=NONE " the text in $blah
hi Function      guifg=137   guibg=NONE  gui=NONE " init() substr()
 
hi Define        guifg=28    guibg=NONE  gui=NONE " function
hi Statement     guifg=130   guibg=NONE  gui=NONE " $ = : . return if exit for
hi Conditional   guifg=130   guibg=NONE  gui=NONE " if then else
hi Repeat        guifg=130   guibg=NONE  gui=NONE " foreach while
hi Label         guifg=130   guibg=NONE  gui=NONE " 
 
hi Operator      guifg=178   guibg=NONE  gui=NONE " $ = : . return if exit for
 
hi Include       guifg=28    guibg=NONE  gui=NONE " require include
hi Type          guifg=28    guibg=NONE  gui=NONE
hi StorageClass  guifg=28    guibg=NONE  gui=NONE
hi Structure     guifg=28    guibg=NONE  gui=NONE " class ->
hi Typedef       guifg=28    guibg=NONE  gui=NONE
 
hi Special       guifg=88    guibg=NONE  gui=NONE " () {} []
hi SpecialChar   guifg=88    guibg=NONE  gui=NONE " hex, ocatal etc.
" hi Delimiter     guifg=88    guibg=NONE  gui=NONE

