# QuickRename

QuickRename is a small Neovim plugin that automatically replaces the `:s` command with a global substitute command in command-line mode.

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
 {
  'mei28/instant_rename.nvim',
  event = { 'ModeChanged', 'CmdlineChanged' }, -- for lazy loading
  config = function()
    require('instant_rename')
  end
}
```
## Usage
* Simply type `:s` in command-line mode, and it will be automatically expanded to `:%s///g`.
