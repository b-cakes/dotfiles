# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH 

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="" # set by `omz`

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=()

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( 
    zsh-syntax-highlighting 
    zsh-interactive-cd 
    zsh-autosuggestions
)


source $ZSH/oh-my-zsh.sh


# User configuration

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
export FZF_DEFAULT_OPTS='
    --color 16
'

# export MANPATH="/usr/local/man:$MANPATH"
export PATH="/Users/johnharpt/.local/bin:$PATH"

# Use TAB for confirming autosuggestions
# Uncomment the below to use TAB for autosuggestions.
# bindkey '\t' autosuggest-accept

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='nvim'

# Aliases can be placed here, though omz users
# are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ls='eza --icons -l'
alias la='eza -a --icons'
alias ll='eza -l -a --icons'
alias l='eza -l -a --icons -h --no-permissions --no-user'
alias rich='rich --syntax'
alias py='python3'

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# sourcing startship
eval "$(starship init zsh)"
