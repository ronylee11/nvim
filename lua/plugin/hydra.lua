local Hydra = require('hydra')

Hydra({
  name = 'Scroll',
  mode = 'n',
  body = '<Tab>', -- Enter hydra when pressing Tab

  heads = {
    { 'd', '<C-d>', { desc = 'Scroll down' } },
    { 'u', '<C-u>', { desc = 'Scroll up' } },
    { 'q', nil,     { exit = true, desc = 'Quit' } },
  }
})
