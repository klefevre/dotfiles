{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Fundamental
    git-crypt
    httpie # cool http client
    ran # quick local webserver
    rename
    wget

    # Modern rust tools
    bat # better `cat`
    bottom # better `top`
    du-dust # better `du`
    fd # better `find`
    hyperfine # benchmarking tool
    lsd # better `ls`
    procs # better `ps`
    ripgrep # better `grep`
    xsv

    # Rust dev
    rustup

    # Node dev
    nodejs
    yarn

    # DevOps stuff
    k9s
    awscli2

    # Nix stuff
    rnix-lsp
    nixpkgs-fmt

    # Funny
    neofetch # fancy system and hardware info
    mdcat # Fancy cat for markdown
    thefuck
    fortune
    cowsay

  ] ++ lib.optionals stdenv.isDarwin [
    coreutils # provides `dd` with --status=progress

  ] ++ lib.optionals stdenv.isLinux [
    iputils # provides `ping`, `ifconfig`, ...
    libuuid # `uuidgen` (already pre-installed on mac)
  ];

}
