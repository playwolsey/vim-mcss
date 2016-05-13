if !exists("g:mcss_html_style_tags")
  let g:mcss_html_style_tags = 1
endif

if !g:mcss_html_style_tags
  finish
endif

" Unset (but preserve) so that mcss will run.
if exists("b:current_syntax")
   let s:pre_mcss_cur_syn = b:current_syntax
   unlet b:current_syntax
endif

" Inspired by code from github.com/kchmck/vim-coffee-script
" and the html syntax file included with vim 7.4.

syn include @htmlMcss syntax/mcss.vim

" We have to explicitly add to htmlHead (containedin) as that region specifies 'contains'.
syn region mcssStyle start=+<style [^>]*type *=[^>]*text/mcss[^>]*>+ keepend end=+</style>+ contains=@htmlmcss,htmlTag,htmlEndTag,htmlCssStyleComment,@htmlPreproc containedin=htmlHead

" Reset since 'mcss' isn't really the current_syntax.
if exists("s:pre_mcss_cur_syn")
   let b:current_syntax = s:pre_mcss_cur_syn
endif
