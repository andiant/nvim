return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        -- configure treesitter
        treesitter.setup({ 
            highlight = { enable = true },
            indent = { enable = true },
            auto_install = true,
            --ensure_installed = { --statt dieser Liste müsste das auto_install funktionieren, wenn nicht, dann kann man doch wieder die Liste nehmen.
            --    "bash",
            --    "css",
            --    "dockerfile",
            --    "gitattributes",
            --    "gitignore",
            --    "graphql",
            --    "hcl",
            --    "html",
            --    "java",
            --    "javascript",
            --    "json",
            --    "kotlin",
            --    "lua",
            --    "markdown",
            --    "markdown_inline",
            --    "terraform",
            --    "typescript",
            --    "vim",
            --    "vimdoc",
            --    "yaml",
            --},
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            }
        })

    end,
}
