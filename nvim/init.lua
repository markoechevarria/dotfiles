vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.cursorline = true
vim.opt.conceallevel = 0
vim.opt.swapfile = false

vim.g.mapleader = " "

vim.keymap.set({'v', 'x'}, 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set({'v', 'x'}, 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', {desc = 'Toggle file explorer'})

vim.keymap.set('n', '<leader>q', ':bd<CR>', {desc = 'Close current buffer'})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({"git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                contrast = "hard",
                palette_overrides = {dark0_hard = "#0E1018"},
                overrides = {
                    NormalFloat = {fg = "#ebdbb2", bg = "#504945"},
                    Comment = {fg = "#81878f", italic = true, bold = true},
                    Define = {link = "GruvboxPurple"},
                    Macro = {link = "GruvboxPurple"},
                    ["@constant.builtin"] = {link = "GruvboxPurple"},
                    ["@storageclass.lifetime"] = {link = "GruvboxAqua"},
                    ["@text.note"] = {link = "TODO"},
                    ["@namespace.rust"] = {link = "Include"},
                    ["@punctuation.bracket"] = {link = "GruvboxOrange"},
                    texMathDelimZoneLI = {link = "GruvboxOrange"},
                    texMathDelimZoneLD = {link = "GruvboxOrange"},
                    luaParenError = {link = "luaParen"},
                    luaError = {link = "NONE"},
                    ContextVt = {fg = "#878788"},
                    CopilotSuggestion = {fg = "#878787"},
                    CocCodeLens = {fg = "#878787"},
                    CocWarningFloat = {fg = "#dfaf87"},
                    CocInlayHint = {fg = "#ABB0B6"},
                    CocPumShortcut = {fg = "#fe8019"},
                    CocPumDetail = {fg = "#fe8019"},
                    DiagnosticVirtualTextWarn = {fg = "#dfaf87"},
                    Folded = {fg = "#fe8019", bg = "#0E1018", italic = true},
                    SignColumn = {bg = "#fe8019"},
                    DiffAdd = {
                        bold = true,
                        reverse = false,
                        fg = "",
                        bg = "#2a4333"
                    },
                    DiffChange = {
                        bold = true,
                        reverse = false,
                        fg = "",
                        bg = "#333841"
                    },
                    DiffDelete = {
                        bold = true,
                        reverse = false,
                        fg = "#442d30",
                        bg = "#442d30"
                    },
                    DiffText = {
                        bold = true,
                        reverse = false,
                        fg = "",
                        bg = "#213352"
                    },
                    StatusLine = {bg = "#ffffff", fg = "#0E1018"},
                    StatusLineNC = {bg = "#3c3836", fg = "#0E1018"},
                    CursorLineNr = {fg = "#fabd2f", bg = ""},
                    GruvboxOrangeSign = {fg = "#dfaf87", bg = "#0E1018"},
                    GruvboxAquaSign = {fg = "#8EC07C", bg = "#0E1018"},
                    GruvboxGreenSign = {fg = "#b8bb26", bg = "#0E1018"},
                    GruvboxRedSign = {fg = "#fb4934", bg = "#0E1018"},
                    GruvboxBlueSign = {fg = "#83a598", bg = "#0E1018"},
                    WilderMenu = {fg = "#ebdbb2", bg = ""},
                    WilderAccent = {fg = "#f4468f", bg = ""},
                    CocSemStruct = {link = "GruvboxYellow"},
                    CocSemKeyword = {fg = "", bg = "#0E1018"},
                    CocSemEnumMember = {fg = "", bg = "#0E1018"},
                    CocSemTypeParameter = {fg = "", bg = "#0E1018"},
                    CocSemComment = {fg = "", bg = "#0E1018"},
                    CocSemMacro = {fg = "", bg = "#0E1018"},
                    CocSemVariable = {fg = "", bg = "#0E1018"},
                    CocSemFunction = {fg = "", bg = "#0E1018"},
                    SnacksPicker = {fg = "#ebdbb2", bg = "#0E1018"},
                    SnacksPickerBorder = {fg = "#ebdbb2", bg = "#0E1018"},
                    SnacksPickerBoxBorder = {fg = "#ebdbb2", bg = "#0E1018"},
                    SnacksNormal = {fg = "#ebdbb2", bg = "#0E1018"},
                    ["@neorg.markup.inline_macro"] = {link = "GruvboxGreen"}
                }
            })
            vim.cmd.colorscheme("gruvbox")
        end
    },
  { import = "plugins.lsp" },
})
