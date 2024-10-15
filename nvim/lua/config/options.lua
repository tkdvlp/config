local opt = vim.opt
-- local highlight = vim.highlight

-- Misc
-- disable some health checks
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python_provider = 0
-- g.loaded_python3_provider = 0

vim.g.python_host_skip_check = 1
vim.g.python3_host_skip_check = 1
vim.g.python2_host_prog = '/usr/bin/python2'
-- vim.g.python3_host_prog = '/usr/bin/python3'

-- key
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- always use system clipboard
opt.clipboard = 'unnamedplus'

-- Include current directory in path
opt.path = '.'

-- Case insensitive :search etc.
opt.wildignorecase = true
opt.wildignore = '.git,**/node_modules/**'

-- Add suffix when looking for imported files
-- opt.suffixesadd=.js,.jsx,.ts,.tsx'
-- opt.include = 'from'

-- Look for project specific settings in /project/.nvimrc
opt.exrc = true

-- Prevent :autocmd unless owned by me
opt.spelllang = 'en_us,cjk'

-- Enable mouse.
opt.mouse = 'a'

-- opt.wildmenu
opt.wildoptions = 'pum'

-- Only redraw when needed
opt.lazyredraw = true

-- Highlight matching [{()}]
opt.showmatch = true
opt.completeopt = 'menu,menuone,noselect'

-- Use the clipboard register
opt.clipboard = 'unnamedplus'

opt.list = true
opt.listchars = 'nbsp:¬,tab:>-,extends:»,precedes:«,trail:•'

-- Show the cursor position all the time.
opt.ruler = true

-- Display incomplete commands.
opt.showcmd = true

-- Enable ~ operator.
opt.tildeop = true

-- Timeout Leader after 800 ms.
opt.timeoutlen = 800

-- Enable virtualedit when in Visual Block mode.
opt.virtualedit = 'block'

-- Allow for unsaved changes when switchin buffers (use confirm if you want to be prompted for save
opt.hidden = true

-- Better display for messages
opt.cmdheight = 2

-- don't give ins-completion-menu messages.
-- set shortmess+=c
opt.modeline = false
opt.scrolloff = 5

-- Backup
-- Enable backup of files
opt.backup = true
opt.writebackup = true
opt.backupdir = '~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp'
opt.backupskip = '/tmp/*,/private/tmp/*'
opt.directory = '~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp'

-- Undo
-- Keep a persistent backup file.
opt.undofile = true
opt.undodir = '~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp'

-- Folding
opt.foldmethod = 'manual'
opt.foldtext = 'NeatFoldText()'

-- Colors
opt.syntax = 'ON'
opt.termguicolors = true
opt.background = dark
-- vim.cmd [[colorscheme PaperColor]]

-- Disable highlight current row
opt.cursorline = false

-- Dim inactive buffer
vim.cmd([[
highlight ActiveWindow guibg=#13141c
highlight InactiveWindow guibg=#1a1b26
]])
-- highlight('VertSplit', { guibg = '#000000', guifg = '#444444' })
opt.winhighlight = 'Normal:ActiveWindow,NormalNC:InactiveWindow'
-- highlight('CursorLine', { guifg = '#ff0000' }
-- highlight('CursorLineNR', { guifg = '#e900ff' }

vim.cmd([[
highlight Comment guifg=#666666 gui=italic cterm=italic
]])
-- highlight('SignColumn', { guibg = '#000000' }
-- highlight('LineNr', { guibg = '#000000'}

-- Tabs (whitespace settings
-- Render Tabs using this many spaces.
opt.tabstop = 4
opt.softtabstop = 0

-- Insert spaces when TAB is pressed.
opt.expandtab = true

-- Indentation amount for < and > commands.
opt.shiftwidth = 2

-- Prevents inserting two spaces after punctuation on a join (J).
opt.joinspaces = false

-- Numbers that start with a zero will be considered to be octal
opt.nrformats = 'octal'

opt.smartindent = true

-- Line numbers
-- Show line numbers
opt.number = true

-- Gutter width for line numbers
opt.numberwidth = 3
opt.signcolumn = 'yes'

-- Search
opt.grepprg = 'ag\\ --vimgrep\\ --nogroup\\ --nocolor'

-- Make searching case insensitive.
-- opt.ignorecase = true

-- Use case sensitive search when query has mixed case.
opt.smartcase = true

-- Use 'g' flag by default with :s/foo/bar/.
opt.gdefault = true

-- Substitute
-- Shows the effects of a command incrementally, as you type.
opt.inccommand = 'nosplit'

-- Splits
-- Open vertical splits to the right
opt.splitright = true

-- Open horizontal splits below
-- opt.splitbelow = true

-- Open diff in vertical split
opt.diffopt = 'vertical,indent-heuristic,algorithm:patience'

-- Tags
opt.tags = './.tags,.tags'
