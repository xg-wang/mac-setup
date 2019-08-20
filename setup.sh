# First setup system preferences: http://sourabhbajaj.com/mac-setup/SystemPreferences/


##
# Mac
echo "xcode"

xcode-select --install

mkdir ~/Workspace

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

sudo chown -R $(whoami) /usr/local/Cellar

echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

brew update

# Install things with homebrew
brew install git zsh node yarn ruby
brew install wget hub tree ack the_silver_searcher fzf

# Install things with zsh
zsh -c run_as_zsh.sh

# Git
ln -s ${HOME}/dotfiles/assets/gitignore ${HOME}/.gitignore_global

# https://github.com/GitAlias/gitalias
curl -O https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt

mkdir ~/.gitconfig.d
mv ${HOME}/dotfiles/assets/gitalias.txt ${HOME}/.gitconfig.d/
ln -s ${HOME}/dotfiles/assets/gitconfig-linkedin.txt ${HOME}/.gitconfig.d/

ln -s ${HOME}/dotfiles/assets/gitconfig.txt ${HOME}/.gitconfig

# https://github.com/tj/git-extras
brew install git-extras
source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh
# https://github.com/so-fancy/diff-so-fancy
brew install diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global color.ui true
git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"
git config --global color.diff.meta       "11"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"

# nvim
brew install neovim
gem install neovim
yarn global add neovim typescript
mkdir -p ~/.config/nvim/
ls -s ${HOME}/dotfiles/assets/init.vim ${HOME}/.config/nvim/init.vim

# Install font
brew tap homebrew/cask-fonts
brew cask install font-hack

# Install Apps
brew cask install alfred appcleaner spectacle flux dash iterm2 visual-studio-code fliqlo
