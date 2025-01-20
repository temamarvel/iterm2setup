# Script to Install and Configure iTerm2

A small script for installing and setting up the iTerm2 terminal emulator for macOS.

It installs:

- the package manager [Homebrew](https://brew.sh/)  
- the terminal emulator [iTerm2](https://iterm2.com/)  
- a framework for terminal customization [Oh My Zsh](https://ohmyz.sh/)  
- plugins for Oh My Zsh to enable syntax highlighting and command autocompletion: `zsh-syntax-highlighting` and `zsh-autosuggestions`  
- the [Powerlevel10k theme](https://github.com/romkatv/powerlevel10k?ysclid=m65h4nkmd8301628962)  
- a script that colors each new terminal tab with a random color  

### Installation

Download the script files from the repository:

- `iterm2env.sh`  
- `iterm2setup.sh`  
- `.zshclrs`  
- `aliases.zshclrs`  

Execute the scripts in sequence:

```bash
./iterm2env.sh
```

```bash
./iterm2setup.sh
```

Launch iTerm2, and the Powerlevel10k theme setup wizard will appear. Customize the theme appearance as you like.

Enjoy using your terminal!

### Uninstallation

Download the script file from the repository:

- `iterm2remove.sh`

Run the script:

```bash
./iterm2remove.sh
```