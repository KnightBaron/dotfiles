local prompt_prefix=" %{$fg[white]%}and%{$reset_color%} virtualenv:%{$fg[yellow]%}"
local prompt_suffix="%{$reset_color%}"  # Ending space will be added automatically

function virtualenv_prompt_info(){
  local virtualenv_path="$VIRTUAL_ENV"
  if [[ -n $virtualenv_path ]]; then
    local virtualenv_name=`basename $virtualenv_path`
    printf "%s%s%s" $prompt_prefix $virtualenv_name $prompt_suffix
  fi
}

export VIRTUAL_ENV_DISABLE_PROMPT=1
