-- Settings {{{1
--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
vim.o.transparent = true

-- vim.g.material_style = "darker"
-- transparent windows enable
-- }}}1

-- Dashboard/Alpha {{{1

lvim.builtin.alpha.dashboard.section.header.opts.hl = ""
-- Shorter ASCII art logo, so not too much space is taken up.
lvim.builtin.alpha.dashboard.section.header.val = {

  '                                                          ',
  '                                                          ',
  '                                                          ', 
  '                                                          ',
  '88     88   88 88b 88    db    88""Yb Yb    dP 88 8b    d8',
  '88     88   88 88Yb88   dPYb   88__dP  Yb  dP  88 88b  d88',
  '88  .o Y8   8P 88 Y88  dP__Yb  88"Yb    YbdP   88 88YbdP88',
  '88ood8  YbodP  88  Y8 dP^^^^Yb 88  Yb    YP    88 88 YY 88',
  '                                                          ',
-- "'##:::::::'##::::'##:'##::: ##::::'###::::'########::'##::::'##:#,###:'##::::'##:",
-- " ##::::::: ##:::: ##: ###:: ##:::'## ##::: ##.... ##: ##:::: ##:. ##:: ###::'###:",
-- " ##::::::: ##:::: ##: ####: ##::'##:. ##:: ##:::: ##: ##:::: ##:: ##:: ####'####:",
-- " ##::::::: ##:::: ##: ## ## ##:'##:::. ##: ########:: ##:::: ##:: ##:: ## ### ##:",
-- " ##::::::: ##:::: ##: ##. ####: #########: ##.. ##:::. ##:: ##::: ##:: ##. #: ##:",
-- " ##::::::: ##:::: ##: ##:. ###: ##.... ##: ##::. ##:::. ## ##:::: ##:: ##:.:: ##:",
-- " ########:. #######:: ##::. ##: ##:::: ##: ##:::. ##:::. ###::::'####: ##:::: ##:",
-- "........:::.......:::..::::..::..:::::..::..:::::..:::::...:::::....::..:::::..::",
}

lvim.builtin.alpha.dashboard.section.buttons.entries = {
{ "f",   "  Find File",                   "<CMD>Telescope find_files<CR>" },
{ "n",   "  New File",                    "<CMD>ene!<CR>" },
{ "p",   "  Recent Projects ",            "<CMD>Telescope projects<CR>" },
{ "u",   "  Recently Used Files",         "<CMD>Telescope oldfiles<CR>" },
-- { "SPC s",   "  Load last session",           "<CMD>SessionLoad<CR>" },
{ "t",   "  NvimTree",                      "<CMD>NvimTreeToggle<CR>" },
{ "m",   "  Marks              ",         "<CMD>Telescope marks<CR>" },
{ "w",   "  Find Word",                   "<CMD>Telescope live_grep<CR>" },
{ "c",   "  Edit Configuration",          "<CMD>e ~/.config/lvim/config.lua<CR>" },
{ "g",   "  Git status",                  "<CMD>Telescope git_status<CR>" }
}
-- }}}1

-- lvim config {{{1
lvim.transparent_window                                       = true
lvim.colorscheme                                              = "mellifluous"
lvim.termguicolors                                            = true
lvim.lsp.diagnostics.virtual_text                             = false
lvim.builtin.nvimtree.setup.renderer.group_empty              = true
lvim.use_icons                                                = true
lvim.format_on_save                                           = false
lvim.auto_complete                                            = true
lvim.auto_close_tree                                          = 0
lvim.wrap_lines                                               = false
lvim.timeoutlen                                               = 100
lvim.leader                                                   = "space"
lvim.ignore_case                                              = true
lvim.smart_case                                               = true
lvim.builtin.alpha.active                                     = true
lvim.builtin.alpha.mode                                       = "dashboard"
lvim.builtin.terminal.active                                  = true
lvim.builtin.nvimtree.setup.view.side                         = "right"
lvim.builtin.nvimtree.setup.renderer.icons.show.git           = true
lvim.builtin.alpha.active                                     = true
lvim.builtin.dap.active                                       = true
lvim.builtin.terminal.active                                  = true
lvim.builtin.cmp.completion.keyword_length                    = 2
-- lvim.builtin.telescope.defaults.layout_config.width           = 0.95
lvim.builtin.nvimtree.setup.view.width                        = 25
--
lvim.builtin.cmp.confirm_opts.behavior = require("cmp").ConfirmBehavior.Insert
-- vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.g.cheat_default_window_layout = 'float'

-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )


-- Add executables on the config.lua
-- { exec, keymap, name}
-- lvim.builtin.terminal.execs = {
--   { vim.o.shell, "<M-1>", "Horizontal Terminal", "horizontal", 18 },
--   { vim.o.shell, "<M-2>", "Vertical Terminal", "vertical", 60 },
--   { vim.o.shell, "<M-3>", "Float Terminal", "float", nil },
-- }

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"
-- }}}1

