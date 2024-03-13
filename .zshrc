# Define alias
alias ..='cd ..'
alias ...='cd ../..'
alias ls='ls -GwF'
alias ll='ls -alh'
# Open .zshrc via VS Code
alias zshrc='code ~/.zshrc'
alias gitconfig='code ~/.gitconfig'
alias py3='python3'
alias py='python3'
alias artisan='php artisan'
eval "$(starship init zsh)"
export VOLTA_HOME="$HOME/.volta"
export COMPOSER_HOME="$HOME/.composer"
export PATH="$COMPOSER_HOME/vendor/bin:$VOLTA_HOME/bin:$PATH"
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
export PATH="/Users/Shared/DBngin/mysql/8.0.33/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

eval "$(pyenv init -)"

# pnpm
export PNPM_HOME="/Users/kresnasatya/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

. /opt/homebrew/opt/asdf/libexec/asdf.sh

export PATH=$PATH:/Users/kresnasatya/go/bin