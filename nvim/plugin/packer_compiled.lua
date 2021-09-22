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
local package_path_str = "/home/ramon/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ramon/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ramon/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ramon/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ramon/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
  ["ack.vim"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/ack.vim"
  },
  ["bclose.vim"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/bclose.vim"
  },
  black = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/opt/black"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/opt/emmet-vim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  ["markdown-preview.nvim"] = {
    commands = { "cd app && yarn install" },
    loaded = false,
    needs_bufread = false,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  nerdtree = {
    commands = { "NERDTreeToggle" },
    loaded = false,
    needs_bufread = false,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/opt/nerdtree"
  },
  ["octo.nvim"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/octo.nvim"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["python-syntax"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/opt/python-syntax"
  },
  rainbow = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/rainbow"
  },
  ["ranger.vim"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/ranger.vim"
  },
  semshi = {
    commands = { ":UpdateRemotePlugins" },
    loaded = false,
    needs_bufread = false,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/opt/semshi"
  },
  supertab = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/supertab"
  },
  tabular = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/tabular"
  },
  tagbar = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-docker-tools"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/vim-docker-tools"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-gutentags"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/vim-gutentags"
  },
  ["vim-jinja"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/vim-jinja"
  },
  ["vim-js"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/opt/vim-js"
  },
  ["vim-jsx-pretty"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/opt/vim-jsx-pretty"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/start/vim-test"
  },
  ["yats.vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/ramon/.local/share/nvim/site/pack/packer/opt/yats.vim"
  }
}

time([[Defining packer_plugins]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NERDTreeToggle lua require("packer.load")({'nerdtree'}, { cmd = "NERDTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[au CmdUndefined cd app && yarn install ++once lua require"packer.load"({'markdown-preview.nvim'}, {}, _G.packer_plugins)]])
pcall(vim.cmd, [[au CmdUndefined :UpdateRemotePlugins ++once lua require"packer.load"({'semshi'}, {}, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-js', 'vim-jsx-pretty', 'yats.vim'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'black', 'python-syntax'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType html,jinja ++once lua require("packer.load")({'emmet-vim'}, { ft = "html,jinja" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/ramon/.local/share/nvim/site/pack/packer/opt/vim-js/ftdetect/javascript.vim]], true)
vim.cmd [[source /home/ramon/.local/share/nvim/site/pack/packer/opt/vim-js/ftdetect/javascript.vim]]
time([[Sourcing ftdetect script at: /home/ramon/.local/share/nvim/site/pack/packer/opt/vim-js/ftdetect/javascript.vim]], false)
time([[Sourcing ftdetect script at: /home/ramon/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]], true)
vim.cmd [[source /home/ramon/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /home/ramon/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /home/ramon/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]], true)
vim.cmd [[source /home/ramon/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]]
time([[Sourcing ftdetect script at: /home/ramon/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
