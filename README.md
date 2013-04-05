### INSTALLATION

1. Backup your current settings:
`cd && mv .vim .vim.orig && mv .vimrc .vimrc.orig && mv .gvimrc .gvimrc.orig`

2. Clone config to .vim directory:
`git clone https://github.com/Kanst/vimfiles .vim`

3. Create .vimrc and .gvimrc that load another configs:
`echo 'source ~/.vim/vimrc' > .vimrc

4. Create directories for swap and backup files:
`mkdir ~/.vim/{_backup,_temp}`

5. Fetch packages:
`vim +BundleInstall +qall`

It's all! Next time when you want to update all plugins, you can type just:
`vim +BundleInstall +qall`
