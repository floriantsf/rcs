vim.cmd([[
packadd packer.nvim
set nu
set rnu
set laststatus=2
set tabstop=2
set sw=2
set nu
set rnu
set cursorline
set termguicolors
hi CursorLine cterm = NONE
hi CursorLineNR cterm = NONE ctermbg = black
colorscheme dracula
set list listchars=nbsp:⎵,tab:»\ 
tnoremap <Esc> <C-\><C-n>
]])

--[[
if packer_plugins["vim_fugitive"] and packer_plugins["vim_fugitive"].loaded then 
	print("Vim fugitive loaded")
else
	print("Fugitive not loaded")
end
--]]

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


function beast_c(x)
	local file_name = vim.fn.expand("%")
	local output = vim.fn.system("gcc " .. file_name .. " -o" .. x)
	print(output)
	return output
end

function orange_cpp(x)
	local file_name = vim.fn.expand("%")
	local output = vim.fn.system("g++ " .. file_name .. " -o " .. x)
	print(output)
	return output
end



function all_mighty_one()
	local ft = vim.bo.filetype
	local func_table = 
	{
		cpp = orange_cpp,
		c = beast_c,
		['?'] = "unknown"
	}
	local file_name = vim.fn.expand("%")
	print("Filetype : " .. ft)
	print("Filename : " .. file_name)
	local time = string.len(file_name)
	local out_name = string.sub(file_name, 0, string.len(file_name) - string.len(ft) - 1)
	print("Out : " .. out_name)

	local s = type(func_table[ft]) == "function" and func_table[ft](out_name) or func_table[ft] or "error during mesh parsing"
	print(s)
end



map('n', '<F8>', ':lua all_mighty_one()<CR>', {})

return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}
	use {'tpope/vim-fugitive'}
	use {'scrooloose/nerdtree'}
	use {'vim-airline/vim-airline'}
	use {'vim-airline/vim-airline-themes'}
	use {'dracula/vim'}
	use {'morhetz/gruvbox'}
	use {'tomasr/molokai'}
	use {'jonathanfilip/vim-lucius'}
end)

