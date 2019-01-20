# :computer: :metal: lognroll-vim
 > Keep on loggin' in the free world

 ![jslog-vim.gif](https://github.com/glippi/jslog-vim/blob/master/jslog-vim.gif)

## What is lognroll-vim?
It's a plugin aiming to help us developers to save time in writing all that `console.log` ;)
This goal is pursue basically adding a couple of mappings for you.
At the moment, only `JavaScript` and `TypeScript` environment are supported, but in the future it's not excluded support for other languages.

## Global variables configuration:

| Variable | Type | Default Value | Meaning |
| -------- | ---- | ------------- | ------- |
| g:lognroll#enable_insert_mode  | number | 0 or 1 | Define wether the mappings should be active for INSERT MODE or not
| g:lognroll#enable_brackets  | number | 0 or 1 | Define wether the variable should be logged inside curly brackets or not
| g:lognroll#lognroll_js_console  | string | 'console'  | Define the console function to call
| g:lognroll#lognroll_js_actions | string[] | [ 'log',  'info',  'warn',  'error' ] | Define the method of the console the user wants to map

## What are the default mappings?
One of the core concept behind this plugin, is to expose *mnemonic* key combination.
For this reason, every mapping, both in `ÌNSERT` and `NORMAL` mode, begin with:

  `co`, that stands for `console`

Followed by the action you want to perform, in a *vimish* way. So, for example, in case of `log`:

  `l`, that stands for `log`

Therefore the complete mapping will be:

  `col`

By default, you will find 4 levels of logging for JS: `log, info, warn, error`, which bring these mappings:

  `col`, console.log
  `coi`, console.info
  `cow`, console.warn
  `coe`, console.error

If you don't want to have mappings also for `INSERT` mode, just add this line to your `.vimrc`:

  `let g:lognroll#enable_insert_mode = 0`

## In which way the variable is logged?
By default, the variable will be surrounded by curly brackets, for example, if you have the cursor on the `word` `dumbString`, and type `col`, the variable will be logged one line below, like this:

```javascript
const dumbString = "I'm a string";
console.log({ dumbString })
```

Logging a variable inside brackets it's a handful way to write things like: `console.log('dumbstring:', dumbstring)`.

Anyway, if for some reasons, one don't want to use brackets, it's only needed to add the following line to the `.vimrc`:

  `let g:lognroll#enable_brackets = 0`

## Is it possible to use a custom logger?
Yes.

Maybe you don't want to rely on default console, and you prefer tools like `PinoJS`. Well, just specify in the `.vimrc` the name of the console you want to use like this:

  `let g:lognroll_js_console = 'pino'`

Now typing `col` will produce the following output:

  `pino.log({ dumbString })`

## Is it possible to specify the method of logging?
Yes.

If you want to use also `console.dir()` besides the default methods, you just have to enumerate in the `.vimrc` all the methods you want to use, like this:

  `let g:lognroll_js_actions = [ 'log',  'info',  'warn',  'error', 'dir' ]`

Now typing `cod` will produce the following output:

  `console.dir({ dumbString })`

:warning: You have to redaclare all the methodsyou want to use, for example, this line:

  `let g:lognroll_js_actions = [ 'dir' ]`

will cause you to have only the `cod` mappings, and nothing else. Be sure to enumerate all the methods you want to use.
Another key point here is to be aware that all new methods you add will have as mappings the same root `co` and the first letter of the method for ending. So, if you add `console.table`, the mapping will be:

  `cot`


## Is it possible to log all the variables of a function?
Yes.

While `col` will log only the `word` you are on, `cola` will log all the *a*rgguments of the function.
:warningn: Pay attention to use it inside the brackets of the function call, therefore the cursor should be inside anywhere in between the brackets. The result will be the following:

```javascript
function sum(a, b) {
  return a + b
}
console.log({ a, b })
```

## Is it possible to overwrite default mappings?
Yes.

The following is the table of the available `<Plug>` command:
| Plug command | Mode | Default Map
| -------- | ---- | ------------- | ------- |
| <Plug>(lnr_insert_log)  | `insert` | `col`
| <Plug>(lnr_insert_info)  | `insert` | `coi`
| <Plug>(lnr_insert_wanr)  | `insert` | `cow`
| <Plug>(lnr_insert_error)  | `insert` | `coe`
| <Plug>(lnr_normal_log)  | `normal` | `col`
| <Plug>(lnr_normal_info)  | `normal` | `coi`
| <Plug>(lnr_normal_wanr)  | `normal` | `cow`
| <Plug>(lnr_normal_error)  | `normal` | `coe`
| <Plug>(lnr_normal_logargs)  | `normal` | `cola`
| <Plug>(lnr_normal_infoargs)  | `normal` | `coia`
| <Plug>(lnr_normal_wanrargs)  | `normal` | `cowa`
| <Plug>(lnr_normal_errorargs)  | `normal` | `coea`

For example, If you want to remap the mapping in `NOMRAL` mode for `console.log` from `col` to `ll`, add this line to your `.vimrc`:

      `nmap tt <Plug>(lnr_normal_log)`

:warning: For the new method you eventually could add, like `console.dir`, the `<Plug>` function will be:

  `(lnr_normal_dir)`

As you can see, `lnr`, that stands for `lognroll`, is always the first piece of the word, followed by the `MODE` you want to map, so `insert` or `normal`, and the last word is the name of the console's method you are calling, so `log`, `warn` etc.

## What languages are supported?
At the moment, only `JavaScript` and `TypeScript` (also `*.jsx` and `*.tsx` ), but I think that in some basic way, this plugin could be extended to other languages too.
Contributions are welcome!
If you want to add support for a specific language, just add an issue with some details of the goals and the ideas you have and don't hesitate to open a `Pull Request`. As soon as I can, work and life permitting, I will check it out.
The only constraints is to follow the same mnemonic way of defining mappings, possibly starting with `co`.

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
