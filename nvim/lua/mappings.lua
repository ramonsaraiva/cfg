function set_keymap(mode, from, to)
    local opts = {noremap = true, silent = false}
    vim.api.nvim_set_keymap(mode, from, to, opts)
end

function nvim_set_keymap(mode, from, to, opts)
    vim.api.nvim_set_keymap(mode, from, to, opts)
end

-- base
set_keymap('n', ' ', 'viw')
set_keymap('n', '<leader>a', '=ip')
set_keymap('n', '<leader>q', '<cmd>q<cr>')
set_keymap('n', '<leader>w', '<cmd>w<cr>')
set_keymap('n', '<leader>/', '<cmd>nohlsearch<cr>')
set_keymap('n', '<leader>v', '<c-w>v<cr>')
set_keymap('n', '<leader>h', '<c-w>n<cr>')
set_keymap('n', '<s-l>', 'gt')
set_keymap('n', '<s-h>', 'gT')
set_keymap('n', '<c-l>', '<c-w>l')
set_keymap('n', '<c-h>', '<c-w>h')
set_keymap('n', '<c-j>', '<c-w>j')
set_keymap('n', '<c-k>', '<c-w>k')
set_keymap('n', '<leader>d', 'iimport pdb; pdb.set_trace()<esc>')
set_keymap('n', '<leader>dd', 'iimport ipdb; ipdb.set_trace()<esc>')

-- plugins
set_keymap('n', '<leader>r', '<cmd>Ranger<cr>')
set_keymap('n', '<leader>n', '<cmd>NERDTree<cr>')
set_keymap('n', '<leader>t', '<cmd>TagbarToggle<cr>')
set_keymap('n', '<leader>gb', '<cmd>Git blame<cr>')
set_keymap('n', '<leader>go', '<cmd>Goyo<cr>')
set_keymap('n', '<leader>do', '<cmd>DockerToolsOpen<cr>')
set_keymap('n', '<leader>dc', '<cmd>DockerToolsClose<cr>')
set_keymap('n', '<C-p>', '<cmd>Telescope find_files<cr>')
set_keymap('n', '<leader>o', ':Octo ')
set_keymap('n', '<leader>f', ':Ack ')
set_keymap('n', '<c-t>n', '<cmd>TestNearest<cr>')
set_keymap('n', '<c-t>f', '<cmd>TestFile<cr>')
set_keymap('n', '<c-t>l', '<cmd>TestLast<cr>')
set_keymap('n', '<c-t>v', '<cmd>TestVisit<cr>')

-- config files shortcuts
set_keymap('n', '<leader>rc', '<cmd>vsplit ~/.cfg/nvim/lua/init.lua<cr>')
set_keymap('n', '<leader>kc', '<cmd>vsplit ~/.cfg/kitty.conf<cr>')
-- noremap <leader>pr :!cp -rf ~/.cfg/.pr_template.md /tmp/.pr_template.md<cr><cr>:vsplit /tmp/.pr_template.md<cr>:Goyo<cr>
-- noremap <leader>jt :!cp -rf ~/.cfg/.jira_template.md /tmp/.jira_template.md<cr><cr>:vsplit /tmp/.jira_template.md<cr>:Goyo<cr>

