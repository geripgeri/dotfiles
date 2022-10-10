-- Python
require'lspconfig'.pylsp.setup{ on_attach = on_attach }

-- Bash
require'lspconfig'.bashls.setup{ on_attach = on_attach }

-- Ruby
require'lspconfig'.solargraph.setup{ on_attach = on_attach }

-- Groovy 
require'lspconfig'.groovyls.setup{
    cmd = { "java", "-jar", "/usr/share/java/groovy-language-server/groovy-language-server-all.jar" },
    filetypes = { "groovy", "Jenkinsfile" },
    on_attach = on_attach
}

-- Terraform
require'lspconfig'.terraformls.setup {
    filetypes = { "tf", "terraform", "hcl" },
    on_attach = on_attach
}

-- Lua
-- Set the path to the sumneko installation
local sumneko_root_path = "/usr/share/lua-language-serve"
local sumneko_binary = "/usr/bin/lua-language-server"

require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
    },
  },
  on_attach = on_attach
}

-- Ansible
require'lspconfig'.ansiblels.setup{ on_attach = on_attach }
