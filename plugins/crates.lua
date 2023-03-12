return
{
    'saecki/crates.nvim',
    version = 'v0.3.0',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    config = function(plugin)
        require("crates").setup()
    end,
}
