
 require("lsp-format").setup {
    typescript = {{ cmd = {"prettier -w"} }},
    yaml = { tab_width = 2 },
}
local prettier = {
    formatCommand = [[prettier --stdin-filepath ${INPUT} ${--tab-width:tab_width}]],
    formatStdin = true,
}

vim.cmd [[autocmd BufWritePre * Format]]
