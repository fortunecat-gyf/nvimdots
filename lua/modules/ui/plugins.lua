local ui = {}
local conf = require("modules.ui.config")

-- Nord配色方案
ui["shaunsingh/nord.nvim"] = {
	lazy = true,
	config = conf.nord,
}
-- 𝐄𝐝𝐠𝐞配色方案
ui["sainnhe/edge"] = {
	lazy = true,
	config = conf.edge,
}
-- catppuccin配色方案
ui["catppuccin/nvim"] = {
	lazy = false,
	name = "catppuccin",
	config = conf.catppuccin,
}
-- 一个花哨的，可配置的，NeoVim通知管理器
ui["rcarriga/nvim-notify"] = {
	lazy = true,
	event = "VeryLazy",
	config = conf.notify,
}
-- Neovim插件，用于调暗未使用的函数，变量，参数等的亮点
ui["zbirenbaum/neodim"] = {
	lazy = true,
	event = "LspAttach",
	config = conf.neodim,
}
-- 一个用Lua编写的快速且易于配置的Neovim statusline。z状态栏
ui["nvim-lualine/lualine.nvim"] = {
	lazy = true,
	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	config = conf.lualine,
}
-- Alpha是一个快速和完全可编程的neovim迎宾器。开屏画面
ui["goolord/alpha-nvim"] = {
	lazy = true,
	event = "BufWinEnter",
	config = conf.alpha,
}
-- 一个用Lua编写的Neovim文件管理器
ui["nvim-tree/nvim-tree.lua"] = {
	lazy = true,
	cmd = {
		"NvimTreeToggle",
		"NvimTreeOpen",
		"NvimTreeFindFile",
		"NvimTreeFindFileToggle",
		"NvimTreeRefresh",
	},
	config = conf.nvim_tree,
}
-- 纯lua/teal实现的超级快的git装饰。
ui["lewis6991/gitsigns.nvim"] = {
	lazy = true,
	event = { "BufReadPost", "BufNewFile" },
	config = conf.gitsigns,
}
-- 这个插件为所有行(包括空行)添加缩进指导。
ui["lukas-reineke/indent-blankline.nvim"] = {
	lazy = true,
	event = "BufReadPost",
	config = conf.indent_blankline,
}
-- 使用lua为Neovim构建的时髦的💅缓冲线(带有tabpage集成)。 打开文档的文件名
ui["akinsho/bufferline.nvim"] = {
	lazy = true,
	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	config = conf.nvim_bufferline,
}
-- nvm -scrollview是一个Neovim插件，可以显示交互式垂直滚动条。
ui["dstein64/nvim-scrollview"] = {
	lazy = true,
	event = "BufReadPost",
	config = conf.scrollview,
}
-- nvm -lsp进程的独立界面。对不耐烦的人来说是花瓶。进度百分比
ui["j-hui/fidget.nvim"] = {
	lazy = true,
	event = "BufReadPost",
	config = conf.fidget,
}

return ui
