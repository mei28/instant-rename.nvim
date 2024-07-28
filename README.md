# InstantRename

InstantRename is a small Neovim plugin that automatically replaces the `:s` command with a global substitute command in command-line mode.

<img src="https://github.com/user-attachments/assets/abc362f7-85c6-4526-8428-5ca8188de9dd" alt="video" width="800"/>

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

## Reference
https://zenn.dev/vim_jp/articles/2023-06-30-vim-substitute-tips
