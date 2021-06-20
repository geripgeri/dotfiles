-- Python
require'lspconfig'.pyls.setup{ on_attach=on_attach }

-- Bash
require'lspconfig'.bashls.setup{ on_attach=on_attach }

-- Ruby
require'lspconfig'.solargraph.setup{ on_attach=on_attach }

-- Groovy 
require'lspconfig'.groovyls.setup{
    cmd = { "java", "-jar", "/usr/share/java/groovy-language-server/groovy-language-server-all.jar" },
    filetypes = { "groovy", "Jenkinsfile" },
    on_attach = on_attach, 
}

-- Terraform
require'lspconfig'.terraformls.setup {
    on_attach = on_attach,
    filetypes = { "tf", "terraform", "hcl" }
}

-- Lua
local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
local sumneko_root_path = vim.fn.stdpath('cache')..'/lspconfig/sumneko_lua/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

require'lspconfig'.sumneko_lua.setup{ on_attach=on_attach }
