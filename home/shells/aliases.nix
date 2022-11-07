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
    md = "mdcat";
    mk = "minikube";
    szsh = "source ~/.zshrc";
    stree = "/Applications/Sourcetree.app/Contents/Resources/stree";
    reload = "pushd $HOME/.config/nixpkgs && darwin-rebuild switch --flake . && popd";
    vim = "nvim";
    vi = "nvim";
  };
}
