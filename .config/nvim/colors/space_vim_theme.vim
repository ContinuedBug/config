if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Space-vim theme] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'space_vim_theme'

if &background ==# 'dark'
  let g:terminal_ansi_colors = [
        \ '#121212', '#d26487', '#35a8a5', '#b89f33', '#6981c5', '#a15ea7', '#288668', '#727272',
        \ '#34323e', '#f2241f', '#67b11d', '#b1951d', '#4f97d7', '#bc6ec5', '#2d9574', '#b2b2b2']
  if !has('gui_running') && get(g:, 'space_vim_transp_bg', 0)
    hi Normal ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=234 ctermbg=NONE guifg=#212026 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  else
    hi Normal ctermfg=249 ctermbg=235 guifg=#b2b2b2 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=170 ctermbg=234 guifg=#bc6ec5 guibg=#212026 guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=170 ctermbg=234 guifg=#bc6ec5 guibg=#212026 guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=249 ctermbg=235 guifg=#b2b2b2 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=234 ctermbg=235 guifg=#212026 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
  endif
  hi ColorColumn ctermfg=NONE ctermbg=234 guifg=NONE guibg=#212026 guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi! link CursorColumn CursorLine
  hi CursorLine ctermfg=NONE ctermbg=234 guifg=NONE guibg=#212026 guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=70 ctermbg=235 guifg=#67b11d guibg=#121212 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChange ctermfg=173 ctermbg=235 guifg=#e18254 guibg=#121212 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffDelete ctermfg=196 ctermbg=235 guifg=#f2241f guibg=#121212 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=136 ctermbg=235 guifg=#b1951d guibg=#121212 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Directory ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=235 ctermbg=NONE guifg=#121212 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=196 ctermbg=235 guifg=#f2241f guibg=#121212 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi ErrorMsg ctermfg=235 ctermbg=196 guifg=#121212 guibg=#f2241f guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=133 ctermbg=234 guifg=#a45bad guibg=#212026 guisp=NONE cterm=NONE gui=NONE,italic
  hi IncSearch ctermfg=173 ctermbg=235 guifg=#e18254 guibg=#121212 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi LineNr ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
  hi ModeMsg ctermfg=184 ctermbg=NONE guifg=#e5d11c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link MoreMsg ModeMsg
  hi NonText ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=103 ctermbg=236 guifg=#9a9aba guibg=#34323e guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=234 guifg=NONE guibg=#212026 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=NONE ctermbg=60 guifg=NONE guibg=#5e5079 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=60 guifg=NONE guibg=#5d4d7a guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link QuickFixLine Search
  hi! link qfLineNr Type
  hi Search ctermfg=70 ctermbg=235 guifg=#67b11d guibg=#121212 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi SpecialKey ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellCap ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=#4f97d7 cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellLocal ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=#2d9574 cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellRare ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=#bc6ec5 cterm=NONE,underline gui=NONE,italic,undercurl
  hi StatusLine ctermfg=249 ctermbg=60 guifg=#b2b2b2 guibg=#5d4d7a guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=60 ctermbg=236 guifg=#5d4d7a guibg=#34323e guisp=NONE cterm=NONE gui=NONE
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi TabLineFill ctermfg=60 ctermbg=234 guifg=#544a65 guibg=#212026 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=70 ctermbg=234 guifg=#67b11d guibg=#212026 guisp=NONE cterm=NONE gui=NONE
  hi! link TabLine TabLineFill
  hi Title ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Visual ctermfg=NONE ctermbg=60 guifg=NONE guibg=#544a65 guisp=NONE cterm=NONE gui=NONE
  hi! link VisualNOS Visual
  hi WarningMsg ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=173 ctermbg=234 guifg=#e18254 guibg=#212026 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Boolean ctermfg=166 ctermbg=NONE guifg=#dc752f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Comment ctermfg=37 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE,none gui=NONE,italic,none
  hi Conditional ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Constant ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=196 ctermbg=NONE guifg=#f54e3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=73 ctermbg=NONE guifg=#74baac guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=196 ctermbg=235 guifg=#f2241f guibg=#121212 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi Exception ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=147 ctermbg=NONE guifg=#b7b7ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Identifier ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Label ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Macro ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Number ctermfg=176 ctermbg=NONE guifg=#e697e6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=74 ctermbg=NONE guifg=#58b0d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreCondit ctermfg=133 ctermbg=NONE guifg=#a45bad guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=177 ctermbg=NONE guifg=#d698fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialChar ctermfg=80 ctermbg=NONE guifg=#28def0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=67 ctermbg=NONE guifg=#768294 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Special ctermfg=172 ctermbg=NONE guifg=#d79650 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=29 ctermbg=NONE guifg=#DD9242 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=31 ctermbg=NONE guifg=#4495b4 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Tag ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
  hi Type ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Underlined ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi! link lCursor Cursor
  hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ToolbarLine ctermfg=NONE ctermbg=232 guifg=NONE guibg=#0a0814 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=252 ctermbg=232 guifg=#cdcdcd guibg=#0a0814 guisp=NONE cterm=NONE,bold gui=NONE,bold
  if get(g:, "space_vim_italic", 0)
    hi Comment    cterm=italic
    hi Folded     cterm=italic
    hi SpellBad   cterm=italic,underline
    hi SpellCap   cterm=italic,underline
    hi SpellLocal cterm=italic,underline
    hi SpellRare  cterm=italic,underline
    hi Todo       cterm=italic
  endif
  if get(g:, "space_vim_italicize_strings", 0)
    hi Special    cterm=italic gui=italic
    hi String     cterm=italic gui=italic
  endif
  hi! link iCursor Cursor
  hi! link vCursor Cursor
  hi NormalMode ctermfg=240 ctermbg=235 guifg=#5b5b5b guibg=#121212 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi InsertMode ctermfg=32 ctermbg=235 guifg=#4f97d7 guibg=#121212 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ReplaceMode ctermfg=29 ctermbg=235 guifg=#2d9574 guibg=#121212 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualMode ctermfg=173 ctermbg=235 guifg=#e18254 guibg=#121212 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi CommandMode ctermfg=170 ctermbg=235 guifg=#bc6ec5 guibg=#121212 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Warnings ctermfg=173 ctermbg=235 guifg=#e18254 guibg=#121212 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  if has('nvim')
    let g:terminal_color_0  = '#121212'
    let g:terminal_color_8  = '#44505c'
    let g:terminal_color_1  = '#d26487'
    let g:terminal_color_9  = '#f2241f'
    let g:terminal_color_2  = '#35a8a5'
    let g:terminal_color_10 = '#67b11d'
    let g:terminal_color_3  = '#b89f33'
    let g:terminal_color_11 = '#b1951d'
    let g:terminal_color_4  = '#6981c5'
    let g:terminal_color_12 = '#4f97d7'
    let g:terminal_color_5  = '#a15ea7'
    let g:terminal_color_13 = '#bc6ec5'
    let g:terminal_color_6  = '#288668'
    let g:terminal_color_14 = '#2d9574'
    let g:terminal_color_7  = '#5b5b5b'
    let g:terminal_color_15 = '#b2b2b2'
    hi! link TermCursor Cursor
    hi TermCursorNC ctermfg=234 ctermbg=249 guifg=#212026 guibg=#b2b2b2 guisp=NONE cterm=NONE gui=NONE
  endif
  if !(get(g:, "space_vim_plugin_hi_groups", 1) || get(g:, "space_vim_filetype_hi_groups", 1))
    finish
  endif
  if get(g:, "space_vim_plugin_hi_groups", 1)
    hi ALEError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,undercurl
    hi ALEWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,undercurl
    hi ALEInfo ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#4f97d7 cterm=NONE,underline gui=NONE,undercurl
    hi ALEErrorSign ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi ALEWarningSign ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi ALEInfoSign ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineCurrent ctermfg=235 ctermbg=240 guifg=#121212 guibg=#5b5b5b guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineActive ctermfg=240 ctermbg=232 guifg=#5b5b5b guibg=#100a14 guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineHidden ctermfg=236 ctermbg=234 guifg=#34323e guibg=#212026 guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineFill ctermfg=235 ctermbg=235 guifg=#121212 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
    hi CtrlPMatch ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPNoEntries ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPPrtBase ctermfg=232 ctermbg=NONE guifg=#100a14 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPPrtCursor ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPLinePre ctermfg=232 ctermbg=NONE guifg=#100a14 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPMode1 ctermfg=32 ctermbg=232 guifg=#4f97d7 guibg=#100a14 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi CtrlPMode2 ctermfg=235 ctermbg=32 guifg=#121212 guibg=#4f97d7 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi CtrlPStats ctermfg=240 ctermbg=232 guifg=#5b5b5b guibg=#100a14 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi DirvishPathTail ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi DirvishArg ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link EasyMotionTarget Search
    hi! link EasyMotionShade Comment
    hi gitcommitSelectedFile ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi gitcommitDiscardedFile ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi GitGutterAdd ctermfg=70 ctermbg=235 guifg=#67b11d guibg=#121212 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi GitGutterChange ctermfg=173 ctermbg=235 guifg=#e18254 guibg=#121212 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi GitGutterDelete ctermfg=196 ctermbg=235 guifg=#f2241f guibg=#121212 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi GitGutterChangeDelete ctermfg=168 ctermbg=235 guifg=#ce537a guibg=#121212 guisp=NONE cterm=NONE,bold gui=NONE,bold
    if get(g:, "indent_guides_auto_colors", 0)
      if get(g:, "space_vim_invert_indent_guides", 0)
        hi IndentGuidesOdd ctermfg=235 ctermbg=232 guifg=#121212 guibg=#100a14 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
        hi IndentGuidesEven ctermfg=235 ctermbg=234 guifg=#121212 guibg=#212026 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      else
        hi IndentGuidesOdd ctermfg=235 ctermbg=232 guifg=#121212 guibg=#100a14 guisp=NONE cterm=NONE gui=NONE
        hi IndentGuidesEven ctermfg=235 ctermbg=234 guifg=#121212 guibg=#212026 guisp=NONE cterm=NONE gui=NONE
      endif
    endif
    " IndentLine
    if !exists('g:indentLine_color_term')
      let g:indentLine_color_term = 232
    endif
    if !exists('g:indentLine_color_gui')
      let g:indentLine_color_gui = '#100a14'
    endif
    hi NERDTreeDir ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi NERDTreeDirSlash ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeOpenable ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeClosable ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeFile ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeExecFile ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeUp ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeCWD ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeHelp ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeToggleOn ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeToggleOff ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwDir ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwClassify ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwLink ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwSymLink ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwExe ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwComment ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwList ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwHelpCmd ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwCmdSep ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwVersion ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    " Rainbow Parentheses
    if !exists('g:rbpt_colorpairs')
      let g:rbpt_colorpairs = [['blue', '#6981c5'], ['magenta', '#a15ea7'],
            \ ['red', '#d26487'], ['173', '#ca754b']]
    endif

    let g:rainbow_guifgs = [ '#ca754b', '#d26487', '#a15ea7', '#6981c5' ]
    let g:rainbow_ctermfgs = [ '173', 'red', 'magenta', 'blue' ]

    if !exists('g:rainbow_conf')
      let g:rainbow_conf = {}
    endif
    if !has_key(g:rainbow_conf, 'guifgs')
      let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
    endif
    if !has_key(g:rainbow_conf, 'ctermfgs')
      let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
    endif

    let g:niji_dark_colours = g:rbpt_colorpairs
    let g:niji_light_colours = g:rbpt_colorpairs
    hi ShowMarksHLl ctermfg=32 ctermbg=235 guifg=#4f97d7 guibg=#121212 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi ShowMarksHLu ctermfg=32 ctermbg=235 guifg=#4f97d7 guibg=#121212 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi ShowMarksHLo ctermfg=32 ctermbg=235 guifg=#4f97d7 guibg=#121212 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi ShowMarksHLm ctermfg=32 ctermbg=235 guifg=#4f97d7 guibg=#121212 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi SignifySignAdd ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignifySignChange ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignifySignDelete ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignatureMarkText ctermfg=32 ctermbg=235 guifg=#4f97d7 guibg=#121212 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi SignatureMarkerText ctermfg=170 ctermbg=235 guifg=#bc6ec5 guibg=#121212 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi StartifyBracket ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyFile ctermfg=249 ctermbg=235 guifg=#b2b2b2 guibg=#121212 guisp=NONE cterm=NONE gui=NONE
    hi StartifyNumber ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyPath ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi StartifySlash ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifySection ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link StartifySpecial Type
    hi StartifyHeader ctermfg=133 ctermbg=NONE guifg=#a45bad guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyFooter ctermfg=133 ctermbg=NONE guifg=#a45bad guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SyntasticError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,undercurl
    hi SyntasticWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#b1951d cterm=NONE,underline gui=NONE,undercurl
    hi SyntasticErrorSign ctermfg=196 ctermbg=235 guifg=#f2241f guibg=#121212 guisp=NONE cterm=NONE gui=NONE
    hi SyntasticWarningSign ctermfg=136 ctermbg=235 guifg=#b1951d guibg=#121212 guisp=NONE cterm=NONE gui=NONE
    hi multiple_cursors_cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi multiple_cursors_visual ctermfg=NONE ctermbg=232 guifg=NONE guibg=#100a14 guisp=NONE cterm=NONE gui=NONE
    hi CurrentWord ctermfg=NONE ctermbg=60 guifg=NONE guibg=#544a65 guisp=NONE cterm=NONE,underline gui=NONE,underline
    hi CurrentWordTwins ctermfg=NONE ctermbg=60 guifg=NONE guibg=#544a65 guisp=NONE cterm=NONE gui=NONE
    hi! link WhichKey Function
    hi WhichKeySeperator ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link WhichKeyGroup Keyword
    hi! link WhichKeyDesc Identifier
    let g:vimshell_escape_colors = [
          \ '#34323e', '#f2241f', '#67b11d', '#b1951d',
          \ '#4f97d7', '#bc6ec5', '#2d9574', '#5b5b5b',
          \ '#121212', '#f2241f', '#67b11d', '#e18254',
          \ '#4f97d7', '#bc6ec5', '#2d9574', '#cdcdcd'
          \ ]
  endif
  if get(g:, "space_vim_filetype_hi_groups", 1)
    hi diffAdded ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffRemoved ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffChanged ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffFile ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffNewFile ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffLine ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlTag ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlEndTag ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlTagName ctermfg=133 ctermbg=NONE guifg=#a45bad guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlArg ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlScriptTag ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlTagN ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlSpecialTagName ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlLink ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
    hi htmlSpecialChar ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlBold ctermfg=fg ctermbg=235 guifg=fg guibg=#121212 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlBoldUnderline ctermfg=fg ctermbg=235 guifg=fg guibg=#121212 guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
    hi htmlBoldItalic ctermfg=fg ctermbg=235 guifg=fg guibg=#121212 guisp=NONE cterm=NONE,bold,italic gui=NONE,bold,italic
    hi htmlBoldUnderlineItalic ctermfg=fg ctermbg=235 guifg=fg guibg=#121212 guisp=NONE cterm=NONE,bold,italic,underline gui=NONE,bold,italic,underline
    hi htmlUnderline ctermfg=fg ctermbg=235 guifg=fg guibg=#121212 guisp=NONE cterm=NONE,underline gui=NONE,underline
    hi htmlUnderlineItalic ctermfg=fg ctermbg=235 guifg=fg guibg=#121212 guisp=NONE cterm=NONE,italic,underline gui=NONE,italic,underline
    hi htmlItalic ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
    hi xmlTag ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEndTag ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlTagName ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEqual ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi docbkKeyword ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi xmlDocTypeDecl ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlDocTypeKeyword ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlCdataStart ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlCdataCdata ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdFunction ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdTagName ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlAttrib ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlProcessingDelim ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdParamEntityPunct ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdParamEntityDPunct ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlAttribPunct ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEntity ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEntityPunct ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimCommentTitle ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi vimNotation ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimBracket ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimMapModKey ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimCommand ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi vimLet ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimNorm ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link vimFuncSID Function
    hi! link vimFunction Function
    hi vimGroup ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link vimHiGroup Type
    hi vimSetSep ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimSep ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimContinue ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureKeyword ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureCond ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureSpecial ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureDefine ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureFunc ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRepeat ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureCharacter ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureStringEscape ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureException ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRegexp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRegexpEscape ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRegexpCharClass ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link clojureRegexpMod clojureRegexpCharClass
    hi! link clojureRegexpQuantifier clojureRegexpCharClass
    hi clojureParen ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureAnonArg ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureVariable ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureMacro ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureMeta ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureDeref ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureQuote ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureUnquote ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cOperator ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cStructure ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi rustSelf ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi rustPanic ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi rustAssert ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link pythonCoding Comment
    hi cssBraces ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFunctionName ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssIdentifier ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssClassName ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssColor ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssSelectorOp ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssSelectorOp2 ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssImportant ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssVendor ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTextProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssAnimationProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssUIProp ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTransformProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTransitionProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssPrintProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssPositioningProp ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssBoxProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFontDescriptorProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFlexibleBoxProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssBorderOutlineProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssBackgroundProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssMarginProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssListProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTableProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFontProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssPaddingProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssDimensionProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssRenderProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssColorProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssGeneratedContentProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptBraces ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptFunction ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptIdentifier ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptMember ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptNumber ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptNull ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptParens ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptImport ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptExport ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassKeyword ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassExtends ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDefault ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassName ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassSuperName ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptGlobal ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptEndColons ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptFuncArg ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptGlobalMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptNodeGlobal ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMWindowProp ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptArrayMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptArrayStaticMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptCacheMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDateMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptMathStaticMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptURLUtilsProp ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMNavigatorProp ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMDocMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMDocProp ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMLocationMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMWindowMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptStringMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptVariable ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptIdentifier ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassSuper ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptFuncKeyword ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptAsyncFunc ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassStatic ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptOperator ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptForOperator ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptYield ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptExceptions ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptMessage ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptTemplateSB ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptTemplateSubstitution ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptLabel ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptObjectLabel ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptPropertyName ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptLogicSymbols ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptArrowFunc ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocParamName ctermfg=240 ctermbg=NONE guifg=#5b5b5b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocTags ctermfg=240 ctermbg=NONE guifg=#5b5b5b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocNotation ctermfg=240 ctermbg=NONE guifg=#5b5b5b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocParamType ctermfg=240 ctermbg=NONE guifg=#5b5b5b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocNamedParamType ctermfg=240 ctermbg=NONE guifg=#5b5b5b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBrackets ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMElemAttrs ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMEventMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMNodeMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMStorageMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptHeadersMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptAsyncFuncKeyword ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi javascriptAwaitFuncKeyword ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link jsClassKeyword Keyword
    hi! link jsExtendsKeyword Keyword
    hi jsExportDefault ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi jsTemplateBraces ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link jsGlobalNodeObjects Keyword
    hi! link jsGlobalObjects Keyword
    hi! link jsFunction Function
    hi jsFuncParens ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsParens ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsNull ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link jsUndefined ErrorMsg
    hi jsClassDefinition ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link jsObjectProp Identifier
    hi jsObjectKey ctermfg=74 ctermbg=NONE guifg=#58b0d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFunctionKey ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsBracket ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsObjectColon ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFuncArgs ctermfg=74 ctermbg=NONE guifg=#58b0d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFuncBraces ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsVariableDef ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link jsObjectBraces Special
    hi jsObjectValue ctermfg=147 ctermbg=NONE guifg=#b7b7ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsClassBlock ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFutureKeys ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi jsFuncArgs ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsStorageClass ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxRegion ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptReserved ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link typeScriptLabel Label
    hi! link typeScriptFuncKeyword Function
    hi! link typeScriptIdentifier Identifier
    hi typeScriptBraces ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptEndColons ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptDOMObjects ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link typeScriptAjaxMethods Function
    hi typeScriptLogicSymbols ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link typeScriptDocSeeTag Comment
    hi! link typeScriptDocParam Comment
    hi! link typeScriptDocTags vimCommentTitle
    hi! link typeScriptGlobalObjects Keyword
    hi typeScriptParens ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link typeScriptOpSymbols Operator
    hi! link typeScriptHtmlElemProperties Special
    hi typeScriptNull ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi typeScriptInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptModuleKeyword ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptModuleName ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi purescriptWhere ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptDelimiter ctermfg=240 ctermbg=NONE guifg=#5b5b5b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link purescriptType Type
    hi! link purescriptImportKeyword Keyword
    hi! link purescriptHidingKeyword Keyword
    hi! link purescriptAsKeyword Keyword
    hi! link purescriptStructure Structure
    hi! link purescriptOperator Operator
    hi! link purescriptTypeVar Type
    hi! link purescriptConstructor Function
    hi! link purescriptFunction Function
    hi! link purescriptConditional Conditional
    hi purescriptBacktick ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeExtendedOp ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeSpecialOp ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeCurly ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeParen ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeBracket ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi rubyStringDelimiter ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi rubyInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi objcTypeModifier ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi objcDirective ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goDirective ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goConstants ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link goDeclaration Keyword
    hi goDeclType ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goBuiltins ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi luaIn ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi luaFunction ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi luaTable ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonSpecialOp ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonExtendedOp ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonFunction ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonObject ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaAnnotation ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaDocTags ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link javaCommentTitle vimCommentTitle
    hi javaParen ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen1 ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen2 ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen3 ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen4 ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen5 ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaOperator ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaVarArg ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link elixirDocString Comment
    hi elixirStringDelimiter ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi elixirInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi elixirModuleDeclaration ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaNameDefinition ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaCaseFollowing ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaCapitalWord ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaTypeExtension ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaKeyword ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi scalaKeywordModifier ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaSpecial ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaOperator ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaTypeDeclaration ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaTypeTypePostDeclaration ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaInstanceDeclaration ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaInterpolation ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownItalic ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
    hi markdownH1 ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH2 ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH3 ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH4 ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH5 ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownH6 ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link htmlH1 markdownH1
    hi! link htmlH2 markdownH2
    hi! link htmlH3 markdownH3
    hi! link htmlH4 markdownH4
    hi! link htmlH5 markdownH5
    hi! link htmlH6 markdownH6
    hi markdownCode ctermfg=133 ctermbg=NONE guifg=#a45bad guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link mkdCode markdownCode
    hi markdownCodeBlock ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownCodeDelimiter ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link mkdCodeDelimiter markdownCodeDelimiter
    hi markdownBlockquote ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownListMarker ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownOrderedListMarker ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownRule ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownHeadingRule ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownUrlDelimiter ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownLinkDelimiter ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownLinkTextDelimiter ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownHeadingDelimiter ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownUrl ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownUrlTitleDelimiter ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link markdownLinkText htmlLink
    hi! link markdownIdDeclaration markdownLinkText
    hi haskellType ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellIdentifier ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellSeparator ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDelimiter ctermfg=240 ctermbg=NONE guifg=#5b5b5b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellOperators ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellBacktick ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellStatement ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellConditional ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellLet ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDefault ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellWhere ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellBottom ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellBlockKeywords ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellImportKeywords ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDeclKeyword ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDeriving ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellAssocType ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellNumber ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellPragma ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellString ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellChar ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonKeyword ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonQuote ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonBraces ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonString ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  endif
  finish
