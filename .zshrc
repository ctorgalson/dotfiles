# Managed by Ansible. This file may be overwritten when playbooks are run!

source ~/.zinit/bin/zinit.zsh

# Load OMZ Git library
zinit snippet OMZL::git.zsh

# Load Git plugin and others from OMZ
zinit snippet OMZP::git
zinit snippet OMZP::history
zinit snippet OMZ::plugins/zsh-history-substring/zsh-history-substring.plugin.zsh
zinit snippet OMZP::nvm
zinit snippet OMZP::ssh-agent
zinit snippet OMZ::plugins/z/z.plugin.zsh
zinit cdclear -q # <- forget completions provided up to this moment.

setopt promptsubst

# Load theme from OMZ
zinit light denysdovhan/spaceship-prompt

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH=/home/ctorgalson/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="False"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="False"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="False"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="False"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="False"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="False"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="False"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="False"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=$ZSH/custom

# Antigen theme and plugin installs.
# antigen theme denysdovhan/spaceship-prompt
# antigen bundle git
# antigen bundle history
# antigen bundle history-substring-search
# antigen bundle nvm
# antigen bundle ssh-agent
# antigen bundle z

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git history history-substring-search nvm ssh-agent z)

# source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
