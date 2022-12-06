-- lualine config {{{1
local components = require("lvim.core.lualine.components")
lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.sections.lualine_b = {
  components.branch,
}
lvim.builtin.lualine.sections.lualine_x = { "fileformat", "filetype" }
lvim.builtin.lualine.sections.lualine_y = { components.spaces, components.lsp, components.location }
lvim.builtin.lualine.sections.lualine_z = { "progress" }

local custom_rose_pine = require "lualine.themes.rose-pine"
custom_rose_pine.normal.c = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.normal.a = { fg = "#DFDDF3", bg = "#286983", gui = "bold" }
custom_rose_pine.normal.b = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.normal.x = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.normal.y = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.normal.z = { fg = "#DFDDF3", bg = "#286983", gui = "bold" }

custom_rose_pine.insert.c = { ft = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.insert.a = { fg = "#DFDDF3", bg = "#B3637A", gui = "bold" }
custom_rose_pine.insert.b = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.insert.x = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.insert.y = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.insert.z = { fg = "#DFDDF3", bg = "#B3637A", gui = "bold" }

custom_rose_pine.visual.c = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.visual.a = { fg = "#DFDDF3", bg = "#907AA8", gui = "bold" }
custom_rose_pine.visual.b = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.visual.x = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.visual.y = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.visual.z = { fg = "#DFDDF3", bg = "#907AA8", gui = "bold" }

custom_rose_pine.command.c = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.command.a = { fg = "#DFDDF3", bg = "#6E6A86", gui = "bold" }
custom_rose_pine.command.b = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.command.x = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.command.y = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.command.z = { fg = "#DFDDF3", bg = "#6E6A86", gui = "bold" }

custom_rose_pine.replace.c = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.replace.a = { fg = "#DFDDF3", bg = "#6E6A86", gui = "bold" }
custom_rose_pine.replace.b = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.replace.x = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.replace.y = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.replace.z = { fg = "#DFDDF3", bg = "#6E6A86", gui = "bold" }

custom_rose_pine.inactive.c = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.inactive.a = { fg = "#DFDDF3", bg = "#6E6A86", gui = "bold" }
custom_rose_pine.inactive.b = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.inactive.x = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.inactive.y = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" }
custom_rose_pine.inactive.z = { fg = "#DFDDF3", bg = "#6E6A86", gui = "bold" }

lvim.builtin.lualine.options.theme = custom_rose_pine
-- }}}1
