" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/donofdestroy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/donofdestroy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/donofdestroy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/donofdestroy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/donofdestroy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/colorbuddy.vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  illumination = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/illumination"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["monokai.nvim"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/monokai.nvim"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["one-nvim"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/one-nvim"
  },
  onebuddy = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/onebuddy"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  sniprun = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/sniprun"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  vimspector = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/vimspector"
  },
  ["zephyr-nvim"] = {
    loaded = true,
    path = "/home/donofdestroy/.local/share/nvim/site/pack/packer/start/zephyr-nvim"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
