# Necessary Fish Bindings
set fish_greeting
set -g fish_key_bindings fish_vi_key_bindings
bind -M insert \cf accept-autosuggestion
bind -M insert alt-backspace backward-kill-word

# Change Alacritty color after login sync with system theme
if test "$ALACRITTY" = "true"
    set -x ANTHROPIC_API_KEY <ENTER YOUR KEY>

    function theme
        cat $HOME/.config/alacritty/$argv[1].toml > $HOME/.config/alacritty/active-theme.toml
    end

    set ALACRITTY_THEME (defaults read -g AppleInterfaceStyle 2>/dev/null; or echo "Light")

    if test "$ALACRITTY_THEME" = "Dark"
        theme "catppuccin-frappe"
    else
        theme "catppuccin-latte"
    end
end

# Start the TMUX session if not already in the tmux session
# Only for Alacritty terminal!
if not set -q TMUX; and test "$ALACRITTY" = "true"
    # Get the session IDs
    set session_ids (tmux list-sessions)

    # Create new session if no sessions exist
    if test -z "$session_ids"
        tmux new-session
    end

    # Select from following choices
    #   - Attach existing session
    #   - Create new session
    #   - Start without tmux
    set create_new_session "Create new session"
    set start_without_tmux "Start without tmux"
    set choices $session_ids $create_new_session: $start_without_tmux:

    set choice (printf "%s\n" $choices | fzf | cut -d: -f1)

    if string match -qr '^[0-9]*$' -- "$choice"
        # Attach existing session
        tmux attach-session -t "$choice"
    else if test "$choice" = "$create_new_session"
        # Create new session
        tmux new-session
    else if test "$choice" = "$start_without_tmux"
        # Start without tmux
        :
    end
end

# Exports
function fish_prompt
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal
    echo -n (fish_git_prompt)
    echo -n ' $ '
end

set -x PATH ~/bin /opt/homebrew/bin /opt/homebrew/sbin ~/.pyenv/bin $PATH
set -x EDITOR nvim
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x PASSWORD_STORE_ENABLE_EXTENSIONS true

status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

# Aliases / functions
alias n nvim
alias dev 'cd /Users/k.fazilov/Dev; ls'
alias ls 'ls -GF'
alias l 'ls -GFla'
alias o 'open .'
alias rm 'rm -rf'
abbr py python3
abbr pip 'python3 -m pip'
alias grep 'grep --color=always'
abbr genpass 'openssl rand -base64 16'

function fzf
    command fzf --preview "([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2>/dev/null | head -200"
end

alias lg lazygit
alias oo 'cd /Users/k.fazilov/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/Second\ Brain'

# Git aliases
alias gita 'git add .'
alias gitc 'git commit'
alias gitps 'git push'
alias gitpl 'git pull'
alias gits 'git status'

function gitl
    git log --reverse --max-count $argv[1]
end

alias gif 'git diff --word-diff=plain'
alias giff 'git diff --word-diff=plain HEAD^ HEAD'
alias gip 'git remote prune origin'
alias gir 'git reset --soft HEAD~1'

# Abbreviations
abbr newtar 'tar -czf'
abbr untar 'tar -xf'

# Columns
set -x COLUMNS 120
