#!/bin/zsh

source ./aliases.zshclrs

echo
echo "${GREEN}Start install ${BOLD}Homebrew"
echo "${BREAK}"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "${GREEN}End install ${BOLD}Homebrew"
echo "${BREAK}"
echo

echo "${GREEN}Check PATH ${UNDERLINE}before"
echo "${BREAK}"
env $PATH

echo "${GREEN}Add Homebrew to PATH"
echo "${BREAK}"

echo >> $HOME/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "${GREEN}Check PATH ${UNDERLINE}after"
echo "${BREAK}"
env $PATH

echo "${GREEN}Start install ${BOLD}iTerm2"
echo "${BREAK}"

brew install iterm2

echo "${GREEN}End install ${BOLD}iTerm2"
echo "${BREAK}"

echo "${GREEN}Start install ${BOLD}Oh My Zsh"
echo "${BREAK}"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "${GREEN}End install ${BOLD}Oh My Zsh"
echo "${BREAK}"