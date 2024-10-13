{
  programs.git = {
    enable = true;

    userEmail = "1300874+klefevre@users.noreply.github.com";
    userName = "Kévin Lefèvre";

    delta = {
      enable = true;
      options = {
        line-numbers = true;
        side-by-side = true;
      };
    };

    extraConfig = {
      init.defaultBranch = "main";
      core = {
        editor = "hx";
      };
      pull = {
        rebase = true;
        ff = "only";
      };
      pager.diff = true;
      url = {
        "ssh://git@github.com/".insteadOf = "https://github.com/";
        "ssh://git@gitlab.com/".insteadOf = "https://gitlab.com/";
      };
      push.autoSetupRemote = true;
    };

    includes = [
      {
        condition = "gitdir:~/Work/Cryptio/**";
        contents = {
          user.name = "Kévin Lefèvre";
          user.email = "12807736-klefevre1@users.noreply.gitlab.com";
        };
      }
    ];

    ignores = [
      "*~"
      ".DS_Store"
      ".Spotlight-V100"
      ".DocumentRevisions-V100"
      ".Trashes"
    ];
  };
}
