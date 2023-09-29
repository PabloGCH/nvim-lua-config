require("mason").setup()
require("mason-lspconfig").setup()
local caps = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, noremap = true, silent = true }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
end
local csharp_on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    client.server_capabilities.semanticTokensProvider = nil
end


require("mason-lspconfig").setup_handlers {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {
            capabilities = caps,
            on_attach = on_attach
        }
    end,

    ["omnisharp"] = function ()
        require("lspconfig").omnisharp.setup {
            capabilities = caps,
            on_attach = csharp_on_attach,
            handlers = {
                ["textDocument/definition"] = require('omnisharp_extended').handler
            },
            semanticHighlighting = false
        }
    end

    -- Next, you can provide a dedicated handler for specific servers.
    -- For example, a handler override for the `rust_analyzer`:
    --["rust_analyzer"] = function ()
        --require("rust-tools").setup {}
    --end

}

