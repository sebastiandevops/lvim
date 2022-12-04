set termguicolors

" Cursor colors
highlight CursorLine                                       guifg=NONE         guibg=#403d52
highlight CursorColumn          ctermbg=NONE                                  guibg=NONE
highlight CursorLineNr          ctermbg=NONE                                  guibg=NONE

" Normal mode
highlight Normal                ctermbg=NONE                                  guibg=NONE
highlight LineNr                ctermbg=NONE                                  guibg=NONE

" Show white space characters
set listchars=eol:¶,tab:»\ ,trail:·,extends:>,precedes:<,space:·
highlight NonText                             gui=bold     guifg=#403d52      guibg=NONE
highlight Whitespace                          gui=bold     guifg=#403d52      guibg=NONE
" Pop-up and Float menu
highlight Pmenu                                            guifg=Wheat        guibg=NONE
highlight PmenuSbar                                                           guibg=NONE
highlight PmenuThumb                                                          guibg=NONE
highlight PmenuSel                            gui=bold     guifg=Black        guibg=NONE
highlight NormalFloat                         gui=NONE     guifg=Wheat        guibg=NONE
highlight NormalNC                                                            guibg=NONE
highlight VertSplit                                        guifg=#444444      guibg=NONE

" vertical split colors
highlight VertSplit             ctermbg=NONE                                  guibg=NONE
highlight NvimTreeVertSplit     ctermbg=NONE               guifg=#393535      guibg=NONE
highlight ColorColumn           ctermbg=NONE                                  guibg=NONE

" Nvim tree root folder color
highlight NvimTreeRootFolder                               guifg=8f8f8f

" Diff colours
highlight DiffAdd               ctermbg=NONE                                  guibg=NONE
highlight DiffChange            ctermbg=NONE                                  guibg=NONE

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
highlight MatchParen                          gui=bold      guifg=#cecacd     guibg=#b4637a

"Comments color
highlight Comment                                           guifg=#6e6a86     guibg=NOE
