### ──────────────────────────────
### ZSH INIT
### ──────────────────────────────


source ${HOME}/.zsh/packages.zsh
source ${HOME}/.zsh/settings.zsh
source ${HOME}/.zsh/themes.zsh
source ${HOME}/.zsh/env.zsh
source ${HOME}/.zsh/tools.zsh
source ${HOME}/.zsh/alias.zsh
source ${HOME}/.zsh/functions.zsh

if [[ -f ${HOME}/.zsh/custom_alias.zsh ]]; then
        source ${HOME}/.zsh/custom_alias.zsh
fi

bindkey -v
