return {
    'simrat39/rust-tools.nvim',
    -- UTILS
    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },
    -- Completa los pairs
    {
        'echasnovski/mini.pairs',
        version = "*",
        opts = {}
    },
    require 'kickstart.plugins.debug',
}
