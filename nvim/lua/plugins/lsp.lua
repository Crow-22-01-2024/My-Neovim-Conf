require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "solargraph","clangd"}
}
require("lspconfig").solargraph.setup{}
require("lspconfig").clangd.setup {
  cmd = { "clangd", "--background-index", "--clang-tidy" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
}

