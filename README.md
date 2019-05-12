vim-better-default
==================

There are some general settings for convenience in almost everyone's `.vimrc` file. Let's shorten your `.vimrc` and make the default vim better.

## Features

- **Out-of-the-box**: address a ton of deficiencies of the default vim configurations that nearly everyone can agree upon.

    If new to Vim, you can install [vim-better-default](https://github.com/scherukutty/vim-better-default) as a starting point, rather than copying some random vimrc you found.

    If you have been a vimmer for quit a while, please see [default.vim](https://github.com/scherukutty/vim-better-default/blob/master/plugin/default.vim) directly. In the beginning [vim-better-default](https://github.com/scherukutty/vim-better-default) is intended for simplifying the tedious `.vimrc` file, so you may also use it to shorten your `.vimrc`.

## Installation

This plugin can be installed with a varity of plugin managers, such as:

- [Vundle](https://github.com/VundleVim/Vundle.vim)
    - Add `Plugin 'scherukutty/vim-better-default` to .vimrc
    - Run `:source $MYVIMRC` and `:PluginInstall`
- [Plug](https://github.com/junegunn/vim-plug)
    - Add `Plug 'scherukutty/vim-better-default` to .vimrc
    - Run `:source $MYVIMRC` and `:PlugInstall`


For more details, please refer to the [default.vim](https://github.com/scherukutty/vim-better-default/blob/master/plugin/default.vim). Don't worry. It is extremely simple and just part of your own `.vimrc` file alike.

You can also fork [vim-better-default](https://github.com/scherukutty/vim-better-default) and modify `plugin/default.vim` for more customization.

## How to override the existing settings?

`default.vim` normally loads after your `.vimrc`, making it a bit tricky to override. If you want to load it earlier, add the following content to your `.vimrc`, then follow on the settings you want to override.

For instance, if you don't like relativenumber:

```vim
runtime! plugin/default.vim
set norelativenumber
```

## Contributions

If you have any ideas or suggestions to improve [vim-better-default](https://github.com/scherukutty/vim-better-default), please [open an issue](https://github.com/scherukutty/vim-better-default/issues), or fork it and send a pull request. Your feedback is highly appreciated.

## Inspiration

- [spacemacs](https://github.com/syl20bnr/spacemacs)
- [better-defaults](https://github.com/technomancy/better-defaults)
- [vim-sensible](https://github.com/tpope/vim-sensible)
- [space-vim](https://github.com/scherukutty/space-vim)
