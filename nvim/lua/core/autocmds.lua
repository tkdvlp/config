U.nvim_create_augroup({
  ftplugin = {
    { 'FileType', 'man', 'setl laststatus=0 noruler' },
    { 'FileType', 'NvimTree', 'setl scl=no' },
    { 'FileType', 'vim,lua,css,javascript', 'setl sw=2' },
    { 'TermOpen', 'term://*', 'setl nornu nonu nocul so=0 scl=no' },
  },

  on_save = { { 'BufWritePost', '*.vim,*.lua', 'source %' } },

  xresources = {
    { 'BufWritePost', '*Xresources,*Xdefaults,*xprofile,*xsession', 'silent! !xrdb -load %' },
  },

  bashrc = {
    { 'BufWritePost', '*bashrc', 'silent! source %' },
  },

  zshrc = {
    { 'BufWritePost', '*zshrc', 'silent! source %' },
  },

  zshenv = {
    { 'BufWritePost', '*zshenv', 'silent! source %' },
  },

  zprofile = {
    { 'BufWritePost', '*zprofile', 'silent! source %' },
  },

  terminal = {
    { 'TermOpen', '*', 'setlocal nonumber | setlocal signcolumn=no' },
  },

  open_in_split_from_qf = {
    { 'FileType', 'qf', 'nmap <buffer> <leader><Enter> <C-w><Enter><C-w>L' },
  },

  sneak = {
    {
      'ColorScheme',
      ' ',
      'hi! Sneak guifg=black guibg=aqua ctermfg=black ctermbg=green',
    },
  },

  -- window_management = {
  --  { 'WinEnter', '*', ':call WindowManagement#Handle_Win_Enter()' }
  -- { 'WinLeave', '*',  ':call WindowManagement#Handle_Win_Leave()' }
  -- }
})
