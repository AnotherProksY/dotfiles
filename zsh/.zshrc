# Exports
unset RPROMPT
export PROMPT="%F{green}%~ %F{normal}$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH=~/bin:/opt/homebrew/bin:/opt/homebrew/sbin:~/.pyenv/bin:$PATH
export FPATH=/opt/homebrew/share/zsh/site-functions:$FPATH
export EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PASSWORD_STORE_ENABLE_EXTENSIONS=true

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Completions
autoload -Uz compinit && compinit
zmodload -i zsh/complist
zstyle ':completion:*' menu select
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' special-dirs true
zstyle :compinstall filename '/Users/k.fazilov/.zshrc'

# Shift-Tab
bindkey '^[[Z' reverse-menu-complete

# Aliases
alias p='pass'
alias dev='cd /Users/k.fazilov/Dev;ls'
alias ls='ls -GF'
alias o='open .'
alias rm='rm -f'
alias py='python3'
alias pip='python3 -m pip'
alias grep='grep --color=always'
alias genpass='openssl rand -base64 16'
alias fzf='fzf --preview "([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200"'

# Git aliases
alias gita='git add .'
alias gitc='git commit'
alias gitps='git push'
alias gitpl='git pull'
alias gits='git status'
alias gitl='git log --reverse'
alias gitl2='git log --reverse --max-count 2'
alias giff='git diff HEAD^ HEAD'
alias gip='git remote prune origin'
alias gir='git reset --soft HEAD~1'

# Abbrs
alias newtar='echo "tar -czf"'
alias untar='echo "tar -xf"'

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/k.fazilov/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
