-- Wanted to have password protected encrypted files:
-- GPT gave GPG as suggestion but was overkill for noob like me
-- found this reddit thread: https://www.reddit.com/r/neovim/comments/dy9xat/encrypted_files_with_password_prompt/
-- from there went to the wiki from the comment and asked GPT to give init.lua equivalentand
-- and it ended up working _/\_ (this is a pray emoji)
local cpt_group = vim.api.nvim_create_augroup("CPT", { clear = true })

vim.api.nvim_create_autocmd("BufReadPre", {
  group = cpt_group,
  pattern = "*.cpt",
  callback = function()
    vim.opt_local.binary = true
    vim.opt_local.viminfo = ""
    vim.opt_local.swapfile = false
  end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
  group = cpt_group,
  pattern = "*.cpt",
  callback = function()
    local pass = vim.fn.inputsecret("Password: ")
    vim.env.CPT_PASS = pass
    vim.cmd("silent 1,$!ccrypt -cb -E CPT_PASS")
    vim.opt_local.binary = false
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = cpt_group,
  pattern = "*.cpt",
  callback = function()
    vim.opt_local.binary = true
    vim.cmd("silent! 1,$!ccrypt -e -E CPT_PASS")
  end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
  group = cpt_group,
  pattern = "*.cpt",
  callback = function()
    vim.cmd("silent! u")
    vim.opt_local.binary = false
  end,
})
