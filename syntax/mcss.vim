if exists("b:current_syntax")
  finish
endif

runtime! syntax/css.vim
runtime! after/syntax/css.vim
" load files from vim-css3-syntax plugin (https://github.com/hail2u/vim-css3-syntax)
runtime! after/syntax/css/*.vim

syn case ignore

syn region mcssDefinition transparent matchgroup=cssBraces start='{' end='}' contains=css.*Attr,css.*Prop,cssComment,cssValue.*,cssColor,cssTagName,cssPseudoClass,cssUrl,cssImportant,cssError,cssStringQ,cssStringQQ,cssFunction,cssUnicodeEscape,mcssDefinition,mcssComment,mcssClassChar,mcssVariable,mcssMixinChar,mcssAmpersandChar,mcssFunction,mcssNestedSelector,@cssColors fold

syn match mcssVariable "@[[:alnum:]_-]\+" contained
syn match mcssVariable "@[[:alnum:]_-]\+" nextgroup=mcssVariableAssignment skipwhite
syn match mcssVariableAssignment ":" contained nextgroup=mcssVariableValue skipwhite
syn match mcssVariableValue ".*;"me=e-1 contained contains=mcssVariable,mcssOperator,mcssDefault,cssValue.*,@cssColors "me=e-1 means that the last char of the pattern is not highlighted

syn match mcssOperator "+" contained
syn match mcssOperator "-" contained
syn match mcssOperator "/" contained
syn match mcssOperator "*" contained

syn match mcssNestedSelector "[^/]* {"me=e-1 contained contains=cssTagName,cssAttributeSelector,mcssAmpersandChar,mcssVariable,mcssMixinChar,mcssFunction,mcssNestedProperty
syn match mcssNestedProperty "[[:alnum:]]\+:"me=e-1 contained

syn match mcssDefault "!default" contained

syn match mcssMixinChar "\.[[:alnum:]_-]\@=" contained nextgroup=mcssClass
syn match mcssAmpersandChar "&" contained nextgroup=mcssClass,cssPseudoClass
syn match mcssClass "[[:alnum:]_-]\+" contained

" functions {{{

" string functions
syn keyword mcssFunction escape e % containedin=cssDefinition contained
" misc functions
syn keyword mcssFunction unit containedin=cssDefinition contained
" math functions
syn keyword mcssFunction ceil floor percentage round containedin=cssDefinition contained
" color definition
syn keyword mcssFunction rgb rgba argb hsl hsla hsv hsva containedin=cssDefinition contained
" color channel information
syn keyword mcssFunction hue saturation lightness red green blue alpha luma containedin=cssDefinition contained
" color operations
syn keyword mcssFunction saturate desaturate lighten darken fadein fadeout fade spin mix greyscale contrast containedin=cssDefinition contained
" color blending
syn keyword mcssFunction multiply screen overlay softlight hardlight difference exclusion average negation containedin=cssDefinition contained

" }}}

syn match mcssComment "//.*$" contains=@Spell

hi def link mcssVariable Special
hi def link mcssVariableValue Constant
hi def link mcssDefault Special
hi def link mcssComment Comment
hi def link mcssFunction Function
hi def link mcssMixinChar Special
hi def link mcssAmpersandChar Special
hi def link mcssNestedProperty Type
hi def link mcssClass PreProc

let b:current_syntax = "mcss"
