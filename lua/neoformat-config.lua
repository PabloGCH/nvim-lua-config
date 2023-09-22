local formats = {
    cs = "csharpier",
    typescript = "prettier",
    html = "prettier",
    css = "prettier",
    json = "prettier",
    javascript = "prettier",
}


--Function that runs the formatter
function format()
    --Checks filetype
    local filetype = vim.bo.filetype
    if formats[filetype] then
        vim.cmd("Neoformat " .. formats[filetype])
    end
end

