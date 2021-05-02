-- Theme: zephyr
-- Author: Glepnir
-- License: MIT
-- Source: http://github.com/glepnir/zephyr-nvim
local zephyr = {
  base0      = '#1B2229';
  base1      = '#1c1f24';
  base2      = '#202328';
  base3      = '#23272e';
  base4      = '#3f444a';
  base5      = '#5B6268';
  base6      = '#73797e';
  base7      = '#9ca0a4';
  base8      = '#b1b1b1';

  bg = '#282a36';
  bg1 = '#504945';
  bg_popup = '#3E4556';
  bg_highlight  = '#2E323C';
  bg_visual = '#b3deef';

  fg = '#bbc2cf';
  fg_alt  = '#5B6268';

  red = '#e95678';

  redwine = '#d16d9e';
  orange = '#D98E48';
  yellow = '#f0c674';

  light_green = '#abcf84';
  green = '#afd700';
  dark_green = '#98be65';

  cyan = '#36d0e0';
  blue = '#61afef';
  violet = '#b294bb';
  magenta = '#c678dd',
  teal = '#1abc9c';
  grey = '#928374';
  brown = '#c78665';
  black = '#000000';

  bracket = '#80A0C2';
  currsor_bg = '#4f5b66';
  none = 'NONE';
}

function zephyr.terminal_color()
  vim.g.terminal_color_0 = zephyr.bg
  vim.g.terminal_color_1 = zephyr.red
  vim.g.terminal_color_2 = zephyr.green
  vim.g.terminal_color_3 = zephyr.yellow
  vim.g.terminal_color_4 = zephyr.blue
  vim.g.terminal_color_5 = zephyr.violet
  vim.g.terminal_color_6 = zephyr.cyan
  vim.g.terminal_color_7 = zephyr.bg1
  vim.g.terminal_color_8 = zephyr.brown
  vim.g.terminal_color_9 = zephyr.red
  vim.g.terminal_color_10 = zephyr.green
  vim.g.terminal_color_11 = zephyr.yellow
  vim.g.terminal_color_12 = zephyr.blue
  vim.g.terminal_color_13 = zephyr.violet
  vim.g.terminal_color_14 = zephyr.cyan
  vim.g.terminal_color_15 = zephyr.fg
end

function zephyr.highlight(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
    local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''
    vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..
                             ' ' .. bg..' '..sp)
end


