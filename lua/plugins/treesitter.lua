return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "json",
        "go",
        "css",
        "scss",
        "sql",
        "html",
        "bash",
        "html",
        "markdown",
        "markdown_inline",
        "query",
        "regex",
        "yaml",
        "vim",
        "vimdoc",
        "lua",
      },
      sync_install = false,
      hightlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
  },
}
