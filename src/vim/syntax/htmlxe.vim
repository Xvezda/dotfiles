" Vim syntax file
" Language:	XpressEngine HTML template
" Maintainer:	Xvezda <xvezda@naver.com>
" Last Change:	2019 May 18

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'html'
endif

runtime! syntax/php.vim
syn sync clear
unlet b:current_syntax

let s:cpo_save = &cpo
set cpo&vim

" Constants, Functions list from: https://github.com/bnu/sublime-xpressengine
syn keyword xeConstants contained __XE__ __ZBXE__ __XE_VERSION__ __ZBXE_VERSION__ _XE_PATH_ _XE_PACKAGE_ _XE_LOCATION_ _XE_LOCATION_SITE_ _XE_DOWNLOAD_SERVER_ __DEBUG__ __DEBUG_OUTPUT__ __DEBUG_PROTECT__ __DEBUG_PROTECT_IP__ __DEBUG_DB_OUTPUT__ __LOG_SLOW_QUERY__ __DEBUG_QUERY__ __OB_GZHANDLER_ENABLE__ __ENABLE_PHPUNIT_TEST__ __PROXY_SERVER__ __XE_CDN_PREFIX__ __XE_CDN_VERSION__
syn keyword xeFunctions contained getModule getController getModel getView getAdminController getAdminModel getAdminView getClass getMobile getAPI getWAP executeQuery executeQueryArray getNextSequence getUrl getNotEncodedUrl getAutoEncodedUrl getFullUrl getNotEncodedFullUrl getSiteUrl getFullSiteUrl isSiteID cut_str zgap ztime getTimeGap getMonthName zdate getMicroTime getEncodeEmailAddress debugPrint delObjectVars handleError getNumberingPath url_decode removeHackTag checkXmpTag getScriptPath getRequestUriByServerEnviroment utf8RawUrlDecode _code2utf detectUTF8 json_encode2 isCrawler stripEmbedTagForAdmin requirePear htmlHeader htmlFooter alertScript closePopupScript reload

syn keyword xeKeyword contained noescape
syn keyword xeArg contained cond loop
syn keyword xeArg contained targetie target index media type
syn keyword xeTagName contained block include load

syn region xeStatementOpen matchgroup=PreProc start="<!--@\(\(else\)\?if\|for\(each\)\?\|while\)(" end=")-->" contains=@phpClTop containedin=ALL keepend
syn match xeStatementClose "<!--@\(end\(if\|for\|while\)\?\|else\)-->" containedin=ALL keepend
syn region xeTemplateOpen start=+{@\?+ end=+}+ contains=@phpClTop,xeFunctions,xeConstants,xeKeyword containedin=ALL keepend

syn cluster htmlArgCluster add=xeArg
syn cluster htmlTagNameCluster add=xeTagName

hi def link xeFunctions Function
hi def link xeConstants Constant
hi def link xeKeyword Number
hi def link xeArg Structure
hi def link xeTagName Todo
hi def link xeStatementClose PreProc


let b:current_syntax = "htmlxe"

let &cpo = s:cpo_save
unlet s:cpo_save
