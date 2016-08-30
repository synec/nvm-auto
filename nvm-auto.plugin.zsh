# Switch node version using nvm if the need arises
function nvm_auto_switch {
  if [ -f .nvmrc ]
  then
    nvm use
  fi
}

function nvm_auto_version {
  echo v1.0.0
}

autoload -U add-zsh-hook
add-zsh-hook chpwd nvm_auto_switch
