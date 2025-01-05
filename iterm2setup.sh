#!/bin/zsh

BOLD='\033[1m'       #  ${BOLD}      # жирный шрифт (интенсивный цвет)

UNDERLINE='\033[4m'     #  ${UNDERLINE}  # подчеркивание

BLACK='\033[0;30m'     #  ${BLACK}    # чёрный цвет знаков

RED='\033[0;31m'       #  ${RED}      # красный цвет знаков

GREEN='\033[0;32m'     #  ${GREEN}    # зелёный цвет знаков

YELLOW='\033[0;33m'     #  ${YELLOW}    # желтый цвет знаков

BLUE='\033[0;34m'       #  ${BLUE}      # синий цвет знаков

MAGENTA='\033[0;35m'     #  ${MAGENTA}    # фиолетовый цвет знаков

CYAN='\033[0;36m'       #  ${CYAN}      # цвет морской волны знаков

GRAY='\033[0;37m'       #  ${GRAY}      # серый цвет знаков

BREAK='\033[m'       #  ${BREAK}    # все атрибуты по умолчанию

NORMAL='\033[0m'      #  ${NORMAL}    # все атрибуты по умолчанию



echo
echo "start install homebrew"

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "end install homebrew"
echo
echo


echo "check PATH BEFORE"
env $PATH

echo >> "add to PATH"

echo >> $HOME/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "check PATH AFTER"
env $PATH

echo
echo
echo

echo "start install iTerm2"

brew install iterm2

echo "end install iTerm2"

echo
echo
echo


echo "start install Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "end install Oh My Zsh"

echo
echo
echo


echo "start install powerlevel10k theme"
brew install powerlevel10k

echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc

echo "end install powerlevel10k theme"



echo
echo
echo

echo "${RED}${BOLD}${UNDERLINE}TEST RED"
echo "${BREAK}"

echo "add iTerm2 plugins"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sed -i -e 's/(git)/(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc

rm -rf ~/.zshrc-e
echo "add iTerm2 plugins complete"

echo "add iTerm2 plugins"

echo "source ~/.zshclrs" >> ~/.zshrc
echo "colors" >> ~/.zshrc

echo "add iTerm2 plugins complete"