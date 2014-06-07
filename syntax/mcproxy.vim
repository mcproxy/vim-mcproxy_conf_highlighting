" Vim syntax file
" Language: mcproxy configuration script
" Maintainer: Sebastian Woelke 
" Latest Revision: 7 Juni 2014

if exists("b:current_syntax")
    finish
endif

syntax case ignore 


syntax match mcString                  '\v[a-zA-Z0-9_]*'
syntax region mcString start='\v"' skip='\v\\.' end='\v"'

syntax match mcWildcard                '\v\*'
syntax match mcSpezialChars            '\v\:|\=\=\>|\(|\)|\;|\{|\}|\||\-'

syntax match mcIp6Address              '\v(\x|:){2,39}' contained nextgroup=mcIp6AddressSubmask
syntax match mcIp6AddressSubmask       '\v/(1[0-2][0-9]|[1-9][0-9]|[1-9])?' contained
syntax match mcIp4Address              '\v((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)' contained nextgroup=mcIp4AddressSubmask
syntax match mcIp4AddressSubmask       '\v/((3[0-2])|([1-2]?[0-9]))?' contained

syntax region mcTable start='\v\{' end='\v\}' contains=mcString,mcComment,mcKeyword,mcSpezialChars,mcSpezialChars,mcIp6Address,mcIp4Address,mcWildcard containedin=mcTable

syntax keyword mcKeyword               disable protocol pinstance table
syntax keyword mcKeyword               upstream downstream out in 
syntax keyword mcKeyword               blacklist whitelist
syntax keyword mcKeyword               rulematching  
syntax keyword mcKeyword               all first mutex 
syntax keyword mcProtocol              mldv2 igmpv3
syntax keyword mcNoProtocol            mldv1 igmpv1 igmpv2

syntax match mcTodo                    '\vTODO|FIXME|XXX|\?*' contained
syntax region mcMetaData start='\v\~' end='\v\:' contained
syntax region mcComment start='\v#' end='\v$' contains=mcTodo,mcMetaData


highlight link mcWildcard               Constant 
highlight link mcString                 String 
highlight link mcKeyword                Keyword 
highlight link mcSpezialChars           Keyword  
highlight link mcProtocol               Type 
highlight link mcNoProtocol             Error 

highlight link mcIp4Address             Number 
highlight link mcIp4AddressSubmask      Number 
highlight link mcIp6Address             Number 
highlight link mcIp6AddressSubmask      Number 

highlight link mcComment                Comment
highlight link mcTodo                   Todo 
highlight link mcMetaData               Exception 


let b:current_syntax = "mcproxy"



