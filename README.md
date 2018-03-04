# dotfiles
This is a collection of dot files I used to customize my terminal.

To replace dotfiles. Runn the following script

```shell
./replace.sh
```
The **replace.sh** script will copy all dot files into the home directory and any old files will be marked and put into a new directory *old_dotfiles*

In order to refresh updates I currently have a script **collect.sh** that will update all files currently in the repository
and update them witch changes I have made in my home directory. Just run the following command in order to do so.
``` shell
./collect.sh
```

For MacOS **brew_installation.sh** will collect any programs I have personally downloaded. Just run the script in order to get all programs installed
```shell
./brew_installation.sh
```
