# VIM-MCSS

**This project is just for netease mcss**

---

This vim bundle adds syntax highlighting, indenting and autocompletion for the dynamic stylesheet language [MCSS](http://operatino.github.io/MCSS/cn/).

This bundle is compatible with [vim-css-color](https://github.com/skammer/vim-css-color),
[vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax) and possibly other plugins that place code
in `after/syntax/css.vim` or `after/syntax/css/*.vim`.


## Installing and Using

- Install [pathogen](http://www.vim.org/scripts/script.php?script_id=2332) into `~/.vim/autoload/` and add the
   following line to your `~/.vimrc`:

        call pathogen#infect()

- Make a clone of the `vim-mcss` repository:

        $ mkdir -p ~/.vim/bundle
        $ cd ~/.vim/bundle
        $ git clone https://github.com/playwolsey/vim-mcss

- OR use [vundle](https://github.com/gmarik/vundle), adding this line to your `~/.vimrc`:

        Plugin 'playwolsey/vim-mcss'
        

- OR use [neobundle](https://github.com/Shougo/neobundle.vim), adding this line to your `~/.vimrc`:

        NeoBundle 'playwolsey/vim-less'
        

- OR use git submodules:

        $ git submodule add https://github.com/playwolsey/vim-mcss.git bundle/vim-mcss
        $ git submodule init


### Map
.mcss to .css is required.

    nnoremap <Leader>m :w <BAR> !mcss % > %:t:r.css<CR><space>


## Licensed
[MIT][license]
:heart:


[license]: http://opensource.org/licenses/MIT
