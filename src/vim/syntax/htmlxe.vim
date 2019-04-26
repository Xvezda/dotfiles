" Vim syntax file
" Language:	XpressEngine HTML template
" Maintainer:	Xvezda <xvezda@naver.com>
" Last Change:	2019 Apr 25

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'html'
endif

runtime! syntax/php.vim
runtime! syntax/html.vim
unlet b:current_syntax


syn keyword xeIncAttr contained targetie target index media type

syn cluster xeBlocks add=xeTagBlock,xeCondComm,xeCondAttr,xeInclude,xeImport

syn region xeTagBlock matchgroup=PreProc start=+{@\?+ end=+}+ contains=@phpClConst,phpComment display containedin=ALLBUT,@xeBlocks
syn region xeCondComm matchgroup=PreProc start=+<!--@\(elseif\|else\|if\|end\|foreach\|for\|while\)+ end=+-->+ contains=@phpClConst display containedin=ALLBUT,@xeBlocks
syn region xeCondAttr matchgroup=PreProc start=+\(cond\|loop\)="+ end=+"+ contains=@phpClConst display containedin=ALLBUT,@xeBlocks
syn region xeInclude matchgroup=PreProc start=+<\(include\|load\)+ end=+\/\?>+ contains=xeIncAttr display containedin=ALLBUT,@xeBlocks
syn region xeImport matchgroup=PreProc start=+<!--%import+ end=+-->+ display containedin=ALLBUT,@xeBlocks

hi def link xeIncAttr Type


let b:current_syntax = "htmlxe"
