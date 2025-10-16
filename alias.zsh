### ──────────────────────────────
### Aliases
### ──────────────────────────────


# Maven
alias mci="mvn clean install"
alias mvnci="mvn clean install"

# Movement
alias up="cd ..; ls"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias c="clear"
alias :q="exit"

# Vim
alias nv="nvim"
alias snv="sudoedit"
alias nn="nvim ."

# Data
alias e="ranger ."
alias cal=calcurse
alias ls="exa --icons"

# AI
alias llama2="ollama run llama2"
alias tllama="ollama run tinyllama"
alias gem1="ollama run gemma3:b1"
alias gem4="ollama run gemma3:b4"

# Virus Scan
alias vcheck="clamscan -r"
alias pcheck="sudo cat /var/log/clamav/clamav.log"

# Programming
alias c++=compile_cpp
alias github="git clone https://github.com/"
alias github="clone_github"

# Keyboard
alias keyboardDE="sudo setxkbmap de && setxkbmap -option caps:escape"
alias keyboardUS="sudo setxkbmap us && setxkbmap -option caps:escape && setxkbmap -option compose:ralt"

# Mod
alias cat="bat"
