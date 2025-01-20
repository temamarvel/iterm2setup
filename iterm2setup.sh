#!/bin/zsh

source ./aliases.zshclrs

echo "${GREEN}Start install ${BOLD}powerlevel10k theme"
echo "${BREAK}"

brew install powerlevel10k
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc

echo "${GREEN}End install ${BOLD}powerlevel10k theme"
echo "${BREAK}"

echo "${GREEN}Start add ${BOLD}plugins to iTerm2"
echo "${BREAK}"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sed -i -e 's/(git)/(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc
rm -rf ~/.zshrc-e

echo "${GREEN}End add ${BOLD}plugins to iTerm2 "
echo "${BREAK}"

#add ramdom color to new tab
cp .zshclrs ~
echo "source ~/.zshclrs" >> ~/.zshrc
echo "color" >> ~/.zshrc