-- Vim config {{{1
-- vim.cmd('source ~/.config/lvim/lua/user/lualine.lua')
vim.cmd('source ~/.config/lvim/user.vim')
-- }}}1

lvim.builtin.which_key.mappings["?"] = { "<cmd>Cheat<CR>", "Cheatsheets" }

-- Mappings for code runner - Jaq
lvim.builtin.which_key.mappings["|"] = {
  name = "+CodeRunner",
  f = { "<cmd>Jaq<cr>",      "Run code in floating window" },
  b = { "<cmd>Jaq bang<cr>", "Run code in a small window" },
}

lvim.builtin.which_key.mappings["u"] = {
  name = "+Utils",
  d = { ":call DeleteEndingWhiteSpace()<cr>",     "Remove trailing whitespaces" },
  r = { "<cmd>SearchBoxReplace confirm=menu<CR>", "Search&Replace" },
}

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}

lvim.builtin.which_key.mappings["o"] = {
    name = "Toggle Display Options",
    a = { ":call ToggleAll()<CR>",                         "Toggle All"},
    c = { ":call ToggleColourCursorColumn()<CR>",          "Toggle cursor Column visibility"},
    e = { ":call ToggleColourWhiteSpaceAtEndOfLine()<CR>", "Toggle whitespace at End of line visibility"},
    d = { "<cmd>DocsViewToggle<cr>",                       "Toggle docs-view"},
    h = { ":ColorizerToggle<CR>",                          "Toggle Hex colour and colour name matches"},
    i = { ":call ToggleColourIncSearch()<CR>",             "Toggle hIghlight matching words under cursor"},
    l = { ":call ToggleColourCursorLine()<CR>",            "Toggle cursor Line visibility"},
    m = { ":call ToggleMarkerLines()<CR>",                 "Toggle Marker lines"},
    r = { ":set wrap!<CR>",                                "Toggle line wRap"},
    s = { ":set spell!<CR>",                               "Toggle Spell checking"},
    t = { ":call ToggleColourLineTooLong()<CR>",           "Toggle line Too long highlighting"},
    w = { ":set list!<CR>",                                "Toggle Whitespace visibility"},
    y = { ":call ToggleColourSyntax()<CR>",                "Toggle sYntax highlighting"}
}

lvim.builtin.which_key.mappings["j"] = {
    name = "Show/Jump various dev info",
    a = {":silent exec '!jump Artifact %:p:h'<CR>",        "Jump Artifactory (project)"},
    c = {":silent exec '!jump Ci %:p:h'<CR>",              "Jump Ci (project)"},
    h = {":call OpenHelpPage()<CR>",                       "Jump vim Help page for word under cursor"},
    i = {":silent exec '!jump Live %:p:h'<CR>",            "Jump lIve (project)"},
    j = {":call JumpToSelection()<CR>",                    "Jump to url or hex color or git etc"},
    l = {":silent exec '!jump Lint %:p:h'<CR>",            "Jump Lint (project)"},
    m = {":<C-U>exe 'Man' v:count '<C-R><C-W>'<CR>",       "Jump linux Man page for word under cursor"},
    n = {":silent exec '!jump Notes %:p:h'<CR>",           "Jump Notes (project search in confluence)"},
    r = {":silent exec '!jump Repo %:p:h'<CR>",            "Jump Repo (git or bitbucket)"},
    s = {":call ShowJira()<CR>",                           "Show jira ticket in new buffer"},
    t = {":silent exec '!jump Ticket %:p:h'<CR>",          "Jump jira Ticket in browser"},
    u = {":silent exec '!jump TestReports %:p:h'<CR>",     "Jump Unit test reports"}
}

vim.api.nvim_set_keymap("n", "<TAB>",   ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-TAB>", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-l>",   ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-h>",   ":bprevious<CR>", { noremap = true, silent = true })

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true


-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumneko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
local opts = {} -- check the lspconfig documentation for a list of all possible options
require("lvim.lsp.manager").setup("jedi-language-server", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }
-- set additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "pyproject_flake8", filetypes = { "python" } },
  {
    -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "shellcheck",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
    extra_args = { "--severity", "warning" },
  },
  { command = "yamllint" },
  { command = "jsonlint" },
  { command = "tidy" },
  --   {
  --     command = "codespell",
  --     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
  --     filetypes = { "javascript", "python" },
  --   },
}
-- }}}1

