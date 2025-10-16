### ──────────────────────────────
### Prompt / Theme Configuration
### ──────────────────────────────


# Initialize the Starship prompt
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
else
  echo "Starship not found in PATH"
fi


### ──────────────────────────────
### fzf-tab Configuration
### ──────────────────────────────

# Ensure fzf-tab is loaded
if ! zstyle -L | grep -q ':fzf-tab:'; then
  echo "Configuring fzf-tab..."
fi

# Systemctl preview
zstyle ':fzf-tab:complete:systemctl-*:*' fzf-preview 'SYSTEMD_COLORS=1 systemctl status $word'

# Basic placeholders (optional, for future extensions)
zstyle ':fzf-tab:complete:*:options' fzf-preview
zstyle ':fzf-tab:complete:*:argument-1' fzf-preview

# Generic parameter preview
zstyle ':fzf-tab:complete:(-command-|-parameter-|-brace-parameter-|export|unset|expand):*' \
  fzf-preview 'echo ${(P)word}'

# Git integrations
zstyle ':fzf-tab:complete:git-(add|diff|restore):*' fzf-preview 'git diff $word | delta'
zstyle ':fzf-tab:complete:git-log:*' fzf-preview 'git log --color=always $word'
zstyle ':fzf-tab:complete:git-help:*' fzf-preview 'git help $word | bat -plman --color=always'

zstyle ':fzf-tab:complete:git-show:*' fzf-preview '
  case "$group" in
    "commit tag") git show --color=always $word ;;
    *) git show --color=always $word | delta ;;
  esac
'

zstyle ':fzf-tab:complete:git-checkout:*' fzf-preview '
  case "$group" in
    "modified file") git diff $word | delta ;;
    "recent commit object name") git show --color=always $word | delta ;;
    *) git log --color=always $word ;;
  esac
'

# TLDR and man page previews
zstyle ':fzf-tab:complete:tldr:argument-1' fzf-preview 'tldr --color always $word'

zstyle ':fzf-tab:complete:-command-:*' fzf-preview \
  '(out=$(tldr --color always "$word") 2>/dev/null && echo $out) \
  || (out=$(MANWIDTH=$FZF_PREVIEW_COLUMNS man "$word") 2>/dev/null && echo $out) \
  || (out=$(which "$word") && echo $out) \
  || echo "${(P)word}"'

zstyle ':fzf-tab:complete:(\\|)run-help:*' fzf-preview 'run-help $word'
zstyle ':fzf-tab:complete:(\\|*/|)man:*' fzf-preview 'man $word'
