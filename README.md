# dotfiles
dotfiles backup
## Install your dotfiles on a new system, or migrate to this setup
### 1. `echo ".cfg" >> .gitignore`
There could be weird behaviour if .cfg tries to track itself.
Avoid recursive issues by adding .cfg to your global Git ignore.

### 2. `git clone --bare <remote-git-repo-url> $HOME/.cfg`
Add a `--bare` flat if you wish you use a bare repo

### `alias config='/usr/bin/git --git-dir=<path to .cfg’s Git directory> --work-tree=$HOME'`
Set up an alias to send Git commands to `.cfg`, and also set `$HOME` as the work tree,
while storing the Git state at `.cfg`

For a bare repo, the path to the Git directory is at the top level of the project: `$HOME/.cfg/`

For a non-bare default repo, the path to the Git directory is inside a .git subdirectory: `$HOME/.cfg/.git`

### `config config --local status.showUntrackedFiles no`
Set a local configuration in .cfg to ignore untracked files.

### `config checkout`
Checkout the actual content from your `.cfg` repository to `$HOME`.
Git pulls the tracked files out of the compressed database in the Git directory and
places them in the work tree.

E.g if you added `$HOME/.zsh/aliases` to `.cfg`, that file will be instantiated at that path on your new
computer.

`config checkout` might fail with an error message like.

Files on your computer might have identical locations and names to files in the
.cfg repo. Git doesn’t want to overwrite your local files.

Back up the files if they’re useful, delete them if they aren’t.

Run `config checkout` again until you don’t get any errors.

Treat your dotfile management system is like any other Git project.
Just use the config alias to add, commit, push and pull.
