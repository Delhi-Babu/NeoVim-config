 -- ┌────────────────────────────────┐
 -- │░█▀▀░█▀▀░▀█▀░▀█▀░▀█▀░█▀█░█▀▀░█▀▀│
 -- │░▀▀█░█▀▀░░█░░░█░░░█░░█░█░█░█░▀▀█│
 -- │░▀▀▀░▀▀▀░░▀░░░▀░░▀▀▀░▀░▀░▀▀▀░▀▀▀│
 -- └────────────────────────────────┘

vim.cmd('set shortmess+=c')
vim.o.fileencoding = "utf-8"                                      --Set encoding to this format for powerline fonts as well as nerdtree devicons
vim.wo.number = true                                              --Display number
vim.cmd('syntax on')                                               --Some default syntax highlighter(good for vim and shell scripts)
vim.wo.wrap = false                                              --Don't break lines when window is small
vim.o.mouse = "a"                                             --Setting this makes mouse functional in alacritty terminal
-- vim.o.tabstop=2 softtabstop=2                             --Make tabs less and makes vim file less odd when saving
-- vim.o.shiftwidth=2                                        --Tab size with >> (greater than)
vim.cmd('set ts=4') -- Insert 2 spaces for a tab
vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation
vim.bo.smartindent = true                                         --Smart indent
vim.o.clipboard = "unnamedplus"                               --Copy contents from (NEO)Vim to other and other to (NEO)Vim
vim.cmd('set colorcolumn=80')                                      --Creates a column at 80th char
vim.o.splitbelow = true                                          --Horizontal splits will be in down
vim.o.splitright = true                                           --Vertical splits will be in right
-- vim.o.formatoptions-=cro                                  --Stop newline continuation of comments
vim.o.background="dark"                                     --Tell vim what the background color looks like
vim.bo.expandtab = true                                           --Converts tabs to spaces
vim.wo.cursorline = true                                          --Creates a line on the cursor line
vim.o.updatetime=50                                       --Makes the changes to be faster
vim.o.termguicolors = true                                --Set truecolors
vim.o.pumheight = 10 -- Makes popup menu smaller
-- vim.o.guifont=JetBrains\ Mono\ Bold\ Italic\ Nerd\ Font\ Complete:h13:w6.4
-- vim.o.guifont=sans:h13:w6.4
-- vim.o.guifont=Hack\ Nerd\ Font\ Mono
