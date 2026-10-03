export PATH="$HOME/.local/bin:$PATH"

# Command History Configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups

# Enable syntax highlighting (colors commands green if valid, red if invalid)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable auto-suggestions (guesses what you are typing based on history)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Start the Starship prompt
eval "$(starship init zsh)"

# Modern CLI Replacements
eval "$(zoxide init zsh)"

# Custom Aliases (Shortcuts)
alias ls="eza --icons=always --color=always --group-directories-first"
alias ll="eza -alF --icons=always --color=always --group-directories-first"
alias cat="bat --style=plain"
alias update="yay"

# FZF Keybindings
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Neovim alias
alias nano="nvim"
alias vim="nvim"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias lg-dot='lazygit --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
