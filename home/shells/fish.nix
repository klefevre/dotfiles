{pkgs, ...}: {
  programs.fish = {
    enable = true;
    shellInit = ''
      set -gx EDITOR hx

      fish_add_path ~/.cargo/bin
      fish_add_path /opt/homebrew/bin
      fish_add_path ~/mutable_node_modules/bin

      function fish_greeting
        fortune -a | cowsay
      end
    '';
    shellInitLast = ''
      pay-respects fish --alias | source
      docker completion fish | source
    '';
    shellAbbrs = {
      gc = "git commit -m";
      "gc!" = "git commit --amend";
      gb = "git branch -vv";
      gl = "git pull";
      gp = "git push";
      gpf = "git push --force";
      gd = "git diff";
      gco = "git checkout";
      gbc = "git checkout -b";
      gcm = "git checkout master";
      gcd = "git checkout develop";
      grbm = "git rebase master";
      grbd = "git rebase develop";
      gst = "git status";
    };
    plugins = [
      {
        name = "z";
        src = pkgs.fishPlugins.z.src;
      }
      {
        name = "autopair";
        src = pkgs.fishPlugins.autopair.src;
      }
      # long queries notifier
      {
        name = "done";
        src = pkgs.fishPlugins.done.src;
      }
      # history cleaner
      {
        name = "sponge";
        src = pkgs.fishPlugins.sponge.src;
      }
      {
        name = "plugin-git";
        src = pkgs.fishPlugins.plugin-git;
      }
      {
        name = "plugin-kubectl";
        src = pkgs.fetchFromGitHub {
          owner = "blackjid";
          repo = "plugin-kubectl";
          rev = "9de10c9b3bb62fb250ad2e4cac7be12eb8efde6f";
          sha256 = "sha256-nTOFIwSydgKuHUiZZdw8F7cDr9ZyyQ35M++CfP50Y5M=";
        };
      }
    ];
  };
}
