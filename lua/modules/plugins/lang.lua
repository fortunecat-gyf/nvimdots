local lang = {}
lang["fatih/vim-go"] = {
  lazy = true,
  ft = "go",
  build = ":GoInstallBinaries",
  config = require("lang.vim-go"),
}
-- 一个改善neovim中rust体验的插件。
lang["simrat39/rust-tools.nvim"] = {
  lazy = true,
  ft = "rust",
  config = require("lang.rust-tools"),
  dependencies = { "nvim-lua/plenary.nvim" },
}
-- Markdown 预览
lang["Saecki/crates.nvim"] = {
  lazy = true,
  event = "BufReadPost Cargo.toml",
  config = require("lang.crates"),
  dependencies = { "nvim-lua/plenary.nvim" },
}
lang["iamcco/markdown-preview.nvim"] = {
  lazy = true,
  ft = "markdown",
  build = ":call mkdp#util#install()",
}
-- 预览csv 文件
lang["chrisbra/csv.vim"] = {
  lazy = true,
  ft = "csv",
}
return lang
