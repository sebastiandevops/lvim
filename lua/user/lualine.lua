-- See: https://github.com/hoob3rt/lualine.nvim

-- Configuration {{{1

-- Settings {{{2
local lineLengthWarning = 80
local lineLengthError = 120
lvim.builtin.lualine.sections = {
    lualine_a = {}, lualine_b = {}, lualine_c = {},
    lualine_x = {}, lualine_y = {}, lualine_z = {}
}
lvim.builtin.lualine.inactive_sections = {
    lualine_a = {}, lualine_b = {}, lualine_c = {},
    lualine_x = {}, lualine_y = {}, lualine_z = {}
}
-- }}}2

-- Colours, maps and icons {{{2
local colors = {
    -- bg               =NONE,
    bg               ='NONE',
    modetext         = '#DFDDF3',

    giticonbg        = '#286983',
    gitbg            = 'NONE',
    gittext          = '#DFDDF3',

    diagerror        = '#b4637a',
    diagwarning      = '#d7827e',
    diaghint         = '#56949f',
    diaginfo         = '#ea9d34',

    lspiconbg        = '#286983',
    lspbg            = '#304B2E',
    lsptext          = '#DFDDF3',

    typeiconbg       = 'NONE',
    typebg           = 'NONE',
    typetext         = 'NONE',
    typeiconbgrw     = '#286983',
    typetextmodified = 'NONE',
    typeiconbgro     = '#286983',
    typetextreadonly = '#DFDDF3',

    statsiconbg      = '#286983',
    statsbg          = '#56949f',
    statstext        = '#DFDDF3',

    lineokfg         = 'NONE',
    lineokbg         = '#286983',
    linelongerrorfg  = '#b4637a',
    linelongwarnfg   = '#ea9d34',
    linelongbg       = '#56949f',

    shortbg          = 'NONE',
    shorttext        = '#DFDDF3',

    shortrightbg     = 'NONE',
    shortrighttext   = '#7C4C4E',

    red              = '#b4637a',
    yellow           = '#ea9d34',
    magenta          = '#d7827e',
    green            = '#286983',
    orange           = 'NONE',
    purple           = '#907aa9',
    blue             = '#31748f',
    cyan             = '#56949f'
}

local mode_map = {
    ['n']        = {'#286983', ' NORMAL '},
    ['i']        = {'#B3637A', ' INSERT '},
    ['R']        = {'#B3637A', 'REPLACE '},
    ['c']        = {'#6E6A86', 'COMMAND '},
    ['v']        = {'#907AA8', ' VISUAL '},
    ['V']        = {'#907AA8', ' VIS-LN '},
    ['']       = {'#907AA8', 'VIS-BLK '},
    ['s']        = {'#ea9d34', ' SELECT '},
    ['S']        = {'#ea9d34', ' SEL-LN '},
    ['']       = {'#ea9d34', 'SEL-BLK '},
    ['t']        = {'#2a283e', 'TERMINAL'},
    ['Rv']       = {'#B3637A', 'VIR-REP '},
    ['rm']       = {'#b4637a', '- More -'},
    ['r']        = {'#b4637a', "- Hit-Enter -"},
    ['r?']       = {'#b4637a', "- Confirm -"},
    ['cv']       = {'#286983', "Vim Ex Mode"},
    ['ce']       = {'#286983', "Normal Ex Mode"},
    ['!']        = {'#286983', "Shell Running"},
    ['ic']       = {'#B3637A', 'Insert mode completion |compl-generic|'},
    ['no']       = {'#ea9d34', 'Operator-pending'},
    ['nov']      = {'#ea9d34', 'Operator-pending (forced charwise |o_v|)'},
    ['noV']      = {'#ea9d34', 'Operator-pending (forced linewise |o_V|)'},
    ['noCTRL-V'] = {'#ea9d34', 'Operator-pending (forced blockwise |o_CTRL-V|) CTRL-V is one character'},
    ['niI']      = {'#ea9d34', 'Normal using |i_CTRL-O| in |Insert-mode|'},
    ['niR']      = {'#ea9d34', 'Normal using |i_CTRL-O| in |Replace-mode|'},
    ['niV']      = {'#ea9d34', 'Normal using |i_CTRL-O| in |Virtual-Replace-mode|'},
    ['ix']       = {'#ea9d34', 'Insert mode |i_CTRL-X| completion'},
    ['Rc']       = {'#ea9d34', 'Replace mode completion |compl-generic|'},
    ['Rx']       = {'#ea9d34', 'Replace mode |i_CTRL-X| completion'},
}

-- For icons see this cheatsheet and just copy and paste the icons: https://www.nerdfonts.com/cheat-sheet
-- I use the Nerd Font Sauce Code Pro: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro
local icons = {
    bracketleft       = '',
    bracketright      = '',
    vim               = '',
    -- vim            = '',
    git               = '',
    -- git            = '',
    github            = '',
    gitlab            = '',
    gitbitbucket      = '',
    hg                = '',
    gitadd            = ' ',
    -- gitadd         = ' ',
    gitmod            = ' ',
    -- gitmod         = '柳',
    gitdel            = ' ',
    -- gitdel         = ' ',
    -- lsp               = '',
    lsp               = '',
    lspdiagerror      = ' ',
    -- lspdiagerror   = ' ',
    lspdiagwarning    = ' ',
    -- lspdiagwarning = ' ',
    lspdiaginfo       = ' ',
    -- lspdiaginfo    = ' ',
    lspdiaghint       = ' ',
    -- lspdiaghint    = ' ',
    dos               = '',
    unix              = '',
    -- unix           = '',
    mac               = '',
    typewriteable     = '',
    -- typewriteable  = '',
    -- typewriteable  = '',
    typereadonly      = '',
    typesize          = '',
    -- typesize       = '',
    typeenc           = '',
    stats             = '⅑',
    -- statsvert      = '⇳',
    statsvert         = '⬍',
    -- statshoriz     = '⇔',
    statshoriz        = '⬌',
    statsspace        = '⯀',
    statstab          = '⯈',
}
-- }}}2

-- highlight, Insert and Rag status functions {{{2
local function highlight(group, fg, bg, gui)
    local cmd = string.format('hi! %s guifg=%s guibg=%s', group, fg, bg)
    local cmdInv = string.format('hi! %sInv guifg=%s guibg=%s', group, bg, fg)

    if gui ~= nil then
        cmd = cmd .. ' gui=' .. gui
    end

    vim.cmd(cmd)
    vim.cmd(cmdInv)
end

local function highlightGroup(group, icon, bg, text)
    highlight('Lualine' .. group .. 'Lft', icon, colors.bg)
    highlight('Lualine' .. group .. 'Mid', icon, bg)
    highlight('Lualine' .. group .. 'Txt', text, bg)
    highlight('Lualine' .. group .. 'End', bg, colors.bg)
end

local function ins_left(component)
    table.insert(lvim.builtin.lualine.sections.lualine_c, component)
end

local function ins_right(component)
    table.insert(lvim.builtin.lualine.sections.lualine_x, component)
end

local function setLineWidthColours()
    local colbg = colors.statsbg
    local linebg = colors.statsiconbg

    if (vim.fn.col('.') > lineLengthError)
    then
        colbg = colors.linelongerrorfg
    elseif (vim.fn.col('.') > lineLengthWarning)
    then
        colbg = colors.linelongwarnfg
    end

    if (vim.fn.strwidth(vim.fn.getline('.')) > lineLengthError)
    then
        linebg = colors.linelongerrorfg
    elseif (vim.fn.strwidth(vim.fn.getline('.')) > lineLengthWarning)
    then
        linebg = colors.linelongwarnfg
    end

    highlight('LinePosHighlightStart',  colbg,            colors.statsbg)
    highlight('LinePosHighlightColNum', colors.statstext, colbg)
    highlight('LinePosHighlightMid',    linebg,           colbg)
    highlight('LinePosHighlightLenNum', colors.statstext, linebg)
    highlight('LinePosHighlightEnd',    linebg,           colors.statsbg)
end

local function getGitUrl()
    local cmd="git ls-remote --get-url 2> /dev/null"
    local file = assert(io.popen(cmd , 'r'))
    local url = file:read('*all')
    file:close()
    return url
    -- return "github"
end

local function getGitIcon()
    local giturl = getGitUrl()

    if giturl == nil then
        return icons['git']
    elseif string.find(giturl, "github") then
        return icons['github']
    elseif string.find(giturl, "bitbucket") then
        return icons['gitbitbucket']
    elseif string.find(giturl, "stash") then
        return icons['gitbitbucket']
    elseif string.find(giturl, "gitlab") then
        return icons['gitlab']
    elseif string.find(giturl, "hg") then
        return icons['hg']
    end

    return icons['git']
end

local conditions = {
    display_mode      = function() return vim.fn.winwidth(0) >  60 end,
    display_pos       = function() return vim.fn.winwidth(0) >  80 end,
    display_stats     = function() return vim.fn.winwidth(0) > 100 end,
    display_git       = function()
        if getGitUrl() == nil then
            return false
        end

        return vim.fn.winwidth(0) > 120
    end,
    display_lsp       = function()
        local clients = vim.lsp.get_active_clients()

        if next(clients) == nil then
            return false
        end

        return vim.fn.winwidth(0) > 140
    end,
}
-- }}}2

-- }}}1

    -- Left {{{1

-- Vi Mode {{{2
ins_left {
    function()
        highlight('LualineMode', colors.bg, mode_map[vim.fn.mode()][1])
        highlight('LualineModeText', colors.modetext, mode_map[vim.fn.mode()][1])
        return icons['bracketleft']
    end,
    color = 'LualineModeInv',
    cond = conditions.display_mode,
    padding = { left = 1, right = 0 }
}
ins_left {
    function()
        return mode_map[vim.fn.mode()][2]
    end,
    color = 'LualineModeText',
    cond = conditions.display_mode,
    icon = icons['vim'],
    padding = { left = 0, right = 0 }
}
ins_left {
    function()
        return icons['bracketright']
    end,
    color = 'LualineModeInv',
    cond = conditions.display_mode,
    padding = { left = 0, right = 0 }
}
-- }}}2

-- Git info {{{2

-- Git Branch Name {{{3
ins_left {
    function()
        highlightGroup('Git', colors.giticonbg, colors.gitbg, colors.gittext)
        return icons['bracketleft']
    end,
    color = 'LualineGitLft',
    cond = conditions.display_git,
    padding = { left = 1, right = 0 }
}
ins_left {
    function() return getGitIcon() end,
    color = 'LualineGitMidInv',
    cond = conditions.display_git,
    padding = { left = 0, right = 0 }
}
ins_left {
    function() return icons['bracketright'] end,
    color = 'LualineGitMid',
    cond = conditions.display_git,
    padding = { left = 0, right = 0 }
}
ins_left {
    'branch',
    color = 'LualineGitTxt',
    cond = conditions.display_git,
    icon='',
    padding = { left = 0, right = 0 }
}
-- }}}3

-- Git diffs {{{3
ins_left {
    'diff',
    color = 'LualineGitTxt',
    symbols = {added = icons['gitadd'], modified = icons['gitmod'], removed = icons['gitdel']},
    diff_color = {
        added = {fg = colors.green, bg=colors.gitbg},
        modified = {fg = colors.orange, bg=colors.gitbg},
        removed = {fg = colors.red, bg=colors.gitbg},
    },
    cond = conditions.display_git,
    icon='',
    padding = { left = 0, right = 0 }
}
ins_left {
    function() return icons['bracketright'] end,
    color = 'LualineGitEnd',
    cond = conditions.display_git,
    padding = { left = 0, right = 0 }
}
-- }}}3

-- }}}2

-- Lsp Section {{{2

-- Lsp Client {{{3
ins_left {
    function()
        highlightGroup('Lsp', colors.lspiconbg, colors.lspbg, colors.lsptext)
        return icons['bracketleft']
    end,
    color = 'LualineLspLft',
    cond = conditions.display_lsp,
    padding = { left = 1, right = 0 }
}
ins_left {
    function() return icons['lsp'] end,
    color = 'LualineLspMidInv',
    cond = conditions.display_lsp,
    padding = { left = 0, right = 0 }
}
ins_left {
    function() return icons['bracketright'] end,
    color = 'LualineLspMid',
    cond = conditions.display_lsp,
    padding = { left = 0, right = 0 }
}
ins_left {
    function()
        local msg = 'No Active Lsp'
        local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
        local clients = vim.lsp.get_active_clients()
        if next(clients) == nil then return msg end
        for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                return client.name
            end
        end
        return msg
    end,
    color = 'LualineLspTxt',
    cond = conditions.display_lsp,
    padding = { left = 1, right = 1 }
}
-- }}}3

-- Diagnostics {{{3
ins_left {
    'diagnostics',
    sources = { "nvim_lsp" },
    symbols = {
        error = icons['lspdiagerror'],
        warn = icons['lspdiagwarning'],
        info = icons['lspdiaginfo'],
        hint = icons['lspdiaghint']
    },
    diagnostics_color = {
        error = {fg = colors.diagerror, bg=colors.lspbg},
        warn = {fg = colors.diagwarning, bg=colors.lspbg},
        info = {fg = colors.diaginfo, bg=colors.lspbg},
        hint = {fg = colors.diaghint, bg=colors.lspbg},
    },
    color = 'LualineLspMid',
    cond = conditions.display_lsp,
    padding = { left = 0, right = 0 }
}
ins_left {
    function() return icons['bracketright'] end,
    color = 'LualineLspEnd',
    cond = conditions.display_lsp,
    padding = { left = 0, right = 0 }
}
-- }}}3

-- }}}2

-- }}}1

