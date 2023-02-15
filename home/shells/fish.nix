{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    shellInit = ''
      fish_add_path ~/.cargo/bin
      fish_add_path /opt/homebrew/bin

      function fish_greeting
        fortune -a | cowsay
      end

      thefuck --alias | source
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
        name = "autopair";
        src = pkgs.fetchFromGitHub {
          owner = "jorgebucaran";
          repo = "autopair.fish";
          rev = "4d1752ff5b39819ab58d7337c69220342e9de0e2";
          sha256 = "sha256-qt3t1iKRRNuiLWiVoiAYOu+9E7jsyECyIqZJ/oRIT1A=";
        };
      }
    ];
  };
}
