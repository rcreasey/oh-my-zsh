# get the name of the branch we are on
function python_prompt_info() {
  if [[ -d ~/.pythonbrew ]]; then
    python_version=$(~/.pythonbrew/bin/pythonbrew list | grep \* | cut -f2 -d- | awk '{ print $1 }' 2> /dev/null) || return
    echo "$python_version"
  fi
}


