##
# zsh
# https://github.com/sorin-ionescu/prezto

# Launch Zsh
# zsh

# install prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

cat assets/zshrc > ~/.zshrc
source ~/.zshrc

echo 'export EDITOR="vim"
export VISUAL=vim
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_EXIT_CODE_SHOW=true
' >> ~/.zshrc

# customize prezto
cp assets/custom_zpreztorc ~/.zpreztorc
source ~/.zshrc

# Set Zsh as default shell
chsh -s /bin/zsh


##
# vim
# https://github.com/amix/vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime

sh ~/.vim_runtime/install_awesome_vimrc.sh

# customize
cat assets/my_configs.vim >> ~/.vim_runtime/my_configs.vim


##
# Git
cp assets/gitignore ~/.gitignore_global

# https://github.com/GitAlias/gitalias
curl -O https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt

mkdir ~/.gitconfig.d
cp assets/gitconfig-linkedin.txt ~/.gitconfig.d/
mv assets/gitalias.txt ~/.gitconfig.d/

cp assets/gitconfig.txt ~/.gitconfig

# https://github.com/tj/git-extras
brew install git-extras
source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh

# https://github.com/Fakerr/git-recall
yarn global add git-recall
