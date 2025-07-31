local T = {
  win = 0,
  toggle = true,
  previous_height = 0,
  previous_width = 0
}

function T:toggle()
  self.win = vim.api.nvim_get_current_win()

  if (self.toggle) then
    -- Save height and width
    self.previous_height = vim.api.nvim_win_get_height(self.win)
    self.previous_width = vim.api.nvim_win_get_width(self.win)
    -- Turn window fullscreen
    vim.api.nvim_command([[execute "normal! \<C-w>|"]])
    vim.api.nvim_command([[execute "normal! \<C-w>_"]])
  else
    -- Back to previous size
    vim.api.nvim_win_set_height(self.win, self.previous_height)
    vim.api.nvim_win_set_width(self.win, self.previous_width)
  end

  -- toggle
  self.toggle = not self.toggle
end

vim.api.nvim_create_user_command('Zoom', function ()
    T:toggle()
end, {})
