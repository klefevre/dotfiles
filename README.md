# dotfiles

# How to launch

```shell
git clone https://github.com/klefevre/dotfiles ~/.config/nixpkgs
```

### First run

```
nix run nix-darwin -- switch --flake ~/.config/nixpkgs
```

### Then to update

```shell
darwin-rebuild switch --flake ~/.config/nixpkgs
```
