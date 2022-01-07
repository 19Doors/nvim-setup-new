-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/sakaar/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/sakaar/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/sakaar/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/sakaar/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/sakaar/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  Colorschemes = {
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/Colorschemes",
    url = "https://github.com/LunarVim/Colorschemes"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/sakaar/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/home/sakaar/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    after_files = { "/home/sakaar/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    after_files = { "/home/sakaar/.local/share/nvim/site/pack/packer/opt/cmp-vsnip/after/plugin/cmp_vsnip.vim" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["dashboard-nvim"] = {
    config = { "require('starting.dashboardl')" },
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["fzf.vim"] = {
    config = { "require('utils/fzfl')" },
    keys = { { "", "n" }, { "", "<Leader>of" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["hop.nvim"] = {
    config = { "require('utils.hopl')" },
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "require('lsp/lspsagal')" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "require('theme/statuslinel')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["null-ls.nvim"] = {
    config = { "require('formatter/nullsl')" },
    keys = { { "", "n" }, { "", "<leader>fo" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    after = { "cmp-vsnip", "cmp-cmdline", "nvim-jdtls", "vim-vsnip", "cmp-path", "cmp-buffer" },
    config = { "require('lsp/cmpl')" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    config = { "require('utils.commentslua')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-jdtls"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    after = { "lspsaga.nvim" },
    loaded = true,
    only_config = true
  },
  ["nvim-treesitter"] = {
    config = { "require('theme/syntaxhigh')" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "require('theme/theme')" },
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["presence.nvim"] = {
    config = { "require('discord.discord')" },
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/presence.nvim",
    url = "https://github.com/andweeb/presence.nvim"
  },
  tagbar = {
    config = { "require('tagbarl')" },
    keys = { { "", "n" }, { "", "<C-b>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "require('toggleterml')" },
    keys = { { "", "n" }, { "", "<Leader>t" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    config = { "require('lsp/troublel')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-move"] = {
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/vim-move",
    url = "https://github.com/matze/vim-move"
  },
  ["vim-vsnip"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/opt/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vscode-java"] = {
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/vscode-java",
    url = "https://github.com/redhat-developer/vscode-java"
  },
  ["wal.vim"] = {
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/wal.vim",
    url = "https://github.com/dylanaraps/wal.vim"
  },
  ["which-key.nvim"] = {
    config = { "require('whichkeyl')" },
    loaded = true,
    path = "/home/sakaar/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
require('utils.hopl')
time([[Config for hop.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require('lsp/lspconfig')
time([[Config for nvim-lspconfig]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
require('whichkeyl')
time([[Config for which-key.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
require('theme/theme')
time([[Config for onedark.nvim]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
require('starting.dashboardl')
time([[Config for dashboard-nvim]], false)
-- Config for: presence.nvim
time([[Config for presence.nvim]], true)
require('discord.discord')
time([[Config for presence.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd cmp-nvim-lsp ]]
vim.cmd [[ packadd nvim-cmp ]]

-- Config for: nvim-cmp
require('lsp/cmpl')

vim.cmd [[ packadd cmp-cmdline ]]
vim.cmd [[ packadd cmp-path ]]
vim.cmd [[ packadd vim-vsnip ]]
vim.cmd [[ packadd cmp-vsnip ]]
vim.cmd [[ packadd cmp-buffer ]]
vim.cmd [[ packadd nvim-jdtls ]]
time([[Sequenced loading]], false)
-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> n <cmd>lua require("packer.load")({'tagbar'}, { keys = "n", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>fo <cmd>lua require("packer.load")({'null-ls.nvim'}, { keys = "<lt>leader>fo", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Leader>of <cmd>lua require("packer.load")({'fzf.vim'}, { keys = "<lt>Leader>of", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> n <cmd>lua require("packer.load")({'null-ls.nvim'}, { keys = "n", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Leader>t <cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "<lt>Leader>t", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> n <cmd>lua require("packer.load")({'fzf.vim'}, { keys = "n", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-b> <cmd>lua require("packer.load")({'tagbar'}, { keys = "<lt>C-b>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> n <cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "n", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'nvim-treesitter', 'trouble.nvim', 'lualine.nvim', 'lspsaga.nvim', 'nvim-comment'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
