set termguicolors

" Tweaks to zenburn... I only like red to mean a problem.
highlight Boolean               ctermfg=181                                   guifg=#bfbfbf
highlight Character             ctermfg=181   cterm=bold   gui=bold           guifg=#a3aca3
highlight Constant              ctermfg=181   cterm=bold   gui=NONE           guifg=#a3dcdc
highlight SpecialChar           ctermfg=181   cterm=bold   gui=bold           guifg=#a3a3dc
highlight String                ctermfg=174                                   guifg=#3e8fb0
highlight Tag                   ctermfg=181   cterm=bold   gui=bold           guifg=#93e893

" Cursor colors
highlight CursorLine                                       guifg=NONE         guibg=#403d52
highlight CursorColumn          ctermbg=NONE                                  guibg=NONE
highlight CursorLineNr          ctermbg=NONE                                  guibg=NONE
highlight SpecialKey                          gui=bold     guifg=#e0def4      guibg=NONE
highlight Cursor                                           guifg=NONE         guibg=#403d52

" Normal mode
highlight Normal                ctermbg=NONE                                  guibg=NONE
highlight LineNr                ctermbg=NONE                                  guibg=NONE

" Show white space characters
set listchars=eol:¶,tab:»\ ,trail:·,extends:>,precedes:<,space:·
highlight NonText                             gui=bold     guifg=#403d52      guibg=NONE
highlight Whitespace                          gui=bold     guifg=#403d52      guibg=NONE

" Pop-up and Float menu
highlight Pmenu                                            guifg=#6e6a86      guibg=NONE
highlight PmenuSbar                                                           guibg=NONE
highlight PmenuThumb                                                          guibg=NONE
highlight PmenuSel                            gui=bold     guifg=#e0def4      guibg=NONE
highlight NormalFloat                         gui=NONE     guifg=#6e6a86      guibg=NONE
highlight NormalNC                                                            guibg=NONE
highlight VertSplit                                        guifg=#444444      guibg=NONE
highlight Title                                            guifg=#e0def4      guibg=NONE

" vertical split colors
highlight VertSplit             ctermbg=NONE                                  guibg=NONE
highlight NvimTreeVertSplit     ctermbg=NONE               guifg=#393535      guibg=NONE
highlight ColorColumn           ctermbg=NONE                                  guibg=NONE

" Nvim tree root folder color
highlight NvimTreeRootFolder                               guifg=8f8f8f

" Git changes and margins
highlight GitSignsAdd                                      guifg=#286983      guibg=NONE
highlight GitSignsDelete                                   guifg=#b4637a      guibg=NONE
highlight GitSignsChange                                   guifg=#c4a7e7      guibg=NONE
highlight GitSignsCurrentLineBlame            gui=bold     guifg=#393552      guibg=NONE
highlight default link gitblame GitSignsCurrentLineBlame

" Diff colours
highlight DiffAdd               ctermbg=NONE                                  guibg=NONE
highlight DiffChange            ctermbg=NONE                                  guibg=NONE
highlight DiffDelete                                       guifg=#552222      guibg=NONE
highlight DiffText                                         guifg=#b4637a      guibg=NONE

" Selected area colour
highlight VisualNOS             ctermbg=NONE                                  guibg=NONE
highlight Visual                ctermbg=NONE                                  guibg=#44415a

" Status line colors
highlight StatusLineNC          ctermbg=NONE                                  guibg=NONE
highlight StatusLine            ctermbg=NONE                                  guibg=NONE

" Diagnostics colors
highlight DiagnosticSignError   ctermbg=NONE                                  guibg=NONE
highlight DiagnosticSignWarn    ctermbg=NONE                                  guibg=NONE
highlight DiagnosticSignInfo    ctermbg=NONE                                  guibg=NONE
highlight DiagnosticSignHint    ctermbg=NONE                                  guibg=NONE
highlight NormalFloat           ctermbg=NONE                                  guibg=NONE

" LSP In-line error highlight.
highlight LspDiagnosticsUnderlineError                                        guibg=NONE
highlight LspDiagnosticsUnderlineWarning                                      guibg=NONE
highlight LspDiagnosticsUnderlineInformation                                  guibg=NONE
highlight LspDiagnosticsUnderlineHint                                         guibg=NONE

" Lsp colors
highlight LspReferenceText      ctermbg=NONE                                  guibg=NONE

" Lualine colors
highlight lualine               ctermbg=NONE                                  guibg=NONE
highlight lualine_b_inactive    ctermbg=NONE                guifg=#6e6a86     guibg=NONE
highlight lualine_c_inactive    ctermbg=NONE                guifg=#6e6a86     guibg=NONE
highlight lualine_a_inactive    ctermbg=NONE  gui=bold      guifg=#6e6a86     guibg=NONE
highlight lualine_x_5_inactive  ctermbg=NONE  gui=bold      guifg=#6e6a86     guibg=NONE
highlight lualine_x_8_inactive  ctermbg=NONE  gui=bold      guifg=#6e6a86     guibg=NONE
highlight lualine_x_12_inactive ctermbg=NONE                guifg=#6e6a86     guibg=NONE
highlight lualine_x_14_inactive ctermbg=NONE  gui=bold      guifg=#6e6a86     guibg=NONE
highlight lualine_x_20_inactive ctermbg=NONE                guifg=#6e6a86     guibg=NONE

" Match parentheses
highlight MatchParen                    gui=bold,underline  guifg=#FFFFFF     guibg=#44415a

"Comments color
highlight Comment                                           guifg=#6e6a86     guibg=NOE

" Highlight #! lines... Both good and bad.
highlight sheBangGood                    gui=bold,underline guifg=#b4637a     guibg=NONE
call matchadd('sheBangGood', '^#!/usr/bin/env \(bash\|-S bash -e\|sh\|python3\|zsh\|groovy\|perl\)$', 20)

highlight sheBangBad                          gui=bold      guifg=#b4637a     guibg=NONE
call matchadd('sheBangBad', '^#!.*')

" current word highlighting
" highlight IncSearch                         gui=underline guifg=#b4637a     guibg=NONE
highlight IncSearch                           gui=bold      guifg=#e0def4     guibg=NONE

"Highlight URL
highlight HighlightUrl cterm=underline        ctermfg=31    guifg=#286983     gui=underline
