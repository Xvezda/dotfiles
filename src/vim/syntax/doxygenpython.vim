" Vim syntax file
" Language:	DoxyGen syntax hilighting extension for python
" Maintainer:	Xvezda <xvezda@naver.com>
" Author:	Xvezda
" Last Change:	2019 Nov 26

if exists('b:suppress_doxygen')
  unlet b:suppress_doxygen
  finish
endif

if exists('b:current_syntax') && b:current_syntax =~ 'doxygen' && !exists('doxygen_debug_script')
  finish
endif

let s:cpo_save = &cpo

" http://www.doxygen.nl/manual/docblocks.html
syn region doxygenComment start=+\z(['"]\{3}\)!+ end=+\z1+ contains=doxygenText keepend
syn region doxygenComment start=+[#]\{2}+ end=+^[^#]+me=e-1 contains=doxygenText

syn region doxygenText contained start=+\z(['"]\{3}\)!+ms=s+4 end=+\z1+me=e-3 contains=doxygenBrief
syn region doxygenText contained start=+[#]\{2}+ms=s+2 end=+^[^#]+me=e-1 contains=doxygenBrief,doxygenSkipComment
syn match doxygenSkipComment contained +^#+

" http://www.doxygen.nl/manual/commands.html
syn match doxygenBrief contained +[\\@]\(addtogroup\|attention\|addindex\|authors\|anchor\|author\|arg\|a\|brief\|bug\|b\|callergraph\|copydetails\|callgraph\|copybrief\|copyright\|category\|copydoc\|class\|cite\|code\|cond\|c\|docbookonly\|dontinclude\|deprecated\|defgroup\|details\|diafile\|dotfile\|date\|def\|dir\|dot\|enddocbookonly\|endsecreflist\|endlatexonly\|endhtmlonly\|endinternal\|endparblock\|endverbatim\|endmanonly\|endrtfonly\|endxmlonly\|exception\|endcode\|endcond\|endlink\|example\|extends\|elseif\|enddot\|endmsc\|enduml\|emoji\|endif\|else\|enum\|em\|e\|file\|f$\|f[\|f]\|f{\|f}\|fn\|hidecallergraph\|hideinitializer\|hidecallgraph\|htmlinclude\|headerfile\|hiderefby\|hiderefs\|htmlonly\|includelineno\|implements\|includedoc\|idlexcept\|invariant\|interface\|internal\|include\|ingroup\|ifnot\|image\|if\|latexinclude\|latexonly\|line\|link\|li\|mainpage\|memberof\|manonly\|mscfile\|msc\|nosubgrouping\|namespace\|name\|note\|n\|overload\|protectedsection\|privatesection\|publicsection\|paragraph\|protected\|parblock\|property\|protocol\|package\|private\|public\|param\|page\|post\|pure\|par\|pre\|p\|relatedalso\|relatesalso\|refitem\|related\|relates\|remarks\|returns\|rtfonly\|remark\|result\|return\|retval\|ref\|showinitializer\|snippetlineno\|subsubsection\|secreflist\|snippetdoc\|subsection\|showrefby\|showrefs\|skipline\|startuml\|section\|snippet\|subpage\|struct\|short\|since\|skip\|see\|sa\|tableofcontents\|typedef\|throws\|tparam\|throw\|test\|todo\|union\|until\|verbinclude\|verbatim\|vhdlflow\|version\|var\|weakgroup\|warning\|xrefitem\|xmlonly\)+


" Anti doxygen comment
syn match  pythonComment   "#\{3}[^#]*$" contains=pythonTodo,@Spell


" Link all syntax definitions
hi def link doxygenComment     SpecialComment
hi def link doxygenText        pythonComment
hi def link doxygenCommentL    doxygenComment
hi def link doxygenSkipComment doxygenComment
hi def link doxygenBrief       Constant
hi def link doxygenEscape      Special

" Restore
let &cpo = s:cpo_save
unlet s:cpo_save

let suppress_doxygen=1

" vim:et sw=2 sts=2
