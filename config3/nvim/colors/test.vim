
" colorscheme_name.vim
" Vim color file based on the provided HTML colors

set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "colorscheme_name"

" Normal text
hi Normal guifg=#000000 guibg=#ffffff

" Special keys
hi SpecialKey guifg=#0000c0

" Non-text (e.g., end of buffer)
hi NonText guifg=#0000c0 gui=bold

" Directory
hi Directory guifg=#0000c0

" Error messages
hi ErrorMsg guifg=#c0c0c0 guibg=#c00000 gui=bold

" IncSearch
hi IncSearch guifg=#ffffff guibg=#000000

" Search
hi Search guibg=#804000

" More messages
hi MoreMsg guifg=#008000

" Mode messages
hi ModeMsg gui=bold

" Line numbers
hi LineNr guifg=#804000

" Cursor line number
hi CursorLineNr guifg=#af5f00 gui=underline

" Questions
hi Question guifg=#008000

" Status line
hi StatusLine guifg=#ffffff guibg=#000000 gui=bold

" Status line (not current)
hi StatusLineNC guifg=#ffffff guibg=#000000

" Vertical split
hi VertSplit guifg=#ffffff guibg=#000000

" Titles
hi Title guifg=#c000c0

" Visual mode selection
hi Visual guifg=#000000 guibg=#000000

" Visual mode (not selected)
hi VisualNOS gui=bold,underline

" Warning messages
hi WarningMsg guifg=#c00000

" Wild menu
hi WildMenu guifg=#000000 guibg=#804000

" Folded text
hi Folded guifg=#0000c0 guibg=#c0c0c0

" Fold column
hi FoldColumn guifg=#0000c0 guibg=#c0c0c0

" Diff add
hi DiffAdd guibg=#0000c0

" Diff change
hi DiffChange guibg=#c000c0

" Diff delete
hi DiffDelete guifg=#0000c0 guibg=#008080 gui=bold

" Diff text
hi DiffText guibg=#c00000 gui=bold

" Sign column
hi SignColumn guifg=#0000c0 guibg=#a8a8a8

" Conceal text
hi Conceal guifg=#c0c0c0 guibg=#6c6c6c

" Spell errors
hi SpellBad guibg=#ffd7d7
hi SpellCap guibg=#5fd7ff
hi SpellRare guibg=#ffd7ff
hi SpellLocal guibg=#00ffff

" Popup menu
hi Pmenu guifg=#000000 guibg=#ffffff
hi PmenuSel guifg=#000000 guibg=#c0c0c0
hi PmenuSbar guibg=#a8a8a8
hi PmenuThumb guibg=#000000

" Tab line
hi TabLine guifg=#000000 guibg=#c0c0c0 gui=underline
hi TabLineSel gui=bold
hi TabLineFill guifg=#ffffff guibg=#000000

" Match parenthesis
hi MatchParen guibg=#00ffff

" Cursor column
hi CursorColumn guibg=#c0c0c0
hi CursorLine gui=underline
hi ColorColumn guibg=#ffd7d7

" Status line term
hi StatusLineTerm guifg=#ffffff guibg=#008000 gui=bold
hi StatusLineTermNC guifg=#ffffff guibg=#008000

" Comments
hi Comment guifg=#00af00

" Constants
hi Constant guifg=#c00000

" Specials
hi Special guifg=#c000c0

" Identifiers
hi Identifier guifg=#008080

" Statements
hi Statement guifg=#804000

" Preprocess
hi PreProc guifg=#c000c0

" Types
hi Type guifg=#008000

" Underlined text
hi Underlined guifg=#c000c0 gui=underline

" Error
hi Error guifg=#c0c0c0 guibg=#c00000 gui=bold

" Todo
hi Todo guifg=#000000 guibg=#804000
