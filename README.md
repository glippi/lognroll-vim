# lognroll-vim
 > Loggin like there's no tomorrow

 ![jslog-vim.gif](https://github.com/glippi/jslog-vim/blob/master/jslog-vim.gif)

## What is lognroll-vim?
It's a small plugin that basically adds a couple of mappings for you, leveraging the main JS log functions.

## Which log functions are implemented?
I decide to implement the four most common log operation in my workflow:

  1. `console.log({ $variable })`
  2. `console.info({ $variable })`
  3. `console.warning({ $variable })`
  4. `console.error({ $variable })`

The relative mappings, both for `INSERT` and `NORMAL` mode, are:

  1. `cll`
  2. `cli`
  3. `clw`
  4. `cle`

## Usage
In `NORMAL MODE`:
1. position the cursor on the variable that you want to log
2. Type `cll` and...voilà, the variable will be logged one line below.


In `INSERT MODE`:
1. just tyoe `cll`
2. the cursor will jump inside the curly brackets inside `console.log({  })` where you can just insert the value you want to log

## Installation
* [**Vundle**](https://github.com/gmarik/vundle), add the following line to your `~/.vimrc`:

    Bundle 'glippi/lognroll-vim'

    $ vim +'PluginInstall! lognroll-vim' +qall

* [**vim-plug**](https://github.com/junegunn/vim-plug), add the following to your plugin section:

    Plug 'glippi/lognroll-vim'

    $ vim +PlugInstall

* [**NeoBundle**](https://github.com/Shougo/neobundle.vim), add the following line to your `~/.vimrc`:

    NeoBundle 'glippi/lognroll-vim'

    $ vim +NeoBundleInstall +qall

* [**Pathogen**](https://github.com/tpope/vim-pathogen), execute the following in your shell:

    $ cd ~/.vim/bundle

    $ git clone https://github.com/glippi/lognroll-vim.git

If you are not using a package manager, download the [tarball](https://github.com/glippi/lognroll-vim/archive/master.tar.gz) and execute the following steps:

    $ cp lognroll-vim-master.tar.gz ~/.vim
    $ cd ~/.vim
    $ tar --strip-components=1 --overwrite -zxf lognroll-vim-master.tar.gz
    $ rm lognroll-vim-master.tar.gz


## License
Copyright (c) Gabriele Lippi. Distributed under the same terms as Vim itself. See `:help license`.
