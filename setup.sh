# Clear the terminal after each step to make it clear what's going on
clear

# Set up some local variables
EMAIL="michaeljang86@gmail.com"
SOURCE_DIR="~/Dropbox/bin"


##################################################
# Show Library folder
chflags nohidden ~Library

##################################################
# # Set up ssh key for git
# echo "Let's set up your SSH keys to use with git."
# echo "You can just accept the default file to use."
# ssh-keygen -t rsa -b 4096 -C "${EMAIL}"

# # SSH_KEY_FILE="id_rsa" ## not sure when to use this vs the other one
# SSH_KEY_FILE="id_ed25519"

# echo "Starting SSH agent"
# eval "$(ssh-agent -s)"

# echo "Creating config to automatically load keys into the ssh-agent"
# echo "and store passphrases in your keychain."
# touch ~/.ssh/config
# echo "Host *
#   AddKeysToAgent yes
#   UseKeychain yes
#   IdentityFile ~/.ssh/id_ed25519" > ~/.ssh/config

# echo "Adding the new key to the ssh-agent..."
# ssh-add --apple-use-keychain ~/.ssh/${SSH_KEY_FILE}

# pbcopy < ~/.ssh/${SSH_KEY_FILE}.pub
# echo "Your new SSH key has been copied to your clipboard."
# echo "You can add it to your GitHub account following the instructions found here:"
# echo "https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account"
# echo "You can also just Cmd-click this link to go directly to your settings page:"
# echo "https://github.com/settings/keys"

# Set up VSCode as git editor
# git config --global core.editor "code --wait"

##################################################

# # Install homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# brew install bat
# brew install ag
# brew install --cask \
#     qlcolorcode \
#     qlstephen \
#     qlmarkdown \
#     quicklook-json \
#     qlprettypatch \
#     quicklook-csv \
#     betterzip \
#     webpquicklook \
#     suspicious-package


# # Set up nvm and node
# brew install nvm
# nvm install --lts


##################################################

# Link preferences to Dropbox
SOURCE_DIR="~/Dropbox/Applications"
TARGET_DIR="~/Dropbox/Library/Application\ Support"
sudo ln -s ${SOURCE_DIR}/Alfred ${TARGET_DIR}/Alfred
sudo ln -s ${SOURCE_DIR}/Code ${TARGET_DIR}/Code
sudo ln -s ${SOURCE_DIR}/CodeExtensions ~/.vscode/Extensions
  # See also: https://www.briankoponen.com/visual-studio-code-settings-extensions-migration/
