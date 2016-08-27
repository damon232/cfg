# Dotfiles for damon
A bare Git repo for maintaining configs. 

###Setup
######download git 
```bash 
sudo apt-get install git 
sudo pacman -S git 
```
######prepare side directory to store bare Git repo
```bash
mkdir $HOME/.dfgit
git init --bare $HOME/.dfgit
alias dfgit='usr/bin/git --git-dir=$HOME/.dfgit/ --work-tree=$HOME'
```
######add remote repo to github
```bash
dfgit remote add origin git@github.com:damon232/dotfiles.git
dfgit remote add origin https://github.com/damon232/dotfiles.git 
```    
######if SSH used; generate SSH keys (note: add key to Github profile) 
```bash
ssh-keygen -t rsa -b 4096 -C "<email>"
ssh-add ~/.ssh/<id_rsa>
```
###Reinstall dotfiles on new system
 
```bash
alias dfgit='/usr/bin/git --git-dir=$HOME/.dfgit/ --work-tree=$HOME'
echo ".dfgit" >> .gitignore 
git clone --bare <git-repo-url> $HOME/.dfgit
dfgit checkout
dfgit config --local status.showUntrackedFiles no 
```

###Usage 
```bash 
dfgit status 
dfgit remote -v
dfgit remote add <remote> <url>
dfgit add .bashrc
dfgit commit -a 
dfgit commit -m "Add bashrc"
dfgit push <remote> <branch-name>
dfgit pull <remote> <branch-name>
dfgit checkout 
```