endif

let g:terminal_ansi_colors = [
      \ '#fbf8ef', '#d26487', '#35a8a5', '#b89f33', '#6981c5', '#a15ea7', '#288668', '#504259',
      \ '#a8a4ae', '#f2241f', '#67b11d', '#b1951d', '#3a81c3', '#6c3163', '#24775c', '#655370']
if !has('gui_running') && get(g:, 'space_vim_transp_bg', 0)
  hi Normal ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=255 ctermbg=NONE guifg=#efeae9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=60 ctermbg=231 guifg=#655370 guibg=#fbf8ef guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=89 ctermbg=255 guifg=#6c3163 guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=89 ctermbg=255 guifg=#6c3163 guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=60 ctermbg=231 guifg=#655370 guibg=#fbf8ef guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=255 ctermbg=231 guifg=#efeae9 guibg=#fbf8ef guisp=NONE cterm=NONE gui=NONE
endif
hi ColorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi! link CursorColumn CursorLine
hi CursorLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=70 ctermbg=231 guifg=#67b11d guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=166 ctermbg=231 guifg=#b46843 guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=196 ctermbg=231 guifg=#f2241f guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=136 ctermbg=231 guifg=#b1951d guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Directory ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=231 ctermbg=NONE guifg=#fbf8ef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=196 ctermbg=231 guifg=#f2241f guibg=#fbf8ef guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi ErrorMsg ctermfg=231 ctermbg=196 guifg=#fbf8ef guibg=#f2241f guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=53 ctermbg=255 guifg=#4e3163 guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE,italic
hi IncSearch ctermfg=166 ctermbg=231 guifg=#b46843 guibg=#fbf8ef guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi LineNr ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
hi ModeMsg ctermfg=184 ctermbg=NONE guifg=#e5d11c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link MoreMsg ModeMsg
hi NonText ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=103 ctermbg=254 guifg=#8c799f guibg=#e2e0ea guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=NONE ctermbg=255 guifg=NONE guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=189 guifg=NONE guibg=#c8c6dd guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=NONE ctermbg=189 guifg=NONE guibg=#d3d3e7 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi! link QuickFixLine Search
hi! link qfLineNr Type
hi Search ctermfg=70 ctermbg=231 guifg=#67b11d guibg=#fbf8ef guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi SpecialKey ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellCap ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=#3a81c3 cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellLocal ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=#24775c cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellRare ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=#6c3163 cterm=NONE,underline gui=NONE,italic,undercurl
hi StatusLine ctermfg=60 ctermbg=189 guifg=#655370 guibg=#d3d3e7 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=189 ctermbg=248 guifg=#d3d3e7 guibg=#a8a4ae guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLineFill ctermfg=60 ctermbg=255 guifg=#544a65 guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=70 ctermbg=255 guifg=#67b11d guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
hi! link TabLine TabLineFill
hi Title ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Visual ctermfg=NONE ctermbg=60 guifg=NONE guibg=#544a65 guisp=NONE cterm=NONE gui=NONE
hi! link VisualNOS Visual
hi WarningMsg ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=166 ctermbg=255 guifg=#b46843 guibg=#efeae9 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Boolean ctermfg=166 ctermbg=NONE guifg=#dc752f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=37 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE,none gui=NONE,italic,none
hi Conditional ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Constant ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=196 ctermbg=NONE guifg=#f54e3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=73 ctermbg=NONE guifg=#74baac guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=196 ctermbg=231 guifg=#f2241f guibg=#fbf8ef guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi Exception ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=147 ctermbg=NONE guifg=#b7b7ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Identifier ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Label ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Number ctermfg=176 ctermbg=NONE guifg=#e697e6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=74 ctermbg=NONE guifg=#58b0d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreCondit ctermfg=53 ctermbg=NONE guifg=#4e3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=97 ctermbg=NONE guifg=#86589e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialChar ctermfg=37 ctermbg=NONE guifg=#21b8c7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=67 ctermbg=NONE guifg=#768294 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Special ctermfg=172 ctermbg=NONE guifg=#d79650 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=29 ctermbg=NONE guifg=#DD9242 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=31 ctermbg=NONE guifg=#4495b4 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Tag ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
hi Type ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Underlined ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ToolbarLine ctermfg=NONE ctermbg=252 guifg=NONE guibg=#d2ceda guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=103 ctermbg=252 guifg=#83758c guibg=#d2ceda guisp=NONE cterm=NONE,bold gui=NONE,bold
if get(g:, "space_vim_italic", 0)
  hi Comment    cterm=italic
  hi Folded     cterm=italic
  hi SpellBad   cterm=italic,underline
  hi SpellCap   cterm=italic,underline
  hi SpellLocal cterm=italic,underline
  hi SpellRare  cterm=italic,underline
  hi Todo       cterm=italic
