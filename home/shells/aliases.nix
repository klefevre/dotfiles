{
  home.shellAliases = {
    "..." = "../..";
    "...." = "../../..";
    "....." = "../../../..";
    "......" = "../../../../..";
    cat = "bat";
    ls = "eza --icons";
    l = "ls -l";
    la = "ls -a";
    ll = "ls -l";
    lla = "ls -la";
    tree = "ls --tree";
    md = "mdcat";
    mk = "minikube";
    stree = "/Applications/Sourcetree.app/Contents/Resources/stree";
    codium = "/Applications/VSCodium.app/Contents/Resources/app/bin/codium";
    reload = "pushd $HOME/.config/nixpkgs && darwin-rebuild switch --flake . && popd";
    vim = "nvim";
    vi = "nvim";
  };
}
