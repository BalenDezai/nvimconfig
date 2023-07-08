# What is this
This is my Neovim config that was made mostly by following along with a youtuber. You can find the github page [here](https://github.com/LunarVim/Neovim-from-scratch) 
and the youtube channel [here](https://www.youtube.com/@chrisatmachine).

Very cool and informative videos that taught taught me how to create and manage my own config.

# structure
```
├── lua
│   ├── user
│   │   ├── lsp
│   │   │   ├── handlers.lua
│   │   │   ├── mason.lua
│   │   │   ├── init.lua
│   │   │   ├── settings
│   │   │   │   ├── astro.lua
│   │   │   │   ├── clangd.lua
│   │   │   │   ├── jsonls.lua
│   │   │   │   ├── pyright.lua
│   │   ├── pluginconfigs
│   │   │   ├── autopairs.lua
│   │   │   ├── bufferline.lua
│   │   │   ├── cmp.lua
│   │   │   ├── colorscheme.lua
│   │   │   ├── comment.lua
│   │   │   ├── gitsigns.lua
│   │   │   ├── keymaps.lua
│   │   │   ├── null-ls.lua
│   │   │   ├── nvim-tree.lua
│   │   │   ├── options.lua
│   │   │   ├── shade.lua
│   │   │   ├── statusline.lua
│   │   │   ├── telescope.lua
│   │   │   ├── treesitter.lua
│   │   ├── plugins.lua
├── plugin
│   ├── packer_compiled.lua
└── readme.md
```
I'm honestly not sure wht the plugin/packer_compiled.lua is or does but I believe it has to be there for Packer (plugin manager) to work.

The LSP folder is as the name states for handling LSP related settings and packages.

the pluginconfigs folder is the configurations for each plugin plus keymaps and option's

# Adding a new plugin
The process is that a plugin is installed in plugin.lua through Packer,and
then a configuration file is created in pluginconfigs and said plugin is configured from there, then the file is imported in init.lua

# Future improvements
- Configure telescope
- Configure nulls-ls
- Configure treesitter and comment

