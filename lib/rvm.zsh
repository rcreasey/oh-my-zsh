# get the name of the branch we are on
function rvm_prompt_info() {
  ruby_version=$(~/.rvm/bin/rvm-prompt 2> /dev/null | sed -e 's/ruby\-//') || return
  echo "$ruby_version"
}


