## zshell customization

These files contain some customized settings that I gleaned from other people's posts.


###  Custom P10k when Virtual Environment is activated

#### Problem

   *  When you activate a new virtual environment, the prompt does NOT show it   
```
python3.9 -m venv venv
source venv/bin/activate
╭─   ~/Documents/Development/DevCore/Server   master:main ?5                    14.15.3  23:44:12
❯ deactivate
```
   
 #### Solution

*  Per [romkatv](https://github.com/romkatv/powerlevel10k/issues/532#issuecomment-592064973):
   
      1. Open ~/.p10k.zsh.
      2. Add this line to it, preferably close to the existing POWERLEVEL9K_VIRTUALENV_SHOW_PYTHON_VERSION parameter:
      
```bash
typeset -g POWERLEVEL9K_VIRTUALENV_GENERIC_NAMES=(virtualenv venv .venv env)
```

   *  While you are there... you can also tweak the following:
   
```bash
typeset -g POWERLEVEL9K_VIRTUALENV_SHOW_PYTHON_VERSION=true
typeset -g POWERLEVEL9K_VIRTUALENV_VISUAL_IDENTIFIER_EXPANSION='⭐'
```
   
      3. restart zsh
   
 #### Verification
 
```
source venv/bin/activate
╭─   ~/Documents/Development/DevCore/Server   master:main ?5    ⭐ 3.9.1 Server  14.15.3  23:45:37
❯ 
```
   *  You can check the settings with
```
() {
emulate -L zsh
typeset -pm 'POWERLEVEL9K_*|ZSH_VERSION|VIRTUAL_ENV'
} | grep -i virtual
typeset -g POWERLEVEL9K_VIRTUALENV_FOREGROUND=37
typeset -g -a POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=( status command_execution_time background_jobs direnv asdf virtualenv anaconda pyenv goenv nodenv nvm nodeenv rbenv rvm fvm luaenv jenv plenv phpenv scalaenv haskell_stack kubecontext terraform aws aws_eb_env azure gcloud google_app_cred context nordvpn ranger nnn vim_shell midnight_commander nix_shell todo timewarrior taskwarrior time newline )
typeset -g -a POWERLEVEL9K_VIRTUALENV_GENERIC_NAMES=( virtualenv venv .venv env )
typeset -g POWERLEVEL9K_VIRTUALENV_RIGHT_DELIMITER=''
typeset -g POWERLEVEL9K_VIRTUALENV_LEFT_DELIMITER=''
typeset -g POWERLEVEL9K_VIRTUALENV_SHOW_WITH_PYENV=false
typeset -g POWERLEVEL9K_VIRTUALENV_VISUAL_IDENTIFIER_EXPANSION=⭐
typeset -g POWERLEVEL9K_VIRTUALENV_SHOW_PYTHON_VERSION=true
```
