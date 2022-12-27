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
highlight CursorLineNr          ctermbg=NONE  gui=bold     guifg=#e0def4      guibg=NONE
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
highlight TelescopeBorder       ctermbg=NONE                                  guibg=NONE
highlight FloatBorder                         gui=bold     guifg=#56526e      guibg=NONE

" vertical split colors
highlight VertSplit             ctermbg=NONE                                  guibg=NONE
highlight NvimTreeVertSplit     ctermbg=NONE               guifg=#393535      guibg=NONE
highlight ColorColumn           ctermbg=NONE                                  guibg=NONE

" Nvim tree root folder color
highlight NvimTreeRootFolder                               guifg=#8f8f8f

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

" Lualine highlighting
highlight lualine_c_5_normal                  ctermfg=247   guifg=#908CA9
highlight lualine_c_5_insert                  ctermfg=247   guifg=#908CA9
highlight lualine_c_5_visual                  ctermfg=247   guifg=#908CA9
highlight lualine_c_5_replace                 ctermfg=247   guifg=#908CA9
highlight lualine_c_5_command                 ctermfg=247   guifg=#908CA9
highlight lualine_c_5_terminal                ctermfg=247   guifg=#908CA9
highlight lualine_c_5_inactive                ctermfg=247   guifg=#908CA9

highlight lualine_c_8_normal                  ctermfg=247   guifg=#908CA9
highlight lualine_c_8_insert                  ctermfg=247   guifg=#908CA9
highlight lualine_c_8_visual                  ctermfg=247   guifg=#908CA9
highlight lualine_c_8_replace                 ctermfg=247   guifg=#908CA9
highlight lualine_c_8_command                 ctermfg=247   guifg=#908CA9
highlight lualine_c_8_terminal                ctermfg=247   guifg=#908CA9
highlight lualine_c_8_inactive                ctermfg=247   guifg=#908CA9

highlight lualine_c_15_normal                 ctermfg=247   guifg=#908CA9
highlight lualine_c_15_insert                 ctermfg=247   guifg=#908CA9
highlight lualine_c_15_visual                 ctermfg=247   guifg=#908CA9
highlight lualine_c_15_replace                ctermfg=247   guifg=#908CA9
highlight lualine_c_15_command                ctermfg=247   guifg=#908CA9
highlight lualine_c_15_terminal               ctermfg=247   guifg=#908CA9
highlight lualine_c_15_inactive               ctermfg=247   guifg=#908CA9

highlight lualine_c_20_normal                 ctermfg=247   guifg=#908CA9
highlight lualine_c_20_insert                 ctermfg=247   guifg=#908CA9
highlight lualine_c_20_visual                 ctermfg=247   guifg=#908CA9
highlight lualine_c_20_replace                ctermfg=247   guifg=#908CA9
highlight lualine_c_20_command                ctermfg=247   guifg=#908CA9
highlight lualine_c_20_terminal               ctermfg=247   guifg=#908CA9
highlight lualine_c_20_inactive               ctermfg=247   guifg=#908CA9

highlight lualine_c_diff_added_normal         ctermfg=31    guifg=#286983
highlight lualine_c_diff_added_insert         ctermfg=31    guifg=#286983
highlight lualine_c_diff_added_visual         ctermfg=31    guifg=#286983
highlight lualine_c_diff_added_replace        ctermfg=31    guifg=#286983
highlight lualine_c_diff_added_command        ctermfg=31    guifg=#286983
highlight lualine_c_diff_added_terminal       ctermfg=31    guifg=#286983
highlight lualine_c_diff_added_inactive       ctermfg=31    guifg=#286983

highlight lualine_c_diff_removed_normal       ctermfg=168   guifg=#b4637a
highlight lualine_c_diff_removed_insert       ctermfg=168   guifg=#b4637a
highlight lualine_c_diff_removed_visual       ctermfg=168   guifg=#b4637a
highlight lualine_c_diff_removed_replace      ctermfg=168   guifg=#b4637a
highlight lualine_c_diff_removed_command      ctermfg=168   guifg=#b4637a
highlight lualine_c_diff_removed_terminal     ctermfg=168   guifg=#b4637a
highlight lualine_c_diff_removed_inactive     ctermfg=168   guifg=#b4637a

" DevIcons colors
highlight DevIconTxt                          ctermfg=31    guifg=#286983
highlight DevIconZshrc                        ctermfg=31    guifg=#286983
highlight DevIconZsh                          ctermfg=31    guifg=#286983
highlight DevIconZshenv                       ctermfg=31    guifg=#286983
highlight DevIconClojureC                     ctermfg=31    guifg=#286983
highlight DevIconD                            ctermfg=31    guifg=#286983
highlight DevIconBashProfile                  ctermfg=31    guifg=#286983
highlight DevIconTerminal                     ctermfg=31    guifg=#286983
highlight DevIconBashrc                       ctermfg=31    guifg=#286983
highlight DevIconGvimrc                       ctermfg=31    guifg=#286983
highlight DevIconTwig                         ctermfg=31    guifg=#286983
highlight DevIconBat                          ctermfg=31    guifg=#286983
highlight DevIconZshprofile                   ctermfg=31    guifg=#286983
highlight DevIconVue                          ctermfg=31    guifg=#286983
highlight DevIconClojure                      ctermfg=31    guifg=#286983
highlight DevIconRproj                        ctermfg=31    guifg=#286983
highlight DevIconBash                         ctermfg=31    guifg=#286983
highlight DevIconCsv                          ctermfg=31    guifg=#286983
highlight DevIconXls                          ctermfg=31    guifg=#286983
highlight DevIconVim                          ctermfg=31    guifg=#286983
highlight DevIconCMakeLists                   ctermfg=31    guifg=#286983
highlight DevIconStyle                        ctermfg=31    guifg=#286983
highlight DevIconR                            ctermfg=31    guifg=#286983
