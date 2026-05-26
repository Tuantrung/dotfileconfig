return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,           -- main không hỗ trợ lazy-loading
  build = ":TSUpdate",
  config = function()
    -- Cài các parser cần dùng (chạy bất đồng bộ)
    require("nvim-treesitter").install({
      "lua", "vim", "vimdoc", "query",
      "bash", "python", "json", "jsonc", "yaml",
      "markdown", "markdown_inline",
      "c", "cpp", "java", "html", "sql",
    })

    -- Bật highlight cho mọi buffer có parser tương ứng
    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
      end,
    })
  end,
}