endif
if get(g:, "space_vim_italicize_strings", 0)
  hi Special    cterm=italic gui=italic
  hi String     cterm=italic gui=italic
endif
hi! link iCursor Cursor
hi! link vCursor Cursor
hi NormalMode ctermfg=237 ctermbg=231 guifg=#463a4e guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi InsertMode ctermfg=32 ctermbg=231 guifg=#3a81c3 guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ReplaceMode ctermfg=29 ctermbg=231 guifg=#24775c guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualMode ctermfg=166 ctermbg=231 guifg=#b46843 guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CommandMode ctermfg=89 ctermbg=231 guifg=#6c3163 guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Warnings ctermfg=166 ctermbg=231 guifg=#b46843 guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
if has('nvim')
  let g:terminal_color_0  = '#fbf8ef'
  let g:terminal_color_8  = '#a8a8bf'
  let g:terminal_color_1  = '#d26487'
  let g:terminal_color_9  = '#f2241f'
  let g:terminal_color_2  = '#35a8a5'
  let g:terminal_color_10 = '#67b11d'
  let g:terminal_color_3  = '#b89f33'
  let g:terminal_color_11 = '#b1951d'
  let g:terminal_color_4  = '#6981c5'
  let g:terminal_color_12 = '#3a81c3'
  let g:terminal_color_5  = '#a15ea7'
  let g:terminal_color_13 = '#6c3163'
  let g:terminal_color_6  = '#288668'
  let g:terminal_color_14 = '#24775c'
  let g:terminal_color_7  = '#463a4e'
  let g:terminal_color_15 = '#655370'
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=255 ctermbg=60 guifg=#efeae9 guibg=#655370 guisp=NONE cterm=NONE gui=NONE
endif
if !(get(g:, "space_vim_plugin_hi_groups", 1) || get(g:, "space_vim_filetype_hi_groups", 1))
  finish
