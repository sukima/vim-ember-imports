# vim-ember-imports

Excited for the new Ember Module Unification in 3.0? Concerned that you won't
be able to remember all the new import statements? Not to fret, this plugin
will save the day. You can add and update import statements with on mapping or
command. It can fill in missing import statements based on the word under the
cursor.

It will properly format the import statements even when updating existing ones
and it can wrap long lines oh and it sorts the variables too.

![animated screen shot](https://sukima.github.io/vim-ember-imports/vim-ember-imports.gif)

**This plugin is dependent on [vim-javascript-imports](https://github.com/sukima/vim-javascript-imports)**
You must install that plugin before using this one.

## Commands, Mappings and Configuration

Read the [help][txt-doc] to know more.

## Installation

### Using [Vundle][vundle]:

Just add this line to your `~/.vimrc`:

```vim
Plugin 'sukima/vim-javascript-imports'
Plugin 'sukima/vim-ember-imports'
```

And run `:PluginInstall` inside Vim.

### Using [pathogen.vim][pathogen]:

Copy and paste in your shell:

```bash
cd ~/.vim/bundle
git clone https://github.com/sukima/vim-javascript-imports.git
git clone https://github.com/sukima/vim-ember-imports.git
```

### Using [vpm][vpm]:

Run this command in your shell:

```bash
vpm insert sukima/vim-javascript-imports
vpm insert sukima/vim-ember-imports
```

### Using [Plug][plug]:

Just add this line to your `~/.vimrc` inside plug call:

```vim
Plug 'sukima/vim-javascript-imports'
Plug 'sukima/vim-ember-imports'
```

And run `:PlugInstall` inside Vim or `vim +PlugInstall +qa` from shell.

## License

MIT

[pathogen]: https://github.com/tpope/vim-pathogen
[txt-doc]: https://raw.githubusercontent.com/sukima/vim-ember-imports/master/doc/emberimports.txt
[vpm]: https://github.com/KevinSjoberg/vpm
[vundle]: https://github.com/gmarik/vundle
[plug]: https://github.com/junegunn/vim-plug
