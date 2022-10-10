-- When writing or reading a buffer, and on changes in insert and
-- normal mode (after 500ms; no delay when writing).
vim.fn['neomake#configure#automake']('nrwi', 500)

-- When calling :Neomake manually (or automatically through neomake#configure#automake (see above))
-- it will populate the window's location list with any issues that get reported by the maker(s).
vim.api.nvim_set_var("neomake_open_list", 2)
