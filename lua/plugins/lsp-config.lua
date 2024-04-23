return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "tsserver" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.tsserver.setup({})
            -- see :h vim.lsp.buf
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
            vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, {})
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}