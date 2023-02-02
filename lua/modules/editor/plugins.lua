local editor = {}
local conf = require("modules.editor.config")
-- 一个简单，易于使用的Vim对齐插件。
editor["junegunn/vim-easy-align"] = {
	lazy = true,
	cmd = "EasyAlign",
}
-- Vim插件，使用LSP, Tree-sitter或regex匹配自动高亮光标下的单词的其他用途。
editor["RRethy/vim-illuminate"] = {
	lazy = true,
	event = "BufReadPost",
	config = conf.illuminate,
}
-- 在Neovim中切换注释，使用内置的commentstring文件类型选项;用Lua编写
editor["terrortylor/nvim-comment"] = {
	lazy = true,
	event = { "BufNewFile", "BufReadPre" },
	config = conf.nvim_comment,
}
-- nvm -treesitter的目标是提供一种简单易用的方式来使用Neovim中的tree-sitter接口，并提供一些基本功能，例如基于它的高亮显示:
editor["nvim-treesitter/nvim-treesitter"] = {
	lazy = true,
	build = ":TSUpdate",
	event = "BufReadPost",
	config = conf.nvim_treesitter,
	dependencies = {
		{ "nvim-treesitter/nvim-treesitter-textobjects" },
		{ "p00f/nvim-ts-rainbow" },
		{ "JoosepAlviste/nvim-ts-context-commentstring" },
		{ "mfussenegger/nvim-ts-hint-textobject" },
		{ "andymass/vim-matchup" },
		{ "windwp/nvim-ts-autotag", config = conf.autotag },
		{ "NvChad/nvim-colorizer.lua", config = conf.nvim_colorizer },
		{ "abecodes/tabout.nvim", config = conf.tabout },
	},
}
-- 加速上下移动的vim插件
editor["rainbowhxch/accelerated-jk.nvim"] = {
	lazy = true,
	event = "VeryLazy",
	config = conf.accelerated_jk,
}
-- clever-f。vim扩展了f、f、t和t映射，以方便使用 单词跳转
editor["rhysd/clever-f.vim"] = {
	lazy = true,
	event = "BufReadPost",
	config = conf.clever_f,
}
-- 当您完成搜索时，Vim-cool禁用搜索高亮显示，并在再次搜索时重新启用它。
editor["romainl/vim-cool"] = {
	lazy = true,
	event = { "CursorMoved", "InsertEnter" },
}
-- Hop是一个类似于easymotion的插件，可以让你用尽可能少的按键来跳转文档中的任何地方
editor["phaazon/hop.nvim"] = {
	lazy = true,
	branch = "v2",
	event = "BufReadPost",
	config = conf.hop,
}
-- Neoscroll:用lua编写的一个平滑滚动的neovim插件
editor["karb94/neoscroll.nvim"] = {
	lazy = true,
	event = "BufReadPost",
	config = conf.neoscroll,
}
-- 一个neovim插件，用于在编辑会话期间持久化和切换多个终端
editor["akinsho/toggleterm.nvim"] = {
	lazy = true,
	event = "UIEnter",
	config = conf.toggleterm,
}
-- 自动会话利用Neovim现有的会话管理功能，提供无缝的自动会话管理。
editor["rmagatti/auto-session"] = {
	lazy = true,
	cmd = { "SaveSession", "RestoreSession", "DeleteSession" },
	config = conf.auto_session,
}
-- 专门针对跳出 insert mode 这种场景 jj jk
editor["max397574/better-escape.nvim"] = {
	lazy = true,
	event = "BufReadPost",
	config = conf.better_escape,
}
-- DAP(调试适配器协议)
editor["mfussenegger/nvim-dap"] = {
	lazy = true,
	cmd = {
		"DapSetLogLevel",
		"DapShowLog",
		"DapContinue",
		"DapToggleBreakpoint",
		"DapToggleRepl",
		"DapStepOver",
		"DapStepInto",
		"DapStepOut",
		"DapTerminate",
	},
	config = conf.dap,
	dependencies = {
		{ "rcarriga/nvim-dap-ui", config = conf.dapui },
	},
}
-- 是Git的首要Vim插件
editor["tpope/vim-fugitive"] = {
	lazy = true,
	cmd = { "Git", "G" },
}
-- 一个小的Neovim插件，用于改进缓冲区的删除。
editor["ojroques/nvim-bufdel"] = {
	lazy = true,
	event = "BufReadPost",
}
-- 显示你的光标移动的地方，跳跃的距离较大(例如在窗口之间)。快速且轻量级，完全用Lua编写。 -- 未生效
editor["edluffy/specs.nvim"] = {
	lazy = true,
	event = "CursorMoved",
	config = conf.specs,
}
-- 单一的tabpage接口，可以轻松地在任何git rev的所有修改文件的diff之间循环。
editor["sindrets/diffview.nvim"] = {
	lazy = true,
	cmd = { "DiffviewOpen", "DiffviewClose" },
}
-- Neovim插件，稳定窗口打开/关闭事件的缓冲区内容。
editor["luukvbaal/stabilize.nvim"] = {
	lazy = true,
	event = "BufReadPost",
}
-- 当我开始使用vim/neovim时，我发现整个复制pasta的过程有点违背直觉，因为系统中只有一个剪贴板，由<Cmd-c>|<Cmd-v>管理。剪切板管理
editor["ibhagwan/smartyank.nvim"] = {
	lazy = true,
	event = "BufReadPost",
	config = conf.smartyank,
}
-- 如果打开的文件很大，这个插件会禁用某些功能。文件大小和功能禁用是可配置的。
editor["LunarVim/bigfile.nvim"] = {
	lazy = false,
	config = conf.bigfile,
	cond = require("core.settings").load_big_files_faster,
}

-- only for fcitx5 user who uses non-English language during coding
-- editor["brglng/vim-im-select"] = {
-- 	lazy = true,
-- 	event = "BufReadPost",
-- 	config = conf.imselect,
-- }

return editor
