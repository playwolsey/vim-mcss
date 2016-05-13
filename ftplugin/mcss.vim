" Vim filetype plugin
" Language:	    mcssCSS
" Maintainer:   chengpeng <chengpengcp9@gmail.com>
" Last Change:  2016 5 10

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl cms< def< inc< inex< ofu< sua<"

setlocal iskeyword+=-
setlocal commentstring=//%s
setlocal define=^\\s*\\%(@mixin\\\|=\\)
setlocal includeexpr=substitute(v:fname,'\\%(.*/\\\|^\\)\\zs','_','')
setlocal omnifunc=csscomplete#CompleteCSS
setlocal suffixesadd=.mcss
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,://
setlocal fo=jcroql

let &l:include = '^\s*@import\s\+\%(url(\)\=["'']\='

" vim:set sw=2:
