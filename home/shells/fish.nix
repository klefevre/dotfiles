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
        name = "thefuck";
        src = pkgs.fetchFromGitHub {
          owner = "oh-my-fish";
          repo = "plugin-thefuck";
          rev = "6c9a926d045dc404a11854a645917b368f78fc4d";
          sha256 = "sha256-9MbkyEsMsZH+3ct7qJSPvLeLRfVkDEkXRTdg/Rhe0dg";
        };
      }
      {
        name = "plugin-kubectl";
        src = pkgs.fetchFromGitHub {
          owner = "blackjid";
          repo = "plugin-kubectl";
          rev = "f3cc9003077a3e2b5f45e3988817a78e959d4131";
          sha256 = "sha256-9MbkyEsMsZH+3ct7qJSPvLeLRfVkDEkXRTdg/Rhe0dg";
        };
      }
      {
        name = "fish-docker";
        src =
          pkgs.fetchFromGitHub
          {
            owner = "halostatue";
            repo = "fish-docker";
            rev = "5b8266b0e3d78db1283a01d60724a9bc10325608";
            sha256 = "sha256-9MbkyEsMsZH+3ct7qJSPvLeLRfVkDEkXRTdg/Rhe0dg";
          };
      }
    ];
  };
}
