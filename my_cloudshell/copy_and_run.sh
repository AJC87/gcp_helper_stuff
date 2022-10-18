#!/bin/bash
# Copy .customize_environment to required location and run it

cp .customize_environment "${HOME}/.customize_environment"

sh "${HOME}/.customize_environment"

if [[ "${SHELL}" =~ 'bash' ]]; then
    readonly LOGIN_FILE='.bashrc'
elif [[ "${SHELL}" =~ 'zsh' ]]; then
    readonly LOGIN_FILE='.zshrc'
else
    echo 'Shell not recognised, exiting...'
fi

echo "${LOGIN_FILE}"

# cat << EOF >> "${HOME}/${LOGIN_FILE}"
# export EDITOR='nano'
# alias k='kubectl'
# EOF
