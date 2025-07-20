local v = vim

local lazypath = v.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (v.uv or v.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = v.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo})
    if v.v.shell_error ~= 0 then
        v.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n","ErrorMSG" },
            { out, "WarningMSG"},
            { "\nPress any key to exit ..."}
        }, true, {})
        v.fn.getchar()
        os.exit(1)
    end
end

v.g.mapleader = " "
v.g.maplocalleader = "\\"

v.opt.rtp:prepend(lazypath)

-- require("lazy").setup({
--     spec = { import = "plugins" },
--
--     checker = { enabled = true }
-- })

require("lazy").setup(require("plugins"))
