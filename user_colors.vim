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

" Lualine highlighting
highlight lualine_c_5_normal                                                  guifg=#908CA9
highlight lualine_c_5_insert                                                  guifg=#908CA9
highlight lualine_c_5_visual                                                  guifg=#908CA9
highlight lualine_c_5_replace                                                 guifg=#908CA9
highlight lualine_c_5_command                                                 guifg=#908CA9
highlight lualine_c_5_terminal                                                guifg=#908CA9
highlight lualine_c_5_inactive                                                guifg=#908CA9

highlight lualine_c_15_normal                                                 guifg=#908CA9
highlight lualine_c_15_insert                                                 guifg=#908CA9
highlight lualine_c_15_visual                                                 guifg=#908CA9
highlight lualine_c_15_replace                                                guifg=#908CA9
highlight lualine_c_15_command                                                guifg=#908CA9
highlight lualine_c_15_terminal                                               guifg=#908CA9
highlight lualine_c_15_inactive                                               guifg=#908CA9

highlight lualine_c_diff_added_normal                       guifg=#286983
highlight lualine_c_diff_added_insert                       guifg=#286983
highlight lualine_c_diff_added_visual                       guifg=#286983
highlight lualine_c_diff_added_replace                      guifg=#286983
highlight lualine_c_diff_added_command                      guifg=#286983
highlight lualine_c_diff_added_terminal                     guifg=#286983
highlight lualine_c_diff_added_inactive                     guifg=#286983

highlight lualine_c_diff_removed_normal                     guifg=#b4637a
highlight lualine_c_diff_removed_insert                     guifg=#b4637a
highlight lualine_c_diff_removed_visual                     guifg=#b4637a
highlight lualine_c_diff_removed_replace                    guifg=#b4637a
highlight lualine_c_diff_removed_command                    guifg=#b4637a
highlight lualine_c_diff_removed_terminal                   guifg=#b4637a
highlight lualine_c_diff_removed_inactive                   guifg=#b4637a

" DevIcons colors
highlight DevIconTxt                                        guifg=#286983
highlight DevIconZshrc                                      guifg=#286983
highlight DevIconZsh                                        guifg=#286983
highlight DevIconZshenv                                     guifg=#286983
highlight DevIconClojureC                                   guifg=#286983
highlight DevIconD                                          guifg=#286983
highlight DevIconBashProfile                                guifg=#286983
highlight DevIconTerminal                                   guifg=#286983
highlight DevIconBashrc                                     guifg=#286983
highlight DevIconGvimrc                                     guifg=#286983
highlight DevIconTwig                                       guifg=#286983
highlight DevIconBat                                        guifg=#286983
highlight DevIconZshprofile                                 guifg=#286983
highlight DevIconVue                                        guifg=#286983
highlight DevIconClojure                                    guifg=#286983
highlight DevIconRproj                                      guifg=#286983
highlight DevIconBash                                       guifg=#286983
highlight DevIconCsv                                        guifg=#286983
highlight DevIconXls                                        guifg=#286983
highlight DevIconVim                                        guifg=#286983
highlight DevIconCMakeLists                                 guifg=#286983
