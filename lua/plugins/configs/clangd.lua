local keybinds = require('lsp_config.keybinds')

require('lspconfig').clangd.setup {
        on_attach = keybinds.on_attach,
        cmd = {
            "clangd",
            "--background-index",
            "--suggest-missing-includes"
        },
        filetypes = {"c", "cpp", "objc", "objcpp"},
}
