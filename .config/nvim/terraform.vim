" Format files on save
let g:terraform_fmt_on_save=1
" Set hcl files as terra filetype
autocmd BufRead,BufNewFile *.hcl set filetype=terraform
