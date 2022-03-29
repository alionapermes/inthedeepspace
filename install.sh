#!/bin/bash

THEME=inthedeepspace
OMZ_PATH="${HOME}/.oh-my-zsh"
ZSHRC_PATH="${HOME}/.zshrc"
THEMES_PATH="${OMZ_PATH}/custom/themes"

if [[ ! -d  ${OMZ_PATH} ]]; then
    echo "error: oh-my-zsh not found"
    exit
fi

cp "theme/${THEME}.zsh-theme" "${THEMES_PATH}/${THEME}.zsh-theme"
sed -ie "/#/!s/\(ZSH_THEME=\"\w*\"\)/ZSH_THEME=\"${THEME}\"/g" ${ZSHRC_PATH}

