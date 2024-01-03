# https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line
PATH="${PATH}:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH
# Set homebrew shell environment
if [[ -d /opt/homebrew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
# Setting PATH for Python 3.7
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