endif
if get(g:, "space_vim_plugin_hi_groups", 1)
  hi ALEError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,undercurl
  hi ALEWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,undercurl
  hi ALEInfo ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#3a81c3 cterm=NONE,underline gui=NONE,undercurl
  hi ALEErrorSign ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ALEWarningSign ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ALEInfoSign ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineCurrent ctermfg=231 ctermbg=237 guifg=#fbf8ef guibg=#463a4e guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineActive ctermfg=237 ctermbg=254 guifg=#463a4e guibg=#e3dedd guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineHidden ctermfg=248 ctermbg=255 guifg=#a8a4ae guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineFill ctermfg=231 ctermbg=231 guifg=#fbf8ef guibg=#fbf8ef guisp=NONE cterm=NONE gui=NONE
  hi CtrlPMatch ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPNoEntries ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPPrtBase ctermfg=254 ctermbg=NONE guifg=#e3dedd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPPrtCursor ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPLinePre ctermfg=254 ctermbg=NONE guifg=#e3dedd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPMode1 ctermfg=32 ctermbg=254 guifg=#3a81c3 guibg=#e3dedd guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi CtrlPMode2 ctermfg=231 ctermbg=32 guifg=#fbf8ef guibg=#3a81c3 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi CtrlPStats ctermfg=237 ctermbg=254 guifg=#463a4e guibg=#e3dedd guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DirvishPathTail ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DirvishArg ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link EasyMotionTarget Search
  hi! link EasyMotionShade Comment
  hi gitcommitSelectedFile ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi gitcommitDiscardedFile ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GitGutterAdd ctermfg=70 ctermbg=231 guifg=#67b11d guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi GitGutterChange ctermfg=166 ctermbg=231 guifg=#b46843 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi GitGutterDelete ctermfg=196 ctermbg=231 guifg=#f2241f guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi GitGutterChangeDelete ctermfg=161 ctermbg=231 guifg=#ba2f59 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  if get(g:, "indent_guides_auto_colors", 0)
    if get(g:, "space_vim_invert_indent_guides", 0)
      hi IndentGuidesOdd ctermfg=231 ctermbg=254 guifg=#fbf8ef guibg=#e3dedd guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi IndentGuidesEven ctermfg=231 ctermbg=255 guifg=#fbf8ef guibg=#efeae9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    else
      hi IndentGuidesOdd ctermfg=231 ctermbg=254 guifg=#fbf8ef guibg=#e3dedd guisp=NONE cterm=NONE gui=NONE
      hi IndentGuidesEven ctermfg=231 ctermbg=255 guifg=#fbf8ef guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
    endif
  endif
  " IndentLine
  if !exists('g:indentLine_color_term')
    let g:indentLine_color_term = 254
  endif
  if !exists('g:indentLine_color_gui')
    let g:indentLine_color_gui = '#e3dedd'
  endif
  hi NERDTreeDir ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi NERDTreeDirSlash ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeOpenable ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeClosable ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeFile ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeExecFile ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeUp ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeCWD ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeHelp ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeToggleOn ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeToggleOff ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwDir ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwClassify ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwLink ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwSymLink ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwExe ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwComment ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwList ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwHelpCmd ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwCmdSep ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwVersion ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  " Rainbow Parentheses
  if !exists('g:rbpt_colorpairs')
    let g:rbpt_colorpairs = [['blue', '#6981c5'], ['magenta', '#a15ea7'],
          \ ['red', '#d26487'], ['173', '#ca754b']]
  endif

  let g:rainbow_guifgs = [ '#ca754b', '#d26487', '#a15ea7', '#6981c5' ]
  let g:rainbow_ctermfgs = [ '173', 'red', 'magenta', 'blue' ]

  if !exists('g:rainbow_conf')
    let g:rainbow_conf = {}
  endif
  if !has_key(g:rainbow_conf, 'guifgs')
    let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
  endif
  if !has_key(g:rainbow_conf, 'ctermfgs')
    let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
  endif

  let g:niji_dark_colours = g:rbpt_colorpairs
  let g:niji_light_colours = g:rbpt_colorpairs
  hi ShowMarksHLl ctermfg=32 ctermbg=231 guifg=#3a81c3 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi ShowMarksHLu ctermfg=32 ctermbg=231 guifg=#3a81c3 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi ShowMarksHLo ctermfg=32 ctermbg=231 guifg=#3a81c3 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi ShowMarksHLm ctermfg=32 ctermbg=231 guifg=#3a81c3 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SignifySignAdd ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignifySignChange ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignifySignDelete ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignatureMarkText ctermfg=32 ctermbg=231 guifg=#3a81c3 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SignatureMarkerText ctermfg=89 ctermbg=231 guifg=#6c3163 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi StartifyBracket ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyFile ctermfg=60 ctermbg=231 guifg=#655370 guibg=#fbf8ef guisp=NONE cterm=NONE gui=NONE
  hi StartifyNumber ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyPath ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi StartifySlash ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifySection ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link StartifySpecial Type
  hi StartifyHeader ctermfg=53 ctermbg=NONE guifg=#4e3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyFooter ctermfg=53 ctermbg=NONE guifg=#4e3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SyntasticError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,undercurl
  hi SyntasticWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#b1951d cterm=NONE,underline gui=NONE,undercurl
  hi SyntasticErrorSign ctermfg=196 ctermbg=231 guifg=#f2241f guibg=#fbf8ef guisp=NONE cterm=NONE gui=NONE
  hi SyntasticWarningSign ctermfg=136 ctermbg=231 guifg=#b1951d guibg=#fbf8ef guisp=NONE cterm=NONE gui=NONE
  hi multiple_cursors_cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi multiple_cursors_visual ctermfg=NONE ctermbg=254 guifg=NONE guibg=#e3dedd guisp=NONE cterm=NONE gui=NONE
  hi CurrentWord ctermfg=NONE ctermbg=60 guifg=NONE guibg=#544a65 guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi CurrentWordTwins ctermfg=NONE ctermbg=60 guifg=NONE guibg=#544a65 guisp=NONE cterm=NONE gui=NONE
  hi! link WhichKey Function
  hi WhichKeySeperator ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link WhichKeyGroup Keyword
  hi! link WhichKeyDesc Identifier
  let g:vimshell_escape_colors = [
        \ '#a8a4ae', '#f2241f', '#67b11d', '#b1951d',
        \ '#3a81c3', '#6c3163', '#24775c', '#463a4e',
        \ '#fbf8ef', '#f2241f', '#67b11d', '#b46843',
        \ '#3a81c3', '#6c3163', '#24775c', '#83758c'
        \ ]
