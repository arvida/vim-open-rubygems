if exists("g:loaded_OpenRubyGems") || &cp
  finish
endif
let g:loaded_OpenRubyGems= 0
let s:keepcpo           = &cpo
set cpo&vim

command! -nargs=* Gem call s:OpenRubyGems(<f-args>)

function! s:OpenRubyGems(...)
  let gem_name = a:0 ? a:1 : expand("<cWORD>")

  :call system("open http://rubygems.org/gems/" . gem_name)
endfunction

let &cpo= s:keepcpo
unlet s:keepcpo
