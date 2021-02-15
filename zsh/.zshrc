# Exports
setopt prompt_subst
. ~/git-prompt.sh
export RPROMPT=$'$(__git_ps1 "%s")'
export PROMPT="%F{green}● %~ %F{normal}$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH=~/bin:$PATH
export EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PASSWORD_STORE_ENABLE_EXTENSIONS=true

eval "$(pyenv init -)"

# Completions
autoload -U compinit && compinit
zmodload -i zsh/complist
zstyle ':completion:*' menu select

# Shift-Tab
bindkey '^[[Z' reverse-menu-complete

# Aliases
alias dev='cd /Users/kamilfazilov/Dev;ls'
alias ls='ls -GF'
alias o='open .'
alias rm='rm -f'
alias py='python3'
alias pip='python3 -m pip'
alias grep='grep --color=always'
alias genpass='openssl rand -base64 16'
alias fzf='fzf --preview "([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200"'

#Git aliases
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

#Abbrs
alias newtar='echo "tar -czf"'
alias untar='echo "tar -xf"'

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
