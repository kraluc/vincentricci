# MacOS, if Pyenv is installed with Homebrew
# https://github.com/pyenv/pyenv#basic-github-checkout - step 2.
# https://github.com/pyenv/pyenv/issues/1906#issuecomment-839556656
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:${PATH}"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init --path)"
fi

# Setting PATH for Python 3.6
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
# Setting PATH for Python 3.9
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
# Setting PATH for Python 3.10
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
# Add Visual Studio Code (code)
# https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line
PATH="${PATH}:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH
