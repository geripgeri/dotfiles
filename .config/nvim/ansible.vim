" Set Ansible Lint
augroup Linting
	autocmd!
    autocmd FileType yaml.ansible setlocal makeprg=ansible-lint
    autocmd FileType yaml.ansible setlocal errorformat='%f:%l: [%t%n] %m'
    " Automatically run linter on save.
    autocmd BufWritePost *.yml silent make! % | silent redraw!
augroup END
"autocmd QuickFixCmdPost [^l]* cwindow
