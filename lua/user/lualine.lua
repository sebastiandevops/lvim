-- lualine config {{{1
local components = require("lvim.core.lualine.components")
lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.sections.lualine_b = {
  components.branch,
}
lvim.builtin.lualine.sections.lualine_x = { "fileformat", "filetype" }
lvim.builtin.lualine.sections.lualine_y = { components.spaces, components.lsp, components.location }
lvim.builtin.lualine.sections.lualine_z = { "progress" }

lvim.builtin.lualine.options.theme = {
  normal = {
    c = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    a = { fg = "#DFDDF3", bg = "#286983", gui = "bold" },
    b = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    x = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    y = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    z = { fg = "#DFDDF3", bg = "#286983", gui = "bold" },
  },
  visual = {
    c = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    a = { fg = "#DFDDF3", bg = "#907AA8", gui = "bold" },
    b = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    x = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    y = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    z = { fg = "#DFDDF3", bg = "#907AA8", gui = "bold" },
  },
  insert = {
    c = { ft = "#908CA9", bg = "#0000ffff", gui = "bold" },
    a = { fg = "#DFDDF3", bg = "#B3637A", gui = "bold" },
    b = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    x = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    y = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    z = { fg = "#DFDDF3", bg = "#B3637A", gui = "bold" },
  },
  inactive = {
    c = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    a = { fg = "#DFDDF3", bg = "#6E6A86", gui = "bold" },
    b = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    x = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    y = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    z = { fg = "#DFDDF3", bg = "#6E6A86", gui = "bold" },
  },
  command = {
    c = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    a = { fg = "#DFDDF3", bg = "#6E6A86", gui = "bold" },
    b = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    x = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    y = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    z = { fg = "#DFDDF3", bg = "#6E6A86", gui = "bold" },
  },
  replace = {
    c = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    a = { fg = "#DFDDF3", bg = "#6E6A86", gui = "bold" },
    b = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    x = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    y = { fg = "#908CA9", bg = "#0000ffff", gui = "bold" },
    z = { fg = "#DFDDF3", bg = "#6E6A86", gui = "bold" },
  },
}
-- }}}1
