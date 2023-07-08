-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/casis/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/casis/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/casis/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/casis/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/casis/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n¨\4\0\0\6\0\15\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0034\4\5\0005\5\a\0>\5\1\0045\5\b\0>\5\2\0045\5\t\0>\5\3\0045\5\n\0>\5\4\4=\4\v\3=\3\f\0025\3\r\0=\3\14\2B\0\2\1K\0\1\0\thide\1\0\3\vwinbar\2\ftabline\2\15statusline\2\vconfig\rshortcut\1\0\4\vaction\23Telescope dotfiles\ngroup\vNumber\tdesc\17î¬© dotfiles\bkey\6d\1\0\4\vaction\18Telescope app\ngroup\19DiagnosticHint\tdesc\rï€• Apps\bkey\6a\1\0\6\ticon\tîˆ• \ngroup\nLabel\bkey\6f\ficon_hl\14@variable\vaction\25Telescope find_files\tdesc\nFiles\1\0\4\vaction\16Lazy update\ngroup\14@property\tdesc\16ó°Š³ Update\bkey\6u\16week_header\1\0\0\1\0\1\venable\2\1\0\4\17disable_move\1\ntheme\nhyper\23change_to_vcs_root\1\18shortcut_type\vletter\nsetup\14dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/casis/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/freddiehaddad/feline.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nä\3\0\0\6\0\24\0A6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\22\0004\4\15\0009\5\3\0009\5\4\0059\5\5\5>\5\1\0049\5\3\0009\5\6\0059\5\a\5>\5\2\0049\5\3\0009\5\b\0059\5\t\5>\5\3\0049\5\3\0009\5\n\0059\5\v\5>\5\4\0049\5\3\0009\5\b\0059\5\f\5>\5\5\0049\5\3\0009\5\b\0059\5\r\5>\5\6\0049\5\3\0009\5\b\0059\5\14\5>\5\a\0049\5\3\0009\5\6\0059\5\15\5>\5\b\0049\5\3\0009\5\6\0059\5\16\5>\5\t\0049\5\3\0009\5\6\0059\5\17\5>\5\n\0049\5\3\0009\5\6\0059\5\18\5>\5\v\0049\5\3\0009\5\6\0059\5\19\5>\5\f\0049\5\3\0009\5\4\0059\5\20\5>\5\r\0049\5\3\0009\5\4\0059\5\21\5>\5\14\4=\4\23\3B\1\2\1K\0\1\0\fsources\1\0\0\14csharpier\17clang_format\rjsonlint\vflake8\fcpplint\rcppcheck\16clang_check\19ts_node_action\rgitsigns\vcspell\nspell\15completion\reslint_d\17code_actions\veslint\16diagnostics\vstylua\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0" },
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["shade.nvim"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/shade.nvim",
    url = "https://github.com/sunjon/shade.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/casis/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nä\3\0\0\6\0\24\0A6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\22\0004\4\15\0009\5\3\0009\5\4\0059\5\5\5>\5\1\0049\5\3\0009\5\6\0059\5\a\5>\5\2\0049\5\3\0009\5\b\0059\5\t\5>\5\3\0049\5\3\0009\5\n\0059\5\v\5>\5\4\0049\5\3\0009\5\b\0059\5\f\5>\5\5\0049\5\3\0009\5\b\0059\5\r\5>\5\6\0049\5\3\0009\5\b\0059\5\14\5>\5\a\0049\5\3\0009\5\6\0059\5\15\5>\5\b\0049\5\3\0009\5\6\0059\5\16\5>\5\t\0049\5\3\0009\5\6\0059\5\17\5>\5\n\0049\5\3\0009\5\6\0059\5\18\5>\5\v\0049\5\3\0009\5\6\0059\5\19\5>\5\f\0049\5\3\0009\5\4\0059\5\20\5>\5\r\0049\5\3\0009\5\4\0059\5\21\5>\5\14\4=\4\23\3B\1\2\1K\0\1\0\fsources\1\0\0\14csharpier\17clang_format\rjsonlint\vflake8\fcpplint\rcppcheck\16clang_check\19ts_node_action\rgitsigns\vcspell\nspell\15completion\reslint_d\17code_actions\veslint\16diagnostics\vstylua\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'dashboard-nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
