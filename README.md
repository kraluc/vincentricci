# Customization Tips

## Powerlevel 10k

P10k is a fantastic Zshell theme from romkatv! - Follow [Get Started](https://github.com/romkatv/powerlevel10k#get-started)

### Set the Terminal Font

+ Open ```iTerm2 Preferences```. Select ```Profile > Text```
+ Below ```Font``` select ```MesloLGS NF```
![set Font to 'MesloLGS NF'](iterm2_font_profile.png)

### Fix the Virtual Environment Prompt

#### The Problem

+ The prompt DOES NOT change after activating a new virtual environment

   ```zsh
   python3.9 -m venv venv
   source venv/bin/activate
   ```

![Prompt Missing the virtual environment](iTerm2-no-virtual-env-prompt.png)

### [Soluttion from romkatv](https://github.com/romkatv/powerlevel10k/issues/532#issuecomment-592064973)

1. Open ~/.p10k.zsh.
2. Add the following line close to the existing parameter ```POWERLEVEL9K_VIRTUALENV_SHOW_PYTHON_VERSION```

   ```zsh
   typeset -g POWERLEVEL9K_VIRTUALENV_GENERIC_NAMES=(virtualenv venv .venv env)
   ```

3. While you are there, you can also tweak the following to force the prompt to show the Python version and add a star icon to emphasize that the virtual environment is active

   ```zsh
   typeset -g POWERLEVEL9K_VIRTUALENV_SHOW_PYTHON_VERSION=true
   typeset -g POWERLEVEL9K_VIRTUALENV_VISUAL_IDENTIFIER_EXPANSION='⭐'
   ```

4. **Restart the shell** - don't just ```source ~/.zshrc```

5. Verify that after activating the virtual environment... the prompt DOES CHANGE
(added star icon, python version and the name of the environment)

   ![Prompt shows the virtual environment](iTerm2-virtual-env-prompt.png)

6. You can confirm the p10k settings with this function (paste this at the prompt)

   ```zsh
   () {
   emulate -L zsh
   typeset -pm 'POWERLEVEL9K_*|ZSH_VERSION|VIRTUAL_ENV'
   } | grep -i virtual
   ```

+ Output

   ```zsh
   typeset -g POWERLEVEL9K_VIRTUALENV_FOREGROUND=37
   typeset -g -a POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=( status command_execution_time background_jobs direnv asdf virtualenv anaconda pyenv goenv nodenv nvm nodeenv rbenv rvm fvm luaenv jenv plenv phpenv scalaenv haskell_stack kubecontext terraform aws aws_eb_env azure gcloud google_app_cred context nordvpn ranger nnn vim_shell midnight_commander nix_shell todo timewarrior taskwarrior time newline )
   typeset -g -a POWERLEVEL9K_VIRTUALENV_GENERIC_NAMES=( virtualenv venv .venv env )
   typeset -g POWERLEVEL9K_VIRTUALENV_RIGHT_DELIMITER=''
   typeset -g POWERLEVEL9K_VIRTUALENV_LEFT_DELIMITER=''
   typeset -g POWERLEVEL9K_VIRTUALENV_SHOW_WITH_PYENV=false
   typeset -g POWERLEVEL9K_VIRTUALENV_VISUAL_IDENTIFIER_EXPANSION=⭐
   typeset -g POWERLEVEL9K_VIRTUALENV_SHOW_PYTHON_VERSION=true
   ```

# zsh-nvm plugin

Customized ```~/.zshrc``` to automatically install ```.zsh-nvm plugin``` - See [lukechilds /
zsh-nvm](https://github.com/lukechilds/zsh-nvm#manually)

```zsh
# zsh-nvm plugin - https://github.com/lukechilds/zsh-nvm
if [[ ! -d "${HOME}/.oh-my-zsh/custom/plugins/zsh-nvm" ]]; then
    git clone https://github.com/lukechilds/zsh-nvm.git ${HOME}/.oh-my-zsh/custom/plugins/zsh-nvm
fi
# ssh-agent plugin - see https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
plugins=(ansible git colored-man-pages colorize pip python brew ssh-agent vagrant virtualenv zsh-nvm)
```

## nvm alias error: ```nvm_list_aliases:36: no matches found: ~/.nvm/alias/lts/*```

+ To avoid this error, we install the latest ```--lts``` version

   ```zsh
   # install the latest LTS version for nvm to avoid error 'nvm_list_aliases:36: no matches found: ~/.nvm/alias/lts/*'
   nvm install --lts && nvm use --lts
   ```

## iTerm2

This continues to be an **awesome** Terminal replacement for macOS ([download](https://iterm2.com/index.html))

### PROFILE MANAGEMENT

+ If you use different machines, you can port your profiles easily and save them as a JSON file

   1. Go to ```Preferences```
   2. Select a Profile (create one)
   3. Select the Profile Advanced tab
   4. Click ```Other Actions``` to import/export/duplicate your profiles

   ![manage profiles](iTerm-Pref-Prof-SaveAll.png)

### Configure iTerm2 to be the default terminal for ```telnet```, ```ssh```, etc

#### INSTALL HOMEBREW

+ [Homebrew](https://brew.sh/) documentation
+ Open ```Terminal.app``` or ```iTerm.app```
+ At the prompt paste:

   ```zsh
      sudo xcode-select --install
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

#### INSTALL```TELNET```

1. Use homebrew to install telnet
   + available as a standalone ```telnet``` formula
   + or bundled with other networking utilites from ```inetutils```  <<<  We choose this approach below

   ```zsh
      brew install inetutils
   ```


2. ```inetutils``` includes several utilities

   ```zsh
   ❯ brew info inetutils
   < snip >
   The following commands have been installed with the prefix 'g'.

      dnsdomainname
      ftp
      rcp
      rexec
      rlogin
      rsh
      telnet    <<<<<<
   ```

3. Confirm the PATH to ```telnet```

   ```zsh
   ❯ which -a telnet
   /usr/local/bin/telnet
   ```


#### CONFIGURE URL SCHEMES

+ This will ensure that iTerm is the default Terminal application when clicking URLs for a specified protocol

1. Select your iTerm profile  (General Tab)
2. Click the combo box 'Select URL Schemes'
![iTerm Preferences > General Tab](iTerm-Preferences.png)


3. Click a protocol
![URL Schemes - select a protocol(s)> ](iTerm2-select-protocol.png)