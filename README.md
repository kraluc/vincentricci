# zshell customization

These files contain some customized settings that I gleaned from other people's posts.

###  Custom P10k when Virtual Environment is activated

   *  ***Problem***: When you activate a new virtual environment, the prompt does NOT show it
   
   ```
   python3.9 -m venv venv
   source venv/bin/activate
╭─   ~/Documents/Development/DevCore/Server   master:main ?5                    14.15.3  23:44:12
   ❯ deactivate
   ```
   
   *  ***Solution*** Per [romkatv](https://github.com/romkatv/powerlevel10k/issues/532#issuecomment-592064973):
   
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
   
   * Now let's check the behavior after making those changes (restart zsh)
   
   ```
   source venv/bin/activate
╭─   ~/Documents/Development/DevCore/Server   master:main ?5    ⭐ 3.9.1 Server  14.15.3  23:45:37
   ❯ 
   ```
   
