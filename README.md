# Dotfiles for damon
a bare Git repo for maintaining configs 

###Setup
######download git 
```bash 
sudo apt-get install git 
sudo pacman -S git 
```
######prepare side directory to store bare Git repo
```bash
mkdir $HOME/.cfg
git init --bare $HOME/.cfg
alias dfgit='usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
######add remote repo to github
```bash
dfgit remote add <remote> <url>
dfgit remote add origin git@github.com:damon232/dotfiles.git
dfgit remote add origin https://github.com/damon232/dotfiles.git 
```    
######generate SSH keys (note: add key to Github profile) 
```bash
ssh-keygen -t rsa -b 4096 -C "<email>"
ssh-add ~/.ssh/<id_rsa>
```

###Usage 
```bash 
dfgit status 
dfgit remote -v
dfgit remote add <remote> <branch-name>
dfgit add .bashrc
dfgit commit -m "Add bashrc"
dfgit push 
dfgit checkout 
```
