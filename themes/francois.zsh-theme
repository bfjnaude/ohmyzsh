# purple username
username() {
   echo "%{$FG[012]%}%8>>%n% %<<%{$reset_color%}"
}

# current directory, two levels deep
directory() {
   echo "%2~"
}

# git info
git_output() {
   echo "%{$FG[034]%}$(git_prompt_info)%{$reset_color%}"
}

# current kubectl context 
kube_ctx() {
   echo "%{$FG[004]%}*$(kccc)%{$reset_color%}"
}

# current time with milliseconds
current_time() {
   echo "%*"
}

# returns 👾 if there are errors, nothing otherwise
return_status() {
   echo "%(?..👾)"
}

# set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# putting it all together
PROMPT='$(username) $(directory)$(git_output) %% '
RPROMPT='$(kube_ctx) $(current_time)'