function zephyr.load_syntax()
  local syntax = {
    Normal = {fg = zephyr.fg,bg=zephyr.bg};
    Terminal = {fg = zephyr.fg,bg=zephyr.bg};
    SignColumn = {fg=zephyr.fg,bg=zephyr.bg};
    FoldColumn = {fg=zephyr.fg_alt,bg=zephyr.black};
    VertSplit = {fg=zephyr.black,bg=zephyr.bg};
    Folded = {fg=zephyr.grey,bg=zephyr.bg_highlight};
    EndOfBuffer = {fg=zephyr.bg,bg=zephyr.none};
    IncSearch = {fg=zephyr.bg1,bg=zephyr.orange,style=zephyr.none};
    Search = {fg=zephyr.bg,bg=zephyr.orange};
    ColorColumn = {fg=zephyr.none,bg=zephyr.bg_highlight};
    Conceal = {fg=zephyr.grey,bg=zephyr.none};
    Cursor = {fg=zephyr.none,bg=zephyr.none,style='reverse'};
    vCursor = {fg=zephyr.none,bg=zephyr.none,style='reverse'};
    iCursor = {fg=zephyr.none,bg=zephyr.none,style='reverse'};
    lCursor = {fg=zephyr.none,bg=zephyr.none,style='reverse'};
    CursorIM = {fg=zephyr.none,bg=zephyr.none,style='reverse'};
    CursorColumn = {fg=zephyr.none,bg=zephyr.bg_highlight};
    CursorLine = {fg=zephyr.none,bg=zephyr.bg_highlight};
    LineNr = {fg=zephyr.base4};
    qfLineNr = {fg=zephyr.cyan};
    CursorLineNr = {fg=zephyr.blue};
    DiffAdd = {fg=zephyr.black,bg=zephyr.dark_green};
    DiffChange = {fg=zephyr.black,bg=zephyr.yellow};
    DiffDelete = {fg=zephyr.black,bg=zephyr.red};
    DiffText = {fg=zephyr.black,bg=zephyr.fg};
    Directory = {fg=zephyr.blue,bg=zephyr.none};
    ErrorMsg = {fg=zephyr.red,bg=zephyr.none,style='bold'};
    WarningMsg = {fg=zephyr.yellow,bg=zephyr.none,style='bold'};
    ModeMsg = {fg=zephyr.fg,bg=zephyr.none,style='bold'};
    MatchParen = {fg=zephyr.red,bg=zephyr.none};
    NonText = {fg=zephyr.bg1};
    Whitespace = {fg=zephyr.base4};
    SpecialKey = {fg=zephyr.bg1};
    Pmenu = {fg=zephyr.fg,bg=zephyr.bg_popup};
    PmenuSel = {fg=zephyr.base0,bg=zephyr.blue};
    PmenuSelBold = {fg=zephyr.base0,g=zephyr.blue};
    PmenuSbar = {fg=zephyr.none,bg=zephyr.base4};
    PmenuThumb = {fg=zephyr.violet,bg=zephyr.light_green};
    WildMenu = {fg=zephyr.fg,bg=zephyr.green};
    Question = {fg=zephyr.yellow};
    NormalFloat = {fg=zephyr.base8,bg=zephyr.bg_highlight};
    Tabline = {fg=zephyr.base6,bg=zephyr.base2};
    TabLineFill = {style=zephyr.none};
    TabLineSel = {fg=zephyr.fg,bg=zephyr.blue};
    StatusLine = {fg=zephyr.base8,bg=zephyr.base2,style=zephyr.none};
    StatusLineNC = {fg=zephyr.grey,bg=zephyr.base2,style=zephyr.none};
    SpellBad = {fg=zephyr.red,bg=zephyr.none,style='undercurl'};
    SpellCap = {fg=zephyr.blue,bg=zephyr.none,style='undercurl'};
    SpellLocal = {fg=zephyr.cyan,bg=zephyr.none,style='undercurl'};
    SpellRare = {fg=zephyr.violet,bg=zephyr.none,style = 'undercurl'};
    Visual = {fg=zephyr.black,bg=zephyr.bg_visual};
    VisualNOS = {fg=zephyr.black,bg=zephyr.bg_visual};
    QuickFixLine = {fg=zephyr.violet,style='bold'};
    Debug = {fg=zephyr.orange};
    debugBreakpoint = {fg=zephyr.bg,bg=zephyr.red};

    Boolean = {fg=zephyr.orange};
    Number = {fg=zephyr.brown};
    Float = {fg=zephyr.brown};
    PreProc = {fg=zephyr.violet};
    PreCondit = {fg=zephyr.violet};
    Include = {fg=zephyr.violet};
    Define = {fg=zephyr.violet};
    Conditional = {fg=zephyr.magenta};
    Repeat = {fg=zephyr.magenta};
    Keyword = {fg=zephyr.green};
    Typedef = {fg=zephyr.red};
    Exception = {fg=zephyr.red};
    Statement = {fg=zephyr.red};
    Error = {fg=zephyr.red};
    StorageClass = {fg=zephyr.orange};
    Tag = {fg=zephyr.orange};
    Label = {fg=zephyr.orange};
    Structure = {fg=zephyr.orange};
    Operator = {fg=zephyr.redwine};
    Title = {fg=zephyr.orange,style='bold'};
    Special = {fg=zephyr.yellow};
    SpecialChar = {fg=zephyr.yellow};
    Type = {fg=zephyr.teal};
    Function = {fg=zephyr.yellow};
    String = {fg=zephyr.light_green};
    Character = {fg=zephyr.green};
    Constant = {fg=zephyr.cyan};
    Macro = {fg=zephyr.cyan};
    Identifier = {fg=zephyr.blue};

    Comment = {fg=zephyr.base6};
    SpecialComment = {fg=zephyr.grey};
    Todo = {fg=zephyr.violet};
    Delimiter = {fg=zephyr.fg};
    Ignore = {fg=zephyr.grey};
    Underlined = {fg=zephyr.none,style='underline'};

    DashboardShortCut = {fg=zephyr.magenta};
    DashboardHeader = {fg=zephyr.orange};
    DashboardCenter = {fg=zephyr.cyan};
    DashboardFooter = {fg=zephyr.yellow,style='bold'};
  }
  return syntax
end

