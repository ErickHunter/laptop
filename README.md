One command to setup fresh Mac installations.
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/erickhunter/laptop/master/install.sh)"
```


Your probbly going to see this your first time running, 
I need to make it add homebrew to path automatically probbly, otherwise when
the BrewFile comes it can't find the ```brew``` command


```
==> Next steps:
- Run these commands in your terminal to add Homebrew to your PATH:
    echo >> /Users/erickhunter/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/erickhunter/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
- Run brew help to get started
```
