# Dotfiles for damon
a bare Git repo for maintaining configs 

```bash
sudo apt-get install git 
|OR|
sudo pacman -S git 
```

```bash 
mkdir $HOME/.cfg
git init --bare $HOME/.cfg
alias dfgit='usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
dfgit remote add origin https://github.com/damon232/dotfiles.git 
```
 
```bash 
dfgit status 
dfgit add .x
dfgit commit -m "Add x"
dfgit push 
dfgit checkout 
```
