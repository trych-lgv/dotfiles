unset PROMPT_DIRTRIM
__git_branch() {
    local b
    b=$(git --no-optional-locks branch --show-current 2>/dev/null) || return
    [ -n "$b" ] && printf ' %s' "$b"
}
PS1='\[\e[32m\]\w\[\e[90m\]$(__git_branch)\[\e[00m\]$ '

[ -f /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
