### ──────────────────────────────
### Environment Configuration
### ──────────────────────────────


# ── User binaries ────────────────
path+=("$HOME/.local/bin" "$HOME/Programs")


# ── Bun ──────────────────────────
export BUN_INSTALL="$HOME/.bun"
if [[ -d "$BUN_INSTALL/bin" ]]; then
  path+=("$BUN_INSTALL/bin")
fi


# ── Pyenv ────────────────────────
export PYENV_ROOT="$HOME/.pyenv"
if [[ -d "$PYENV_ROOT/bin" ]]; then
  path+=("$PYENV_ROOT/bin")
fi


# ── SDKMAN ───────────────────────
export SDKMAN_DIR="$HOME/.sdkman"


# ── Desktop Env ──────────────────
export XDG_CURRENT_DESKTOP="sway"


# ── Apply updated PATH ───────────
export PATH
