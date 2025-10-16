### ──────────────────────────────
### Plugin Management (Antidote)
### ──────────────────────────────


# Load Antidote
if [[ -f "${ZDOTDIR:-$HOME}/.antidote/antidote.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.antidote/antidote.zsh"
else
  echo "Antidote not found at ~/.antidote/antidote.zsh"
fi


# Initialize Zsh completion system
autoload -Uz compinit
compinit -u


ZSH_PLUGIN_FILE="${ZDOTDIR:-$HOME}/.zsh/.zsh_plugins.zsh"
ZSH_PLUGIN_LIST="${ZDOTDIR:-$HOME}/.zsh/zsh_plugins.txt"


# Build and load plugin bundle
if [[ -f "$ZSH_PLUGIN_LIST" ]]; then
  antidote bundle < "$ZSH_PLUGIN_LIST" > "$ZSH_PLUGIN_FILE"
  source "$ZSH_PLUGIN_FILE"
else
  echo "Plugin list not found: $ZSH_PLUGIN_LIST"
fi