endif
if get(g:, "space_vim_filetype_hi_groups", 1)
  hi diffAdded ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffRemoved ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffChanged ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffFile ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffNewFile ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffLine ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlTag ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlEndTag ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlTagName ctermfg=53 ctermbg=NONE guifg=#4e3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlArg ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlScriptTag ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlTagN ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlSpecialTagName ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi htmlLink ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi htmlSpecialChar ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlBold ctermfg=fg ctermbg=231 guifg=fg guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi htmlBoldUnderline ctermfg=fg ctermbg=231 guifg=fg guibg=#fbf8ef guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
  hi htmlBoldItalic ctermfg=fg ctermbg=231 guifg=fg guibg=#fbf8ef guisp=NONE cterm=NONE,bold,italic gui=NONE,bold,italic
  hi htmlBoldUnderlineItalic ctermfg=fg ctermbg=231 guifg=fg guibg=#fbf8ef guisp=NONE cterm=NONE,bold,italic,underline gui=NONE,bold,italic,underline
  hi htmlUnderline ctermfg=fg ctermbg=231 guifg=fg guibg=#fbf8ef guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi htmlUnderlineItalic ctermfg=fg ctermbg=231 guifg=fg guibg=#fbf8ef guisp=NONE cterm=NONE,italic,underline gui=NONE,italic,underline
  hi htmlItalic ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi xmlTag ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEndTag ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlTagName ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEqual ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi docbkKeyword ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi xmlDocTypeDecl ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlDocTypeKeyword ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlCdataStart ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlCdataCdata ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdFunction ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdTagName ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlAttrib ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlProcessingDelim ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdParamEntityPunct ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdParamEntityDPunct ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlAttribPunct ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEntity ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEntityPunct ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimCommentTitle ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi vimNotation ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimBracket ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimMapModKey ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimCommand ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi vimLet ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimNorm ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link vimFuncSID Function
  hi! link vimFunction Function
  hi vimGroup ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link vimHiGroup Type
  hi vimSetSep ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimSep ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimContinue ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureKeyword ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureCond ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureSpecial ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureDefine ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureFunc ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRepeat ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureCharacter ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureStringEscape ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureException ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRegexp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRegexpEscape ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRegexpCharClass ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link clojureRegexpMod clojureRegexpCharClass
  hi! link clojureRegexpQuantifier clojureRegexpCharClass
  hi clojureParen ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureAnonArg ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureVariable ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureMacro ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureMeta ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureDeref ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureQuote ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureUnquote ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cOperator ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cStructure ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi rustSelf ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi rustPanic ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi rustAssert ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link pythonCoding Comment
  hi cssBraces ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFunctionName ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssIdentifier ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssClassName ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssColor ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssSelectorOp ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssSelectorOp2 ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssImportant ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssVendor ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTextProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssAnimationProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssUIProp ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTransformProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTransitionProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssPrintProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssPositioningProp ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssBoxProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFontDescriptorProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFlexibleBoxProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssBorderOutlineProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssBackgroundProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssMarginProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssListProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTableProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFontProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssPaddingProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssDimensionProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssRenderProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssColorProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssGeneratedContentProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptBraces ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptFunction ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptIdentifier ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptMember ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptNumber ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptNull ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptParens ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptImport ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptExport ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassKeyword ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassExtends ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDefault ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassName ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassSuperName ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptGlobal ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptEndColons ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptFuncArg ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptGlobalMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptNodeGlobal ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMWindowProp ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptArrayMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptArrayStaticMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptCacheMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDateMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptMathStaticMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptURLUtilsProp ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMNavigatorProp ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMDocMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMDocProp ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMLocationMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMWindowMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptStringMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptVariable ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptIdentifier ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassSuper ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptFuncKeyword ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptAsyncFunc ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassStatic ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptOperator ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptForOperator ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptYield ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptExceptions ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptMessage ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptTemplateSB ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptTemplateSubstitution ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptLabel ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptObjectLabel ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptPropertyName ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptLogicSymbols ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptArrowFunc ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocParamName ctermfg=237 ctermbg=NONE guifg=#463a4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocTags ctermfg=237 ctermbg=NONE guifg=#463a4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocNotation ctermfg=237 ctermbg=NONE guifg=#463a4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocParamType ctermfg=237 ctermbg=NONE guifg=#463a4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocNamedParamType ctermfg=237 ctermbg=NONE guifg=#463a4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBrackets ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMElemAttrs ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMEventMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMNodeMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMStorageMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptHeadersMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptAsyncFuncKeyword ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi javascriptAwaitFuncKeyword ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link jsClassKeyword Keyword
  hi! link jsExtendsKeyword Keyword
  hi jsExportDefault ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi jsTemplateBraces ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link jsGlobalNodeObjects Keyword
  hi! link jsGlobalObjects Keyword
  hi! link jsFunction Function
  hi jsFuncParens ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsParens ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsNull ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link jsUndefined ErrorMsg
  hi jsClassDefinition ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link jsObjectProp Identifier
  hi jsObjectKey ctermfg=74 ctermbg=NONE guifg=#58b0d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFunctionKey ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsBracket ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsObjectColon ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFuncArgs ctermfg=74 ctermbg=NONE guifg=#58b0d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFuncBraces ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsVariableDef ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link jsObjectBraces Special
  hi jsObjectValue ctermfg=147 ctermbg=NONE guifg=#b7b7ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsClassBlock ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFutureKeys ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi jsFuncArgs ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsStorageClass ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxRegion ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptReserved ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link typeScriptLabel Label
  hi! link typeScriptFuncKeyword Function
  hi! link typeScriptIdentifier Identifier
  hi typeScriptBraces ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptEndColons ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptDOMObjects ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link typeScriptAjaxMethods Function
  hi typeScriptLogicSymbols ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link typeScriptDocSeeTag Comment
  hi! link typeScriptDocParam Comment
  hi! link typeScriptDocTags vimCommentTitle
  hi! link typeScriptGlobalObjects Keyword
  hi typeScriptParens ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link typeScriptOpSymbols Operator
  hi! link typeScriptHtmlElemProperties Special
  hi typeScriptNull ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi typeScriptInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptModuleKeyword ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptModuleName ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi purescriptWhere ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptDelimiter ctermfg=237 ctermbg=NONE guifg=#463a4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link purescriptType Type
  hi! link purescriptImportKeyword Keyword
  hi! link purescriptHidingKeyword Keyword
  hi! link purescriptAsKeyword Keyword
  hi! link purescriptStructure Structure
  hi! link purescriptOperator Operator
  hi! link purescriptTypeVar Type
  hi! link purescriptConstructor Function
  hi! link purescriptFunction Function
  hi! link purescriptConditional Conditional
  hi purescriptBacktick ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeExtendedOp ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeSpecialOp ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeCurly ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeParen ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeBracket ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi rubyStringDelimiter ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi rubyInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi objcTypeModifier ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi objcDirective ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goDirective ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goConstants ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link goDeclaration Keyword
  hi goDeclType ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goBuiltins ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi luaIn ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi luaFunction ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi luaTable ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonSpecialOp ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonExtendedOp ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonFunction ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonObject ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaAnnotation ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaDocTags ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link javaCommentTitle vimCommentTitle
  hi javaParen ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen1 ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen2 ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen3 ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen4 ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen5 ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaOperator ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaVarArg ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link elixirDocString Comment
  hi elixirStringDelimiter ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi elixirInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi elixirModuleDeclaration ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaNameDefinition ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaCaseFollowing ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaCapitalWord ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaTypeExtension ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaKeyword ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi scalaKeywordModifier ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaSpecial ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaOperator ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaTypeDeclaration ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaTypeTypePostDeclaration ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaInstanceDeclaration ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaInterpolation ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownItalic ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi markdownH1 ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH2 ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH3 ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH4 ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH5 ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownH6 ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link htmlH1 markdownH1
  hi! link htmlH2 markdownH2
  hi! link htmlH3 markdownH3
  hi! link htmlH4 markdownH4
  hi! link htmlH5 markdownH5
  hi! link htmlH6 markdownH6
  hi markdownCode ctermfg=53 ctermbg=NONE guifg=#4e3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link mkdCode markdownCode
  hi markdownCodeBlock ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownCodeDelimiter ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link mkdCodeDelimiter markdownCodeDelimiter
  hi markdownBlockquote ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownListMarker ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownOrderedListMarker ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownRule ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownHeadingRule ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownUrlDelimiter ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownLinkDelimiter ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownLinkTextDelimiter ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownHeadingDelimiter ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownUrl ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownUrlTitleDelimiter ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link markdownLinkText htmlLink
  hi! link markdownIdDeclaration markdownLinkText
  hi haskellType ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellIdentifier ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellSeparator ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDelimiter ctermfg=237 ctermbg=NONE guifg=#463a4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellOperators ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellBacktick ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellStatement ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellConditional ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellLet ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDefault ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellWhere ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellBottom ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellBlockKeywords ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellImportKeywords ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDeclKeyword ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDeriving ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellAssocType ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellNumber ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellPragma ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellString ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellChar ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonKeyword ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonQuote ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonBraces ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonString ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
endif
hi StatusLineNC ctermfg=189 ctermbg=255 guifg=#d3d3e7 guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=254 guifg=NONE guibg=#e3dedd guisp=NONE cterm=NONE gui=NONE
finish
