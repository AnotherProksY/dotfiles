# Start the TMUX session if not alraedy in the tmux session
if [[ ! -n $TMUX  ]]; then
  # Get the session IDs
  session_ids="$(tmux list-sessions)"

  # Create new session if no sessions exist
  if [[ -z "$session_ids" ]]; then
    tmux new-session
  fi

  # Select from following choices
  #   - Attach existing session
  #   - Create new session
  #   - Start without tmux
  create_new_session="Create new session"
  start_without_tmux="Start without tmux"
  choices="$session_ids\n${create_new_session}:\n${start_without_tmux}:"
  choice="$(echo $choices | fzf | cut -d: -f1)"

  if expr "$choice" : "[0-9]*$" >&/dev/null; then
    # Attach existing session
    tmux attach-session -t "$choice"
  elif [[ "$choice" = "${create_new_session}" ]]; then
    # Create new session
    tmux new-session
  elif [[ "$choice" = "${start_without_tmux}" ]]; then
    # Start without tmux
    :
  fi
fi

# Exports
unset RPROMPT
export PROMPT="%F{green}%~ %F{normal}$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH=~/bin:/opt/homebrew/bin:/opt/homebrew/sbin:~/.pyenv/bin:/opt/homebrew/opt/openjdk@11/bin:$PATH
export FPATH=/opt/homebrew/share/zsh/site-functions:$FPATH
export EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PASSWORD_STORE_ENABLE_EXTENSIONS=true

# Option key movement
bindkey -e
bindkey '\e\e[C' forward-word
bindkey '\e\e[D' backward-word

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# History setup
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
setopt EXTENDED_HISTORY

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
zstyle ':completion:*:descriptions' format "$fg[yellow]%B--- %d%b"
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format "$fg[red]No matches for:$reset_color %d"
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
zstyle :compinstall filename '/Users/k.fazilov/.zshrc'

# Up / Down arrow history for current command
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# Shift-Tab
bindkey '^[[Z' reverse-menu-complete

# Aliases
alias vim='nvim'
alias dev='cd /Users/k.fazilov/Dev;ls'
alias ls='ls -GF'
alias l='ls -GFla'
alias o='open .'
alias rm='rm -rf'
alias py='python3'
alias pip='python3 -m pip'
alias grep='grep --color=always'
alias genpass='openssl rand -base64 16'
alias fzf='fzf --preview "([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200"'
alias lg='lazygit'
alias lgit='lazygit'

# Git aliases
alias gita='git add .'
alias gitc='git commit'
alias gitps='git push'
alias gitpl='git pull'
alias gits='git status'
alias gitl='f() { git log --reverse --max-count $1 };f'
alias gitl2='git log --reverse --max-count 2'
alias gif='git diff --word-diff=plain'
alias giff='git diff --word-diff=plain HEAD^ HEAD'
alias gip='git remote prune origin'
alias gir='git reset --soft HEAD~1'

# Abbrs
alias newtar='echo "tar -czf"'
alias untar='echo "tar -xf"'

# FZF
source <(fzf --zsh)

export COLUMNS="120"

export PATH="$PATH:/Users/k.fazilov/Dev/flutter/bin"
