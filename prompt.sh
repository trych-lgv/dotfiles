unset PROMPT_DIRTRIM
export PS1='\[\e[32m\]\w $(if [ -d .git ]; then echo -n "\[\e[90m\]$(git branch --show-current)"; fi)\[\e[00m\]$ '
