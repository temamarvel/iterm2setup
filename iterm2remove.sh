#!/bin/zsh

source ./aliases.zshclrs

echo "${GREEN}Start remove ${BOLD}powerlevel10k theme"
echo "${BREAK}"

brew uninstall powerlevel10k

echo "${GREEN}End remove ${BOLD}powerlevel10k theme"
echo "${BREAK}"

echo "${GREEN}Start remove ${BOLD}iTerm2 theme"
echo "${BREAK}"

brew uninstall iterm2

echo "${GREEN}End remove ${BOLD}iTerm2 theme"
echo "${BREAK}"

echo "${GREEN}Start remove ${BOLD}Oh My Zsh"
echo "${BREAK}"

sh ~/.oh-my-zsh/tools/uninstall.sh
rm -rf ~/.oh-my-zsh

echo "${GREEN}End remove ${BOLD}Oh My Zsh"
echo "${BREAK}"

echo "${GREEN}Start remove ${BOLD}.zshclrs file"
echo "${BREAK}"

rm -rf ~/.zshclrs

echo "${GREEN}End remove ${BOLD}.zshclrs file"
echo "${BREAK}"