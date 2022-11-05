{ pkgs, ... }:
{
  home.shellAliases = {
    ".." = "cd ..";
    "..." = "cd ../..";
    "...." = "cd ../../..";
    "....." = "cd ../../../..";
    "......" = "cd ../../../../..";
    cat = "bat";
    ls = "lsd";
    l = "ls -l";
    la = "ls -a";
    ll = "ls -l";
    lla = "ls -la";
    tree = "ls --tree";
    k = "kubectl";
    dc = "docker-compose";
    md = "mdcat";
    mk = "minikube";
    tf = "terraform";
    hms = "home-manager switch";
    szsh = "source ~/.zshrc";
    stree = "/Applications/Sourcetree.app/Contents/Resources/stree";
    reload = "darwin-rebuild -I \"darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix\" switch --flake \"$HOME/.config/nixpkgs\"";
    vim = "nvim";
    vi = "nvim";
  };
}
