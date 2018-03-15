#! env sh

if ( brew --version ) < /dev/null > /dev/null 2>&1; then
    echo 'Homebrew is already installed!'
else
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi

if ( brew cask --version; ) < /dev/null > /dev/null 2>&1; then
    echo 'Caskroom tapped already'
else
    brew tap caskroom/cask;
fi

if ( brew bundle check; ) < /dev/null > /dev/null 2>&1; then
    echo 'Brewfiles enabled'
else
    brew tap Homebrew/bundle;
    brew bundle;
fi

brew cleanup;
brew prune;
brew doctor;

cd ~;
git init;
git clone https://github.com/kevinSuttle/dotfiles.git .;
git checkout -t origin/master
git remote add origin https://github.com/kevinSuttle/dotfiles.git;
git fetch origin;
mkdir -p ~/code && cd $_;

# git clone https://github.com/kevinSuttle/macOS-Defaults.git macOS-defaults -b suttle && cd $_;
# source .osx;

rbenv install 2.4.3;
rbenv global 2.4.3;
mkdir -p ~/.nvm;
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash;

nvm install --lts;
npm install --global pure-prompt;
