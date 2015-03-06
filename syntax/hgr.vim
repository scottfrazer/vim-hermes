" Vim syn file
" Language: Hermes Grammar File
" Maintainer: Scott Frazer
" Latest Revision: 06 March 2015
"
if exists("b:current_syn")
   finish
endif

syn keyword hermesKeyword grammar lexer parser mode
syn match hermesMode 'lexer<python>'
syn match hermesMode 'mode<partials>'
syn match hermesTerminal /:[a-zA-Z0-9_]\+/
syn match hermesStackPush /@[a-zA-Z0-9_]\+/
syn match hermesNonTerminal /\$[a-zA-Z0-9_]\+/
syn region hermesString start=/r'/ end=/'/ contains=hermesStringEmbeddedQuote
syn match hermesStringEmbeddedQuote /\\'/ contained

hi link hermesString String
hi link hermesStringEmbeddedQuote String
hi link hermesTerminal Include
hi link hermesNonTerminal Delimiter
hi link hermesStackPush StorageClass

syn match hermesComment "\v#.*$"
highlight link hermesComment Comment

highlight link hermesMode Function
highlight link hermesKeyword Keyword
