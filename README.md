One command to setup fresh Mac installations. 
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/erickhunter/laptop/master/install.sh)"
```
After it is done you should see Oh My ZSH. Close the terminal and open iterm.

Then set up P10k
```git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k```

Then open ```~/.zshrc```, find the line that sets ```ZSH_THEME```, and change its value to ```powerlevel10k/powerlevel10k```. Then quit and reopen iterm and follow the instructions.

 If you want to ever change the theme of p10k just run ```p10k configure```.
