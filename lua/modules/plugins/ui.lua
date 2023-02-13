local ui = {}

ui["goolord/alpha-nvim"] = {
  lazy = true,
  event = "BufWinEnter",
  config = require("ui.alpha"),
}
-- 使用lua为Neovim构建的时髦的💅缓冲线(带有tabpage集成)。 打开文档的文件名
ui["akinsho/bufferline.nvim"] = {
  lazy = true,
  event = { "BufReadPost", "BufAdd", "BufNewFile" },
  config = require("ui.bufferline"),
}
ui["catppuccin/nvim"] = {
  lazy = false,
  name = "catppuccin",
  config = require("ui.catppuccin"),
}
ui["sainnhe/edge"] = {
  lazy = true,
  config = require("ui.edge"),
}
-- nvm -lsp进程的独立界面。对不耐烦的人来说是花瓶。进度百分比
ui["j-hui/fidget.nvim"] = {
  lazy = true,
  event = "BufReadPost",
  config = require("ui.fidget"),
}
ui["lewis6991/gitsigns.nvim"] = {
  lazy = true,
  event = { "CursorHold", "CursorHoldI" },
  config = require("ui.gitsigns"),
}
ui["lukas-reineke/indent-blankline.nvim"] = {
  lazy = true,
  event = "BufReadPost",
  config = require("ui.indent-blankline"),
}
ui["nvim-lualine/lualine.nvim"] = {
  lazy = true,
  event = { "BufReadPost", "BufAdd", "BufNewFile" },
  config = require("ui.lualine"),
}
ui["zbirenbaum/neodim"] = {
  lazy = true,
  event = "LspAttach",
  config = require("ui.neodim"),
}
ui["karb94/neoscroll.nvim"] = {
  lazy = true,
  event = "BufReadPost",
  config = require("ui.neoscroll"),
}
ui["shaunsingh/nord.nvim"] = {
  lazy = true,
  config = require("ui.nord"),
}
ui["rcarriga/nvim-notify"] = {
  lazy = true,
  event = "VeryLazy",
  config = require("ui.notify"),
}
ui["dstein64/nvim-scrollview"] = {
  lazy = true,
  event = "BufReadPost",
  config = require("ui.scrollview"),
}
ui["edluffy/specs.nvim"] = {
  lazy = true,
  event = "CursorMoved",
  config = require("ui.specs"),
}

return ui