function zephyr.load_plugin_syntax()
  local plugin_syntax = {
    TSFunction = {fg=zephyr.cyan};
    TSMethod = {fg=zephyr.cyan};
    TSKeywordFunction = {fg=zephyr.red};
    TSProperty = {fg=zephyr.yellow};
    TSType = {fg=zephyr.teal};
    TSVariable = {fg=zephyr.blue};
    TSPunctBracket = {fg=zephyr.bracket};

    vimCommentTitle = {fg=zephyr.grey,style='bold'};
    vimLet = {fg=zephyr.orange};
    vimVar = {fg=zephyr.cyan};
    vimFunction = {fg=zephyr.redwine};
    vimIsCommand = {fg=zephyr.fg};
    vimCommand = {fg=zephyr.blue};
    vimNotFunc = {fg=zephyr.violet,style='bold'};
    vimUserFunc = {fg=zephyr.yellow,style='bold'};
    vimFuncName= {fg=zephyr.yellow,style='bold'};

    diffAdded = {fg = zephyr.dark_green};
    diffRemoved = {fg =zephyr.red};
    diffChanged = {fg = zephyr.blue};
    diffOldFile = {fg = zephyr.yellow};
    diffNewFile = {fg = zephyr.orange};
    diffFile    = {fg = zephyr.aqua};
    diffLine    = {fg = zephyr.grey};
    diffIndexLine = {fg = zephyr.violet};

    gitcommitSummary = {fg = zephyr.red};
    gitcommitUntracked = {fg = zephyr.grey};
    gitcommitDiscarded = {fg = zephyr.grey};
    gitcommitSelected = { fg=zephyr.grey};
    gitcommitUnmerged = { fg=zephyr.grey};
    gitcommitOnBranch = { fg=zephyr.grey};
    gitcommitArrow  = {fg = zephyr.grey};
    gitcommitFile  = {fg = zephyr.dark_green};

    VistaBracket = {fg=zephyr.grey};
    VistaChildrenNr = {fg=zephyr.orange};
    VistaKind = {fg=zephyr.purpl};
    VistaScope = {fg=zephyr.red};
    VistaScopeKind = {fg=zephyr.blue};
    VistaTag = {fg=zephyr.magenta,style='bold'};
    VistaPrefix = {fg=zephyr.grey};
    VistaColon = {fg=zephyr.magenta};
    VistaIcon = {fg=zephyr.yellow};
    VistaLineNr = {fg=zephyr.fg};

    GitGutterAdd = {fg=zephyr.dark_green};
    GitGutterChange = {fg=zephyr.blue};
    GitGutterDelete = {fg=zephyr.red};
    GitGutterChangeDelete = {fg=zephyr.violet};

    GitSignsAdd = {fg=zephyr.dark_green};
    GitSignsChange = {fg=zephyr.blue};
    GitSignsDelete = {fg=zephyr.red};
    GitSignsAddNr = {fg=zephyr.dark_green};
    GitSignsChangeNr = {fg=zephyr.blue};
    GitSignsDeleteNr = {fg=zephyr.red};
    GitSignsAddLn = {bg=zephyr.bg_popup};
    GitSignsChangeLn = {bg=zephyr.bg_highlight};
    GitSignsDeleteLn = {bg=zephyr.bg1};

    SignifySignAdd = {fg=zephyr.dark_green};
    SignifySignChange = {fg=zephyr.blue};
    SignifySignDelete = {fg=zephyr.red};

    dbui_tables = {fg=zephyr.blue};

    LspReferenceRead = {bg=zephyr.bg_highlight};
    LspReferenceText = {bg=zephyr.bg_highlight};
    LspReferenceWrite = {bg=zephyr.bg_highlight};

    LspDiagnosticsSignError = {fg=zephyr.red};
    LspDiagnosticsSignWarning = {fg=zephyr.yellow};
    LspDiagnosticsSignInformation = {fg=zephyr.blue};
    LspDiagnosticsSignHint = {fg=zephyr.cyan};

    LspDiagnosticsVirtualTextError = {fg=zephyr.red};
    LspDiagnosticsVirtualTextWarning= {fg=zephyr.yellow};
    LspDiagnosticsVirtualTextInformation = {fg=zephyr.blue};
    LspDiagnosticsVirtualTextHint = {fg=zephyr.cyan};

    LspDiagnosticsUnderlineError = {style="undercurl",sp=zephyr.red};
    LspDiagnosticsUnderlineWarning = {style="undercurl",sp=zephyr.yellow};
    LspDiagnosticsUnderlineInformation = {style="undercurl",sp=zephyr.blue};
    LspDiagnosticsUnderlineHint = {style="undercurl",sp=zephyr.cyan};

    CursorWord0 = {bg=zephyr.currsor_bg};
    CursorWord1 = {bg=zephyr.currsor_bg};

    NvimTreeFolderName = {fg=zephyr.blue};
    NvimTreeRootFolder = {fg=zephyr.red,style='bold'};
    NvimTreeSpecialFile = {fg=zephyr.fg,bg=zephyr.none,stryle='NONE'};

    TelescopeBorder = {fg=zephyr.teal};
    TelescopePromptBorder = {fg=zephyr.blue};
    TelescopeMatching = {fg=zephyr.teal};
    TelescopeSelection = {fg=zephyr.yellow,bg=zephyr.bg_highlight,style= 'bold'};
    TelescopeSelectionCaret = {fg=zephyr.yellow};
    TelescopeMultiSelection = {fg=zephyr.teal};
  }
  return plugin_syntax
end

local async_load_plugin

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function ()
  zephyr.terminal_color()
  local syntax = zephyr.load_plugin_syntax()
  for group,colors in pairs(syntax) do
    zephyr.highlight(group,colors)
  end
  async_load_plugin:close()
end))

function zephyr.colorscheme()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = 'zephyr'
  local syntax = zephyr.load_syntax()
  for group,colors in pairs(syntax) do
    zephyr.highlight(group,colors)
  end
  async_load_plugin:send()
end

zephyr.colorscheme()

return zephyr
