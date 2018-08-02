# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/chris/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker mosh go wakeonlan git-flow-completion react-native yarn zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# Spaceship conf
# NVM
SPACESHIP_NVM_SHOW=true
SPACESHIP_NVM_SYMBOL=''

# GO
SPACESHIP_GOLANG_SHOW=true
SPACESHIP_GOLANG_SYMBOL='GO'

# RUBY
SPACESHIP_RUBY_SHOW=true
SPACESHIP_RUBY_SYMBOL='RB'

# PYENV
SPACESHIP_PYENV_SHOW=false
SPACESHIP_PYENV_SYMBOL='PY'

# VI_MODE
SPACESHIP_VI_MODE_SHOW=true
SPACESHIP_VI_MODE_INSERT="[I]"
SPACESHIP_VI_MODE_NORMAL="[N]"

export PATH=/home/chris/.cargo/bin:$PATH
export ANDROID_HOME=${HOME}/Android/Sdk
export PATH=${PATH}:${ANDROID_HOME}/tools/bin
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=${PATH}:${HOME}/.local/bin
export PYENV_VERSION=anaconda3-4.3.0
export GOPATH=${HOME}/sources/go

alias zconf="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias i3conf="vim ~/.config/i3/config"
alias wkhq="wol -p 65000 -i chrisep.ddns.net D8:CB:8A:DF:DE:14"
alias conhq="mosh --ssh=\"ssh -p 62000\" chrisep.ddns.net -p 60000"
alias kali="sudo docker run -t -i b6416d9aacc5 /bin/bash"
alias run-tor="sudo chroot --userspec=tor:tor /opt/torchroot /usr/bin/tor"
alias increase-temp="sudo mount -o remount,size=10G,noatime /tmp"
alias emc="emacsclient -nc"
alias start-avd="emulator -avd N5 -use-system-libs"
alias radb="sudo adb kill-server && sudo adb start-server && adb devices"
alias stopwatch="date1=\`date +%s\`; while true; do 
   echo -ne \"\$(date -u --date @\$((\`date +%s\` - \$date1)) +%H:%M:%S)\\r\";
done"
alias dbt="xinput disable 10"
alias ebt="xinput enable 10"
alias rndev="adb reverse tcp:8097 tcp:8097"
alias kill-yn="sudo hping3 --udp -p 10000 --destport 10000 --flood 140.117.192.20"
alias run-tf="pyenv activate tensorflow"

export NVM_DIR="/home/chris/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="/home/chris/.pyenv/bin:$PATH"
export PATH="/home/chris/bin:$PATH"
export PATH="/home/chris/.gem/ruby/2.4.0/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
 


[[ -s "/home/chris/.gvm/scripts/gvm" ]] && source "/home/chris/.gvm/scripts/gvm"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/gcloud/google-cloud-sdk/path.zsh.inc' ]; then source '/opt/gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then source '/opt/gcloud/google-cloud-sdk/completion.zsh.inc'; fi
