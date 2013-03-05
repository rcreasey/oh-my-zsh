# get the name of the ruby version
function rvm_prompt_info() {
  ruby_version=$(~/.rvm/bin/rvm-prompt 2> /dev/null) || return
  [[ ! -z $ruby_version ]] && echo "$ruby_version" | sed 's/ruby-\([0-9\-p]*\)/\1/'
}
