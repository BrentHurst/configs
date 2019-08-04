# Configs
My configuration files and my common executables.

## Installation
To install, pull this git repo and run `install.sh`. If any of your config files in your home directory are overwritten on installation, you can find them backed up in a directory (which will be told to you when the installation finishes).

Usage: `install.sh [bin|bash|git|vim|all] [...]`

Give the script the command line arguments of what you would like to install from this repo. If you would like to install all, give the script the command line argument `all`.

## Config Types

### bash
The bash config files are fairly self-explanatory. The `.inputrc` file is for vim keybindings. The `.dircolors*` files are for the colored output of `ls`; I had one on one machine when I created this repo and one on another machine, so I'm not sure yet which, if either, is more compatible across platforms. When I figure that out, I'll name it `.dircolors` and I'll delete `.dircolors.v2`. Once I actually take the time to sit down and write `.bash_logout`, it will enable `cd -` to work across sessions.

### bin
This isn't for all the executables in my `~/bin`; it's just for what I consider as integral to my bash experience as my `.bashrc`. `spacesandparens` will remove spaces and parentheses from filenames. On the Ubuntu subsystem for Windows, `o` will open a pdf that's from the Windows file system. `gsave` aids in git adding/committing/pushing.

### git
Right now, the only git file in this repo is a simple `.gitconfig` that probably isn't worth installing for anyone else.

### vim
I use Chris Dean's vimrc (which you can learn more about or download directly from his GitHub here: <https://github.com/chrisdean258/dotfiles>). Running `install.sh vim` will install his vimrc and my `.vimrc.local` file. If using this vimrc on Windows, I recommend actually saving the vimrc to the Ubuntu subsystem and then sourcing `.vimrc` and `.vimrc.local` from your `_vimrc` file in your Windows `%HOME%`.

### windows
I keep my Windows cmd startup file in this repo and just have the command prompt source it from its location in the Ubuntu subsystem.

## Errors
If you find an error in any of my files or scripts, please let me know.
