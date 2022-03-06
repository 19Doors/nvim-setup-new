--
--local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities.textDocument.completion.completionItem.snippetSupport = true
--capabilities.textDocument.completion.completionItem.resolveSupport = {
--  properties = {
--    'documentation',
--    'detail',
--    'additionalTextEdits',
--  }
--}

config = {
  cmd = {
    'launch-jdtls'
  },

  capabilities = capabilities,

  -- This is the default if not provided, you can remove it. Or adjust as needed.
  -- One dedicated LSP server & client will be started per unique root_dir
  root_dir = require('jdtls.setup').find_root({'mvnw', 'gradlew'})
}
require('jdtls').start_or_attach(config)

-- vim.cmd([[
-- nnoremap <A-CR> <Cmd>lua require('jdtls').code_action()<CR>
-- vnoremap <A-CR> <Esc><Cmd>lua require('jdtls').code_action(true)<CR>
-- nnoremap <leader>r <Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>
--
-- nnoremap <A-o> <Cmd>lua require'jdtls'.organize_imports()<CR>
-- nnoremap crv <Cmd>lua require('jdtls').extract_variable()<CR>
-- vnoremap crv <Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>
-- nnoremap crc <Cmd>lua require('jdtls').extract_constant()<CR>
-- vnoremap crc <Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>
-- vnoremap crm <Esc><Cmd>lua require('jdtls').extract_method(true)<CR>
-- ]])
function Run()


end

-- vim.api.nvim_set_keymap("n", "<Leader>r", )
