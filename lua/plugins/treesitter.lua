return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
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
      indent = { enable = true },
      ---@param opts TSConfig
      config = function(_, opts)
        if type(opts.ensure_installed) == "table" then
          ---@type table<string, boolean>
          local added = {}
          opts.ensure_installed = vim.tbl_filter(function(lang)
            if added[lang] then
              return false
            end
            added[lang] = true
            return true
          end, opts.ensure_installed)
        end
        require("nvim-treesitter.configs").setup(opts)
      end,
    },
  },
}
