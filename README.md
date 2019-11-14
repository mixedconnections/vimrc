# cat ~/.vimrc

![This project is personal](https://img.shields.io/badge/status-personal-important.svg)

mixedconnection's vim setup

# Manually install
    git clone git@github.com:mixedconnections/vimrc.git

    ln -s mixedconnections/.vimrc ~/.vimrc

… then run the following in Vim:

    :source %
    :PlugInstall

# Updates

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
    
# Plugins

* [vim-plug](https://github.com/junegunn/vim-plug): Minimalist Vim plugin manager with super-fast parallel installation.

* [Nerd Tree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for navigating the filesystem.

* [vim-signify](https://github.com/mhinz/vim-signify): Advanced plugin for showing version control diffs in the SignColumn.

* [auto-pairs](https://github.com/jiangmiao/auto-pairs): Vim plugin to insert or delete brackets, parens, quotes in pair 

* [vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace): Better whitespace highlighting for Vim

* [indentLine](https://github.com/Yggdroot/indentLine): A vim plugin to display the indention levels with thin vertical lines

* [ALE](https://github.com/dense-analysis/ale): Check syntax in Vim asynchronously and fix files

* [vim-polygot](https://github.com/sheerun/vim-polyglot): A solid language pack for Vim.

# Color schemes

* [dracula-vim](https://github.com/dracula/vim): A dark theme for Vim (my current favorite)

* [candid-vim](https://github.com/flrnd/candid.vim): A dark colorscheme with vibrant colors

* [plastic-vim](https://github.com/flrnd/plastic.vim): VSCode Plastic theme port for vim/neovim

# Mappings/Shortcuts

I try to keep things as simple as possible, so I can focus more on coding problems. I don't claim that my setup is a brilliant example of vim usage. It just reflects how I use vim.

* [Nerd Tree](https://github.com/scrooloose/nerdtree):

  Toggle NERDTree view: `map <F2> :NERDTreeToggle<CR>`

  Useful commands:   
    `:Bookmark [name]` - bookmark any directory as name   
    `:NERDTree [name]` - open the bookmark [name] in Nerd Tree   
    
* [ALE](https://github.com/dense-analysis/ale)

  Useful commands:\
    `:ALEFix` - auto-fix code in your current file\
    `:ALEFix <fixer>` - auto-fix code using a specific tool. `:ALEFix eslint` runs `eslint --fix`   
    `:ALEFixSuggest` - suggest supported tools for fixing code
    
* [Random color scheme](https://gist.github.com/ryanflorence/1381526): `map <F1> :call RandomColorScheme()<CR>`

# Contact

Enjoy it, and if you have any question or comment, feel free to contact me.
Happy Coding :)
