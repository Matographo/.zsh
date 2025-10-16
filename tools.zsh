### ──────────────────────────────
### Tools
### ──────────────────────────────


# Bun
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# Pyenv
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# SDKMAN
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
