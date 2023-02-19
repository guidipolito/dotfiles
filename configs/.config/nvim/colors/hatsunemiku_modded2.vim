set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif
let g:colors_name="hatsunemiku_modded"


let Italic = ""
if exists('g:hatsunemiku_light_italic')
  let Italic = "italic"
endif
let g:hatsunemiku_light_italic = get(g:, 'hatsunemiku_light_italic', 0)

let Bold = ""
if exists('g:hatsunemiku_light_bold')
  let Bold = "bold"
endif

let g:hatsunemiku_light_bold = get(g:, '_bold', 0)

  hi CleverFDefaultLabel guifg=#df2683 ctermfg=162 guibg=NONE ctermbg=NONE gui=underline,Bold cterm=underline,Bold
  hi SearchxMarker guifg=#df2683 ctermfg=162 guibg=NONE ctermbg=NONE gui=underline,Bold cterm=underline,Bold
  hi SearchxMarkerCurrent guifg=#df2683 ctermfg=162 guibg=NONE ctermbg=NONE gui=underline,Bold cterm=underline,Bold
  hi GitGutterAdd guifg=#df2683 ctermfg=162 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi GitGutterChange guifg=#447272 ctermfg=247 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi GitGutterDelete guifg=#df2683 ctermfg=162 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SignifySignAdd guifg=#13868c ctermfg=30 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SignifySignChange guifg=#447272 ctermfg=247 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SignifySignDelete guifg=#df2683 ctermfg=162 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi QuickFixLine guifg=#447272 ctermfg=247 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi jsonQuote guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi typescriptDotNotation guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi typescriptGlobalArrayDot guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi typescriptGlobalDateDot guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi typescriptGlobalJSONDot guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi typescriptGlobalMathDot guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi typescriptGlobalNumberDot guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi typescriptGlobalObjectDot guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi typescriptGlobalPromiseDot guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi typescriptGlobalRegExpDot guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi typescriptGlobalStringDot guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi typescriptGlobalSymbolDot guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi typescriptGlobalURLDot guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi typescriptObjectColon guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi typescriptTypeAnnotation guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi diffRemoved guifg=#df2683 ctermfg=162 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi diffChanged guifg=#447272 ctermfg=247 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi diffAdded guifg=#13868c ctermfg=30 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi diffLine guifg=#74b3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi ColorColumn guifg=#7b8b99 ctermfg=245 guibg=#E0E3E3 ctermbg=252 gui=Bold cterm=Bold
  hi Conceal guifg=#E0E3E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Cursor guifg=NONE ctermfg=NONE guibg=#7b8b99 ctermbg=245 gui=NONE cterm=NONE
  hi link CursorIM Cursor
  hi link CursorColumn CursorLine
  hi CursorLine guifg=NONE ctermfg=NONE guibg=#E0E3E3 ctermbg=252 gui=NONE cterm=NONE
  hi CursorLineNr guifg=#74bfbf ctermfg=109 guibg=#E0E3E3 ctermbg=252 gui=NONE cterm=NONE
  hi Directory guifg=#13868c ctermfg=30 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi DiffAdd guifg=NONE ctermfg=NONE guibg=#13868c ctermbg=30 gui=NONE cterm=NONE
  hi DiffChange guifg=NONE ctermfg=NONE guibg=#447272 ctermbg=247 gui=NONE cterm=NONE
  hi DiffDelete guifg=NONE ctermfg=NONE guibg=#df2683 ctermbg=162 gui=NONE cterm=NONE
  hi DiffText guifg=#447272 ctermfg=247 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi ErrorMsg guifg=#a365ba ctermfg=133 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi VertSplit guifg=none ctermfg=234 guibg=none ctermbg=234 gui=NONE cterm=NONE
  hi Folded guifg=#242829 ctermfg=235 guibg=#7b8b99 ctermbg=245 gui=NONE cterm=NONE
  hi FoldColumn guifg=#242829 ctermfg=235 guibg=#7b8b99 ctermbg=245 gui=NONE cterm=NONE
  hi SignColumn guifg=#242829 ctermfg=235 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi IncSearch guifg=NONE ctermfg=NONE guibg=#fcfcdf ctermbg=230 gui=NONE cterm=NONE
  hi LineNr guifg=#7b8b99 ctermfg=245 guibg=#FAF7F7 ctermbg=255 gui=NONE cterm=NONE
  hi MatchParen guifg=NONE ctermfg=NONE guibg=#7b8b99 ctermbg=245 gui=NONE cterm=NONE
  hi ModeMsg guifg=#242829 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi MoreMsg guifg=#242829 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi NonText guifg=#E0E3E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Normal guifg=#242829 ctermfg=235 guibg=#FAF7F7 ctermbg=255 gui=NONE cterm=NONE
  hi PMenu guifg=#447272 ctermfg=247 guibg=#E0E3E3 ctermbg=252 gui=NONE cterm=NONE
  hi PMenuSel guifg=#FAF7F7 ctermfg=255 guibg=#447272 ctermbg=247 gui=NONE cterm=NONE
  hi link PmenuSbar PMenuSel
  hi link PmenuThumb PMenuSel
  hi Question guifg=#242829 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Search guifg=#E0E3E3 ctermfg=252 guibg=#447272 ctermbg=247 gui=NONE cterm=NONE
  hi SpecialKey guifg=#74b3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SpellBad guifg=#a365ba ctermfg=133 guibg=NONE ctermbg=NONE gui=underline cterm=underline
  hi SpellLocal guifg=#74bfbf ctermfg=109 guibg=NONE ctermbg=NONE gui=underline cterm=underline
  hi SpellCap guifg=#74b3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=underline cterm=underline
  hi SpellRare guifg=#74bfbf ctermfg=109 guibg=NONE ctermbg=NONE gui=underline cterm=underline
  hi StatusLine guifg=#FAF7F7 ctermfg=255 guibg=#74bfbf ctermbg=109 gui=NONE cterm=NONE
  hi StatusLineNC guifg=#FAF7F7 ctermfg=255 guibg=#7b8b99 ctermbg=245 gui=NONE cterm=NONE
  hi TabLine guifg=#FAF7F7 ctermfg=255 guibg=#7b8b99 ctermbg=245 gui=NONE cterm=NONE
  hi TabLineFill guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi TabLineSel guifg=#FAF7F7 ctermfg=255 guibg=#7b8b99 ctermbg=245 gui=Bold cterm=Bold
  hi Title guifg=#13868c ctermfg=30 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi Visual guifg=NONE ctermfg=NONE guibg=#fcfcdf ctermbg=230 gui=NONE cterm=NONE
  hi link VisualNOS Visual
  hi WarningMsg guifg=#a365ba ctermfg=133 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi WildMenu guifg=NONE ctermfg=NONE guibg=#7b8b99 ctermbg=245 gui=NONE cterm=NONE
  hi Comment guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Constant guifg=#df2683 ctermfg=162 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi String guifg=#447272 ctermfg=247 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Identifier guifg=#1a86b9 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Function guifg=#74bfbf ctermfg=109 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi Statement guifg=#13868c ctermfg=30 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#74bfbf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Type guifg=#74b3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Special guifg=#74b3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Underlined guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
  hi link Ignore Conceal
  hi Error guifg=#a365ba ctermfg=133 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Todo guifg=#df2683 ctermfg=162 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi vimSetSep guifg=#7b8b99 ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

