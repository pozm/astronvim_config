return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax

  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function(plugin)
      require("lsp_signature").setup()
    end,
  },
}