-- Additional Plugins{{{1
lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  -- multicursor
  { "mg979/vim-visual-multi" },
  -- themes
  {  "rebelot/kanagawa.nvim" },
  { "savq/melange" },
  {
    'ramojus/mellifluous.nvim',
    dependencies = {'rktjmp/lush.nvim'},
    config = function()
    require 'mellifluous'.setup({
      transparent_background = {
        enabled = true,
        floating_windows = true,
        telescope = true,
        file_tree = true,
        cursor_line = true,
        status_line = true,
      },
    })
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
    require('rose-pine').setup({
      dark_variant = 'moon',
    })
    end,
  },
  -- Markers in margin. 'ma' adds marker
  {"kshenoy/vim-signature",
    event = "BufRead",
  },

  -- lsp_signature.nvim
  -- hint when you type
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require "lsp_signature".setup()
    end
  },

  -- codi.vim
  -- interactive scratchpad for hackers
  {
    "metakirby5/codi.vim",
    cmd = "Codi",
  },

  -- symbols-outline.nvim - F12
  -- a tree like view for symbols
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
  },

  -- Highlight URL's. http://www.vivaldi.com
  {
    "itchyny/vim-highlighturl",
    event = "BufRead",
  },

  -- Kitty config syntax.  Edit kitty, with vk
  {
    "fladson/vim-kitty",
    event = "BufRead",
    ft = "conf",
  },

  -- Dev docs
  {
    "rhysd/devdocs.vim"
  },
  -- Vim syntax file for Docker's Dockerfile and snippets for snipMate.
  {
    'ekalinin/Dockerfile.vim'
  },
  -- numb
  -- jump to the line
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("numb").setup {
        show_numbers = true, -- Enable 'number' for the window while peeking
        show_cursorline = true, -- Enable 'cursorline' for the window while peeking
      }
    end,
  },
  -- nvim-bqf
  -- better quickfix window
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup({
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-s"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      })
    end,
  },
  -- vim-matchup
  -- navigate and highlight matching words
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },

  -- Git
  -- diffview
  -- git diff in a single tabpage
  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },

  -- git-blame
  -- show git blame
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      vim.g.gitblame_enabled = 0
    end,
  },
  -- rainbow parentheses
  { "p00f/nvim-ts-rainbow" },
  -- cmp-tabnine
  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    dependencies = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },
  -- neoscroll
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require('neoscroll').setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>',
          '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
        hide_cursor = true, -- Hide cursor while scrolling
        stop_eof = true, -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil, -- Default easing function
        pre_hook = nil, -- Function to run before the scrolling animation starts
        post_hook = nil, -- Function to run after the scrolling animation ends
      })
    end
  },
  -- LazyGit plugin
  { "kdheepak/lazygit.nvim" },
  { "sbdchd/neoformat" },
  {
    "norcalli/nvim-colorizer.lua",
      config = function()
        require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
            names    = true,
            RGB      = true, -- #RGB hex codes
            RRGGBB   = true, -- #RRGGBB hex codes
            RRGGBBAA = true, -- #RRGGBBAA hex codes
            rgb_fn   = true, -- CSS rgb() and rgba() functions
            hsl_fn   = true, -- CSS hsl() and hsla() functions
            css      = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
            css_fn   = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
            mode     = 'background'
    })
    end,
  },
  { "christoomey/vim-tmux-navigator" },
  {
    "VonHeikemen/searchbox.nvim",
    dependencies = {
      {"MunifTanjim/nui.nvim"}
    }
  },
  { "RishabhRD/nvim-cheat.sh" },
  { "RishabhRD/popfix" },
  {
    "danymat/neogen",
    config = function()
        require('neogen').setup {}
    end,
    dependencies = "nvim-treesitter/nvim-treesitter",
    -- Uncomment next line if you want to follow only stable versions
    -- tag = "*"
  },
  -- Neovim plugin to inserts a shebang line when editing a new file.
  { 'samirettali/shebang.nvim' },
  -- Neovim plugin to open documentation in bottom window
  {
    "amrbashir/nvim-docs-view",
    lazy = true,
    cmd = { "DocsViewToggle" },
    config = function()
      require("docs-view").setup {
        position = "bottom",
        hight = 10,
      }
    end,
  },
  -- Code runner
  {
    "is0n/jaq-nvim",
    config = function ()
      require('jaq-nvim').setup{
      cmds = {
        -- Uses vim commands
        internal = {
          lua = "luafile %",
          vim = "source %"
        },
        -- Uses shell commands
        external = {
          markdown = "glow %",
          python   = "python3 %",
          go       = "go run %",
          sh       = "sh %",
          java     = "java %"
        }
      },
      behavior = {
        -- Default type
        default     = "float",
        -- Start in insert mode
        startinsert = false,
        -- Use `wincmd p` on startup
        wincmd      = false,
        -- Auto-save files
        autosave    = false
      },
      ui = {
        float = {
          -- See ':h nvim_open_win'
          border    = "rounded",
          -- See ':h winhl'
          winhl     = "Normal",
          borderhl  = "FloatBorder",
          -- See ':h winblend'
          winblend  = 0,
          -- Num from `0-1` for measurements
          height    = 0.8,
          width     = 0.8,
          x         = 0.5,
          y         = 0.5
        },
        terminal = {
          -- Window position
          position = "bot",
          -- Window size
          size     = 10,
          -- Disable line numbers
          line_no  = false
        },
        quickfix = {
          -- Window position
          position = "bot",
          -- Window size
          size     = 10
        }
      }
    }
    end
  },
  -- hignlight chunk signcolumn plug of nvim
  { "yaocccc/nvim-hlchunk" },
  { "mfussenegger/nvim-jdtls" },
}
-- }}}1

