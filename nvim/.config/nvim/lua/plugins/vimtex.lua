return {
  "lervag/vimtex",
  ft = "tex",
  event = "VimEnter",
  keys = {
		{ "<leader>v", "<plug>(vimtex-compile)", desc = "toggle continuous LaTeX compiling" },
		{ "<leader>;", "<plug>(vimtex-view)", desc = "Vimtex View" },
  },
  config = function()
    -- This is necessary for VimTeX to load properly. The "indent" is optional.
    -- Note that most plugin managers will do this automatically.
    vim.cmd('filetype plugin indent on')

    -- This enables Vim's and Neovim's syntax-related features. Without this, some
    -- VimTeX features will not work (see ":help vimtex-requirements" for more
    -- info).
    vim.cmd('syntax enable')

    -- Viewer options: One may configure the viewer either by specifying a built-in
    -- viewer method:
    -- vim.g.vimtex_view_method = 'sioyek'
    -- vim.g.vimtex_view_sioyek_exe = 'sioyek.exe'
    -- vim.g.vimtex_callback_progpath = 'wsl nvim'

    -- VimTeX uses latexmk as the default compiler backend. If you use it, which is
    -- strongly recommended, you probably don't need to configure anything. If you
    -- want another compiler backend, you can change it as follows. The list of
    -- supported backends and further explanation is provided in the documentation,
    -- see ":help vimtex-compiler".
    vim.g.vimtex_compiler_method = 'latexmk'
    -- vim.g.vimtex_compiler_progpath = 'wsl nvim'
    -- vim.g.vimtex_view_method = 'sioyek'
    -- vim.g.vimtex_view_sioyek_exe = 'sioyek.exe'
    -- vim.g.vimtex_callback_progpath = 'wsl nvim'
    -- vim.g.vimtex_view_sioyek_options = '--reuse-instance --inverse-search "wsl sioyek --inverse-search %1 %2"'
    -- vim.g.vimtex_view_sioyek_options = '--inverse-search "wsl nvim --headless -c \"VimtexInverseSearch %2 '%1'\"" --forward-search-file @tex --forward-search-line @line'

    -- Most VimTeX mappings rely on localleader and this can be changed with the
    -- following line. The default is usually fine and is the symbol "\".
    -- vim.g.maplocalleader = ','

    vim.g.vimtex_imaps_enabled = 0
  end
}
