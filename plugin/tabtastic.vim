" tabtastic.vim - Helps make multiple tabs in Vim quick and easy
" ---------------------------------------------------------------
" Version:       1.0
" Author:        Matt Michnal <http://mgm702.com>
" Last Modified: 2015 Oct 7
" Script:        http://www.vim.org/scripts/script.php?script_id=5255
" License:       GPL (Gnu Public License)
" GetLatestVimScripts: 5255 1 :AutoInstall: tabtastic.vim

if v:version < 700
    echohl WarningMsg
    echomsg 'Tabtastic requires at least the 7.0 version of Vim to work. Please update Vim and try Tabtastic again.'
    echohl None
    finish
endif

function! s:RunTabtastic() " {{{1

  let g:tab_num = GetUserInput()
  let g:load_or_open = OpenOrLoadTabs()
  
  if g:load_or_open == 0
    call OpenTabs(g:tab_num)
  elseif g:load_or_open == 1 
    call LoadTabs(g:tab_num)
  else
    echo "\n" . "Something has gone wrong with the Tabtastic plugin, please try again."
  endif

endfunction " }}}1


" Ask the user how many tabs they would like and store to variable
function! GetUserInput() " {{{1

  let new_int = 0
  while new_int <= 0
    let user_input = input("How many tabs do you want to create? ")
    " CHECK TO MAKE SURE USER ENTERED NUMBER
    let new_int = str2nr(user_input)
    if new_int <= 0
      echo "\n" . "I'm sorry that is not a number variable, please try again."
    endif
  endwhile
  return new_int 

endfunction " }}}1

" OpenOrLoadTabs() function is used to to determine whether the user wants to
" open empty tabs or have preloaded ones.
function! OpenOrLoadTabs() " {{{1
  
  let open_or_load = input("Would you like to load specific tabs? ")
     
    if open_or_load ==? 'yes' || open_or_load ==? 'y'
      return 1
    else
      return 0
    endif

  endwhile

endfunction " }}}1

"This function is called if the user just wants to load empty tabs
function! OpenTabs(tab_num) " {{{1
  
  let i = 0
  let open_tab_num = a:tab_num
  while i < open_tab_num
   execute ":tabe" 
   let i += 1
  endwhile

endfunction " }}}1

" LoadTab function is called if user has specific tabs they want to load
function! LoadTabs(tab_num) " {{{1
 
  let open_tab_num = a:tab_num
  let var_one = 0
  let tab_count = 1
  let increase_one = 0
  let s:tabs_user_wants = []
  
  while var_one < open_tab_num
    let user_input = input("What file would you like to open for tab " . tab_count . "? ")
    call add(s:tabs_user_wants,user_input)
    let tab_count += 1
    let var_one += 1
  endwhile
  
  let var_one = 0
  while var_one < open_tab_num
    let user_input_tab = s:tabs_user_wants[var_one]
    execute ":tabe " . user_input_tab 
    let var_one += 1
  endwhile

endfunction " }}}1

"Here is the Tabtasic command which calls the RunTabtastic() function
:com! -nargs=0 Tabtastic call <SID>RunTabtastic()