-- Right {{{1

-- Type {{{2
ins_right {
    function()
        highlightGroup('Type', colors.typeiconbg, colors.typebg, colors.typetext)
        return icons['bracketleft']
    end,
    color = 'LualineTypeLft',
    cond = conditions.display_stats,
    padding = { left = 0, right = 0 }
}
ins_right {
    function() return icons[vim.bo.fileformat] or '' end,
    color = 'LualineTypeMidInv',
    cond = conditions.display_stats,
    padding = { left = 0, right = 0 }
}
ins_right {
    function() return icons['bracketright'] end,
    color = 'LualineTypeMid',
    cond = conditions.display_stats,
    padding = { left = 0, right = 0 }
}

-- File type icon.
ins_right {
    function()
        local filetype = vim.bo.filetype
        if filetype == '' then return '' end
        local filename, fileext = vim.fn.expand("%:t"), vim.fn.expand("%:e")
        local icon = require'nvim-web-devicons'.get_icon(filename, fileext, { default = true })
        return string.format('%s', icon)
    end,
    color = 'LualineTypeMid',
    cond = conditions.display_stats,
    padding = { left = 1, right = 0 }
}

-- File name.
ins_right {
    function()
        local filenameColour = colors.typetext
        local isModified = vim.bo.modified
        local isReadonly = vim.bo.readonly or not vim.bo.modifiable

        if isModified
        then
            filenameColour = colors.typetextmodified
        elseif isReadonly then
            filenameColour = colors.typetextreadonly
        end

        highlight('LualineTypeFileName', filenameColour, colors.typebg)
        return '%t'
    end,
    color = 'LualineTypeFileName',
    cond = conditions.display_stats,
    padding = { left = 1, right = 0 }
}

-- Padlock if the file is readonly.
ins_right {
    function()
        local lockcolour = colors.typeiconbgrw
        local lockicon = icons['typewriteable']
        local isReadonly = vim.bo.readonly or not vim.bo.modifiable
        if isReadonly
        then
            lockcolour = colors.typeiconbgro
            lockicon = icons['typereadonly']
        end
        highlight('LualineTypeMidLock', lockcolour, colors.typebg)
        return lockicon
    end,
    color = 'LualineTypeMidLock',
    cond = conditions.display_stats,
    padding = { left = 1, right = 0 }
}
-- File type text.
ins_right {
    function() return vim.bo.filetype end,
    color = 'LualineTypeTxt',
    cond = conditions.display_stats,
    padding = { left = 1, right = 0 }
}

-- File size icon.
ins_right {
    function() return icons['typesize'] end,
    color = 'LualineTypeMid',
    cond = conditions.display_stats,
    padding = { left = 1, right = 0 }
}
-- File size in b, k, m or g.
ins_right {
    function()
        local function format_file_size(file)
            local size = vim.fn.getfsize(file)
            if size <= 0 then return '' end
            local sufixes = {'b', 'k', 'm', 'g'}
            local i = 1
            while size > 1024 do
                size = size / 1024
                i = i + 1
            end

            if (i == 1)
            then
                return string.format('%.0f%s', size, sufixes[i])
            end

            return string.format('%.1f%s', size, sufixes[i])
        end
        local file = vim.fn.expand('%:p')
        if string.len(file) == 0 then return '' end
        return format_file_size(file)
    end,
    color = 'LualineTypeTxt',
    cond = conditions.display_stats,
    padding = { left = 1, right = 0 }
}
ins_right {
    function() return icons['typeenc'] end,
    color = 'LualineTypeMid',
    cond = conditions.display_stats,
    padding = { left = 1, right = 0 }
}
ins_right {
    'encoding',
    color = 'LualineTypeTxt',
    cond = conditions.display_stats,
    padding = { left = 1, right = 0 }
}
ins_right {
    function() return icons['bracketright'] end,
    color = 'LualineTypeEnd',
    cond = conditions.display_stats,
    padding = { left = 0, right = 0 }
}
-- }}}2

-- Cursor Position/Stats Section {{{2
ins_right {
    function()
        highlightGroup('Stats', colors.statsiconbg, colors.statsbg, colors.statstext)
        return icons['bracketleft']
    end,
    color = 'LualineStatsLft',
    cond = conditions.display_pos,
    padding = { left = 1, right = 0 }
}
ins_right {
    function() return icons['stats'] end,
    color = 'LualineStatsMidInv',
    cond = conditions.display_pos,
    padding = { left = 0, right = 0 }
}
ins_right {
    function() return icons['bracketright'] end,
    color = 'LualineStatsMid',
    cond = conditions.display_pos,
    padding = { left = 0, right = 0 }
}
-- Percentage/Top/Bottom/All
ins_right {
    'progress',
    color = 'LualineStatsTxt',
    cond = conditions.display_pos,
    icon='',
    padding = { left = 0, right = 0 }
}
-- Vertical icon.
ins_right {
    function() return icons['statsvert'] end,
    color = 'LualineStatsMid',
    cond = conditions.display_pos,
    icon='',
    padding = { left = 0, right = 0 }
}
-- File line position and number of lines.
ins_right {
    function()
        return string.format("%4s/%4i", "%l", vim.fn.line('$'))
    end,
    color = 'LualineStatsTxt',
    cond = conditions.display_pos,
    icon='',
    padding = { left = 0, right = 0 }
}
-- Horiz icon.
ins_right {
    function() return icons['statshoriz'] end,
    color = 'LualineStatsMid',
    cond = conditions.display_pos,
    icon='',
    padding = { left = 0, right = 0 }
}
 -- Left bracket for line length.
ins_right {
    function()
        setLineWidthColours()
        return icons['bracketleft']
    end,
    color = 'LinePosHighlightStart',
    cond = conditions.display_pos,
    padding = { left = 1, right = 0 }
}
-- Column and line width
ins_right {
    function()
        return string.format("%4s", "%c")
    end,
    color = 'LinePosHighlightColNum',
    cond = conditions.display_pos,
    icon='',
    padding = { left = 0, right = 0 }

}
ins_right {
    function()
        return icons['bracketleft']
    end,
    color = 'LinePosHighlightMid',
    cond = conditions.display_pos,
    icon = '',
    padding = { left = 0, right = 0 }
}
ins_right {
    function()
        return string.format("%4i", string.len(vim.fn.getline('.')))
    end,
    color = 'LinePosHighlightLenNum',
    cond = conditions.display_pos,
    icon='',
    padding = { left = 0, right = 0 }
}
ins_right {
    function()
        return icons['bracketright']
    end,
    color = 'LinePosHighlightEnd',
    cond = conditions.display_pos,
    padding = { left = 0, right = 0 }
}
ins_right {
    function()
        if vim.bo.expandtab
        then
            return icons['statsspace']
        else
            return icons['statstab']
        end
    end,
    color = 'LualineStatsMid',
    cond = conditions.display_pos,
    icon='',
    padding = { left = 0, right = 0 }
}
ins_right {
    function() return ''..vim.bo.shiftwidth end,
    color = 'LualineStatsTxt',
    cond = conditions.display_pos,
    icon='',
    padding = { left = 0, right = 0 }
}
ins_right {
    function() return icons['bracketright'] end,
    color = 'LualineStatsEnd',
    cond = conditions.display_pos,
    padding = { left = 0, right = 1 }
}
-- }}}2

-- }}}1

