local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end



nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  capabilities = capabilities
}

-- saga.init_lsp_saga {
--   error_sign = '',
--   warn_sign = '',
--   hint_sign = '',
--   infor_sign = '',
--   border_style = "round",
-- }




-- require'lspconfig'.clangd.setup{}
-- require "lsp_signature".setup()
-- vim.o.completeopt = 'menuone,noselect'
-- local cmp = require'cmp'
-- local luasnip = require("luasnip")
-- local lspkind = require('lspkind')
-- local nvim_lsp = require('lspconfig')
-- local protocol = require'vim.lsp.protocol'
-- 
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(
--   vim.lsp.protocol.make_client_capabilities()
-- )
-- 
-- local has_any_words_before = function()
--   if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
--     return false
--   end
--   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
--   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
-- end
-- 
-- local on_attach = function(client, bufnr)
--   local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
--   local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
-- end
-- 
-- local source_mapping = {
--   buffer = "◉ Buffer",
--   nvim_lsp = "👐 LSP",
--   nvim_lua = "🌙 Lua",
--   cmp_tabnine = "💡 Tabnine",
--   path = "🚧 Path",
--   luasnip = "🌜 LuaSnip"
-- }
-- 
-- cmp.setup({
--   sources = {
--     { name = 'nvim_lsp' },
--     { name = 'luasnip' },
--     { name = 'buffer' },
--     { name = 'path' },
--     { name = 'nvim_lua' },
--   },
-- 
--   formatting = {
--     format = function(entry, vim_item)
--       vim_item.kind = lspkind.presets.default[vim_item.kind]
--       local menu = source_mapping[entry.source.name]
--       if entry.source.name == 'cmp_tabnine' then
--         if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
--           menu = entry.completion_item.data.detail .. ' ' .. menu
--         end
--         vim_item.kind = ''
--       end
--       vim_item.menu = menu
--       return vim_item
--     end
--   },
-- 
--   snippet = {
--     expand = function(args)
--       require('luasnip').lsp_expand(args.body)
--     end,
--   },
--   mapping = {
-- 
--     ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
--     ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
--     ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
--     ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
--     ['<C-d>'] = cmp.mapping.scroll_docs(-4),
--     ['<C-f>'] = cmp.mapping.scroll_docs(4),
--     ['<C-Space>'] = cmp.mapping.complete(),
--     ['<C-e>'] = cmp.mapping.close(),
--     ['<CR>'] = cmp.mapping.confirm({
--       behavior = cmp.ConfirmBehavior.Replace,
--       select = true,
--     }),
-- 
--     ['<Tab>'] = function(fallback)
--       if cmp.visible() then
--         cmp.select_next_item()
--       elseif luasnip.expand_or_jumpable() then
--         vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
--       else
--         fallback()
--       end
--     end,
--     ['<S-Tab>'] = function(fallback)
--       if cmp.visible() then
--         cmp.select_prev_item()
--       elseif luasnip.jumpable(-1) then
--         vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
--       else
--         fallback()
--       end
--     end,
--   },
-- })
-- 
-- nvim_lsp.tsserver.setup {
--   on_attach = on_attach,
--   filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
--   capabilities = capabilities
-- }
-- 
-- -- saga.init_lsp_saga {
-- --   error_sign = '',
-- --   warn_sign = '',
-- --   hint_sign = '',
-- --   infor_sign = '',
-- --   border_style = "round",
-- -- }
-- 
-- 
-- -- nvim_lsp.diagnosticls.setup {
-- --   on_attach = on_attach,
-- --   filetypes = { 'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'markdown', 'pandoc' },
-- --   init_options = {
-- --     linters = {
-- --       eslint = {
-- --         command = 'eslint_d',
-- --         rootPatterns = { '.git' },
-- --         debounce = 100,
-- --         args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
-- --         sourceName = 'eslint_d',
-- --         parseJson = {
-- --           errorsRoot = '[0].messages',
-- --           line = 'line',
-- --           column = 'column',
-- --           endLine = 'endLine',
-- --           endColumn = 'endColumn',
-- --           message = '[eslint] ${message} [${ruleId}]',
-- --           security = 'severity'
-- --         },
-- --         securities = {
-- --           [2] = 'error',
-- --           [1] = 'warning'
-- --         }
-- --       },
-- --     },
-- --     filetypes = {
-- --       javascript = 'eslint',
-- --       javascriptreact = 'eslint',
-- --       typescript = 'eslint',
-- --       typescriptreact = 'eslint',
-- --     },
-- --     formatters = {
-- --       eslint_d = {
-- --         command = 'eslint_d',
-- --         rootPatterns = { '.git' },
-- --         args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
-- --         rootPatterns = { '.git' },
-- --       },
-- --       prettier = {
-- --         command = 'prettier_d_slim',
-- --         rootPatterns = { '.git' },
-- --         -- requiredFiles: { 'prettier.config.js' },
-- --         args = { '--stdin', '--stdin-filepath', '%filename' }
-- --       }
-- --     },
-- --     formatFiletypes = {
-- --       css = 'prettier',
-- --       javascript = 'prettier',
-- --       javascriptreact = 'prettier',
-- --       json = 'prettier',
-- --       scss = 'prettier',
-- --       less = 'prettier',
-- --       typescript = 'prettier',
-- --       typescriptreact = 'prettier',
-- --       json = 'prettier',
-- --       markdown = 'prettier',
-- --     }
-- --   }
-- -- }
-- 
-- -- icon
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--   vim.lsp.diagnostic.on_publish_diagnostics, {
--     underline = true,
--     virtual_text = {
--       spacing = 4,
--       prefix = ' '
--     }
--   }
-- )
-- 
-- require("luasnip/loaders/from_vscode").load()