-- Plugins configurations {{{1
-- samirettali/shebang.nvim config
vim.g.shebang_commands = {
  py = '/usr/bin/env python3',
  sh = '/usr/bin/env bash'
}
vim.g.shebang_shells = {
  py = 'python3.9',
}

-- }}}1

-- Autocommands {{{1 (https://neovim.io/doc/user/autocmd.html)
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*" },
  -- enable wrap mode for json files only
  command = "setlocal wrap",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "zsh",
  callback = function()
    -- let treesitter use bash highlight for zsh files as well
    require("nvim-treesitter.highlight").attach(0, "bash")
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "Jenkinsfile",
  callback = function()
    -- let treesitter use bash highlight for zsh files as well
    require("nvim-treesitter.highlight").attach(0, "groovy")
  end,
})

-- windows to close with "q"
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "help",
    "startuptime",
    "qf",
    "lspinfo",
    "vim",
    "OverseerList",
    "OverseerForm",
    "fugitive",
    "toggleterm",
    "floggraph",
    "git",
    "cheat",
  },
  command = "nnoremap <buffer><silent> q :bdelete!<CR>",
})

-- don't auto comment new line
vim.api.nvim_create_autocmd("BufEnter", { command = [[set formatoptions-=cro]] })
-- }}}1

-- Dubugging cofiguration {{{1
local dap = require('dap')

dap.adapters.python = {
    type = 'executable';
    command = "python3";
    args = { '-m', 'debugpy.adapter' };
}

dap.configurations.python = dap.configurations.python or {}
    table.insert(dap.configurations.python, {
    type = 'python',
    request = 'launch',
    name = 'launch with options',
    program = '${file}';
    python = function() end,
    pythonPath = '/usr/sbin/python3', --function()
    --     local path
    --     for _, server in pairs(vim.lsp.buf_get_clients()) do
    --         path = vim.tbl_get(server, 'config', 'settings', 'python', 'pythonPath')
    --         if path then break end
    --     end
    --     path = vim.fn.input('Python path: ', path or '', 'file')
    --     return path ~= '' and vim.fn.expand(path) or nil
    -- end,
    -- args = function()
    --     local args = {}
    --     local i = 1
    --     while true do
    --         local arg = vim.fn.input("Argument [" .. i .. "]: ")
    --         if arg == '' then
    --             break
    --         end
    --         args[i] = arg
    --         i = i + 1
    --     end
    --     return args
    -- end,
    justMyCode = function()
        return vim.fn.input('justMyCode? [y/n]: ') == 'y'
    end,
    stopOnEntry = function()
        return vim.fn.input('justMyCode? [y/n]: ') == 'y'
    end,
    console = 'integratedTerminal'
})
-- }}}1

-- Load snippets {{{1
-- See ~/.config/lvim/snippets/package.json
-- And this site to make snippets: https://snippet-generator.app
-- For variables see: https://code.visualstudio.com/docs/editor/userdefinedsnippets#_variables
require("luasnip/loaders/from_vscode").load { paths = { "~/.config/lvim/snippets" } }
-- }}}1

-- Additional settings {{{1
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.scrolloff = 8 -- is one of mylvim.builtin.lualine.sections.lualine_c = { "diff" } fav
vim.opt.colorcolumn = "99999" -- fixes indentline for now
vim.opt.showtabline = 2 -- always show tabs
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion
-- }}}1

-- lualine config {{{1
vim.cmd('source ~/.config/lvim/lua/user/lualine.lua')
-- }}}1
