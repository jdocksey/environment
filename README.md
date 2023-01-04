# Environment
These are files and setup procedures for a development environment.

## Web browser extensions
* [Dark Reader](https://darkreader.org/)
* [Custom CSS](https://chrome.google.com/webstore/detail/custom-css-by-denis/cemphncflepgmgfhcdegkbkekifodacd)

## VS Code
### Dependencies
* [JetBrains Mono font](https://www.jetbrains.com/lp/mono/)
* [Nord theme](https://marketplace.visualstudio.com/items?itemName=arcticicestudio.nord-visual-studio-code)
* [Nord Light theme](https://marketplace.visualstudio.com/items?itemName=huytd.nord-light)
* [macros extension](https://marketplace.visualstudio.com/items?itemName=geddski.macros)
* [Peacock extension](https://marketplace.visualstudio.com/items?itemName=johnpapa.vscode-peacock)

### macOS portable installation
If desired, set up symbolic links so that files in this repository can be used by VS Code:
```Bash
ln "/<path to repo>/environment/VS Code/macOS/keybindings.json" /Applications/code-portable-data/user-data/User/keybindings.json
ln "/<path to repo>/environment/VS Code/settings.json" /Applications/code-portable-data/user-data/User/settings.json
```

## SSH keys (macOS)
### Generate a new key
```
ssh-keygen -t ed25519 -C "example@email.com"
```

### Add an entry to the SSH configuration (if necessary)
`~/.ssh/config`:
```
Host example
  Hostname github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/example
```


### Add the key to the SSH agent
```
ssh-add ~/.ssh/example
```
Add the `--apple-use-keychain` flag if the key has a passphrase.
