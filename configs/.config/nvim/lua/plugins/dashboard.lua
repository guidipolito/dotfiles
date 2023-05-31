local header =  {
    "",
    "",
    "",
    "⠀⠀⠀⠀⠀⣠⣎⣀⣀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⡄⠀⠀⠀ ",
    "⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀ ",
    "⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡿⠏⠿⠿⠿⠿⠿⣿⣿⣿⣿⣿⣿⡆⠀ ",
    "⠀⠀⠀⣿⣿⣿⣿⣿⣿⡿⢿⠋⠉⠀⠀⠀⠀⠀⡀⠀⠀⠘⢿⣿⣿⣿⣿⣧⠀ ",
    "⠀⠀⢰⣿⣿⣿⣿⠟⢁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠇⠀⠀⡈⠀⠻⣿⣿⣿⣿⠀ ",
    "⠀⠀⣼⣿⣿⡿⠁⠀⢸⠀⠈⢳⣶⣤⣄⠀⠈⠀⠁⠀⠀⠀⢀⠀⠹⣿⣿⡟⠀ ",
    "⠀⠀⣿⣿⣿⠀⠀⠈⣼⡇⠀⠘⠻⠟⠁⠀⠀⠀⠀⢤⣀⡀⠌⠀⠀⣿⣿⠃⠀ ",
    "⠀⠀⣿⣿⣿⡀⠀⠀⡏⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⡿⠋⢰⢠⣿⡏⠀⠀ ",
    "⠀⠀⣿⣿⣿⡇⠀⠀⢷⡃⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣯⣾⡟⠀⠀⠀ ",
    "⠀⠀⣿⣿⣿⡿⠀⠀⣼⣿⡄⠀⠈⠀⢑⠶⠀⠀⠀⠀⢀⣾⣿⣿⣿⡇⠀⠀⠀ ",
    "⠀⠀⣿⣿⣿⠁⠀⠀⣿⣿⠁⠀⠀⠀⢀⣀⣠⣤⣤⣴⠟⣿⣿⣿⣿⡇⠀⠀⠀ ",
    "⠀⠀⠙⢿⠃⠀⠀⢸⣿⣟⠀⠀⢀⣤⣾⣿⣿⣿⠟⠁⢰⣿⣿⣿⣿⠃⠀⠀⠀ ",
    "⠀⠀⠠⠴⠀⠀⠀⠿⠿⠿⠧⠾⠿⠿⠿⠿⠿⠃⠀⠀⠾⠿⠿⠟⠁⠀    ",
}

require('dashboard').setup{
  theme  = 'doom', 
  config = {
    header = header,
    center = {
      {
        icon = '  ',
        desc ='Projects                            ',
        action =  'Telescope projects',
        shortcut = 'SPC f p'
      },
      {
        icon = '  ',
        desc = 'Recently latest session             ',
        shortcut = 'SPC s l',
        action ='SessionLoad'
      },
      {
        icon = '  ',
        desc = 'Recently opened files               ',
        action =  'DashboardFindHistory',
        shortcut = 'SPC f h'
      },
      {
        icon = '  ',
        desc = 'Find  File                          ',
        action = 'Telescope find_files find_command=rg,--hidden,--files',
        shortcut = 'SPC f f'
      },
      {
        icon = '  ',
        desc = 'Edit nvim config                    ',
        action = 'e ~/.config/nvim/lua',
      },
    },
    footer ={}
  }
}

