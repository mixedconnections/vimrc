# cat ~/.vimrc

![This project is personal](https://img.shields.io/badge/status-personal-important.svg)

My vim8 setup to expedite my workflow. Planning on moving to [SpaceVim](https://spacevim.org) as my IDE after I explore a few more plugins.  

## Manually install
    git clone git@github.com:topunix/vimrc.git

    ln -s topunix/.vimrc ~/.vimrc

… then run the following in Vim:

    :source %
    :PlugInstall

## Updates

* init or add new plugin

   ```
    :PlugInstall
   ```

* update

   ```
    :PlugUpdate
   ```

* update vim-plug itself

    ```
    :PlugUpgrade
    ```
    
## Plugins

| Name                                                                             | Description                               | 
| -------------------------------------------------------------------------------- | ----------------------------------------- |
| [`vim-plug`](https://github.com/junegunn/vim-plug)                 | Minimalist plugin manager with super-fast parallel installation |
| [`Nerd Tree`](https://github.com/scrooloose/nerdtree)                 |  Tree explorer plugin for navigating the filesystem | 
| [`vim-signify`](https://github.com/mhinz/vim-signify)                |  Plugin for showing version control diffs in the sign column |
| [`auto-pairs`](https://github.com/jiangmiao/auto-pairs)              |  Plugin to insert or delete brackets, parens, quotes in pair |
| [`hiPairs`](https://github.com/Yggdroot/hiPairs) |  Highlights the pair surrounding the current cursor position |
| [`vim-better-whitespace`](https://github.com/ntpeters/vim-better-whitespace)  | Better whitespace highlighting for Vim |
| [`indentLine`](https://github.com/Yggdroot/indentLine)  | Plugin to display the indention levels with thin vertical lines |
| [`ALE`](https://github.com/dense-analysis/ale) | Check syntax in Vim asynchronously and fix files |
| [`vim-fugitive`](https://github.com/tpope/vim-fugitive) | A Git wrapper so awesome, it should be illegal |
| [`vim-gist`](https://github.com/mattn/vim-gist) | Plugin for Gist |
| [`colorizer`](https://github.com/chrisbra/Colorizer) | Color hex codes and color names |
| [`vim-polygot`](https://github.com/sheerun/vim-polyglot) | A solid language pack for Vim |


## Color schemes

| Name                                                                             | Description                               | 
| -------------------------------------------------------------------------------- | ----------------------------------------- |
| [`dracula-vim`](https://github.com/dracula/vim)                                  | A dark theme for Vim (displayed below)    |
| [`candid-vim`](https://github.com/flrnd/candid.vim)                              | A dark colorscheme with vibrant colors    |
| [`plastic-vim`](https://github.com/flrnd/plastic.vim)                            | VSCode Plastic theme port for vim/neovim  |

<img width="1227" alt="screenshot" src="https://user-images.githubusercontent.com/833824/77176585-b147c500-6a9a-11ea-86e3-2444f0f74878.png">

## Mappings/Shortcuts

I try to keep things as simple as possible, so I can focus more on coding problems. Too many mappings and plugins are hard for me to remember. I don't claim that my setup is a brilliant example of vim usage. It just reflects how I use vim.

* [Nerd Tree](https://github.com/scrooloose/nerdtree):

  Toggle NERDTree view: `map <F3> :NERDTreeToggle<CR>`

  Useful commands:   
    `:Bookmark [name]` - bookmark any directory as name   
    `:NERDTree [name]` - open the bookmark [name] in Nerd Tree  
  
  [Nerd Tree manual](https://github.com/scrooloose/nerdtree/blob/master/doc/NERDTree.txt) 
  
* [vim-fugitive cheatsheet](https://gist.github.com/NickSeagull/a44078d8611ff4fa31b75e3aa795f760)

* [git workflow](https://github.com/adrianholovaty/git_workflow)
    
* [ALE](https://github.com/dense-analysis/ale)

  Useful commands:\
    `:ALEFix` - auto-fix code in your current file\
    `:ALEFix <fixer>` - auto-fix code using a specific tool. `:ALEFix eslint` runs `eslint --fix`   
    `:ALEFixSuggest` - suggest supported tools for fixing code
 
* [vim-gist](https://github.com/mattn/vim-gist) 

  Useful commands:\
    `:'<,'>Gist` - Post selected text to gist, using default privacy option, from visual mode.\
    `:'<,'>Gist!` - Creates new post of selected text to gist, using default privacy option. The bang(!) creates new entry.
    
* [Random color scheme](https://gist.github.com/ryanflorence/1381526): 
   
  Switch scheme: `map <F1> :call RandomColorScheme()<CR>`\
  Save scheme (updates .vimrc): `map <F2> :call UpdateColor()<CR>`
     
## Contact

Enjoy it, and if you have any question or comment, feel free to contact me.
Happy Coding :)
