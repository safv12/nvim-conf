return {
  {'preservim/nerdtree',
   config = function ()
     vim.keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>", {noremap = true})
     vim.keymap.set("n", "<localleader>f", ":NERDTreeFind<CR>", {noremap = true})
   end}
}
