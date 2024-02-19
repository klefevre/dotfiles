{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Fundamental
    git-crypt
    httpie # cool http client
    ran # quick local webserver
    rename
    wget

    # Modern tools
    bat # better `cat`
    bottom # better `top`
    du-dust # better `du`
    fend # brbitrary-precision unit-aware calculator
    fd # better `find`
    fx # json viewer with folding feature
    hyperfine # benchmarking tool
    eza # better `ls` (previously lsd)
    procs # better `ps`
    ripgrep # better `grep`
    xsv

    # Networking stuff
    ipcalc
    iperf
    nmap

    # Rust dev
    rustup

    # DevOps stuff
    awscli2
    k9s
    kubectx
    kubernetes-helm
    kubeseal
    pg_activity

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