if has('terminal')
  let g:terminal_ansi_colors = [
  \ "#FAF7F7",
  \ "#df2683",
  \ "#13868c",
  \ "#447272",
  \ "#1a86b9",
  \ "#a365ba",
  \ "#74b3bf",
  \ "#E0E3E3",
  \ "#7b8b99",
  \ "#df2683",
  \ "#13868c",
  \ "#3a4747",
  \ "#1a86b9",
  \ "#a365ba",
  \ "#74b3bf",
  \ "#242829"
  \ ]
endif

if has('nvim')
  let g:terminal_color_foreground = "#FAF7F7"
  let g:terminal_color_background = "#242829"
  let g:terminal_color_0 = "#FAF7F7"
  let g:terminal_color_1 = "#df2683"
  let g:terminal_color_2 = "#13868c"
  let g:terminal_color_3 = "#447272"
  let g:terminal_color_4 = "#1a86b9"
  let g:terminal_color_5 = "#a365ba"
  let g:terminal_color_6 = "#74b3bf"
  let g:terminal_color_7 = "#E0E3E3"
  let g:terminal_color_8 = "#7b8b99"
  let g:terminal_color_9 = "#df2683"
  let g:terminal_color_10 = "#13868c"
  let g:terminal_color_11 = "#447272"
  let g:terminal_color_12 = "#1a86b9"
  let g:terminal_color_13 = "#a365ba"
  let g:terminal_color_14 = "#74b3bf"
  let g:terminal_color_15 = "#242829"
endif
