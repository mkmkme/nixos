{
  programs.git = {
    enable = true;
    userName = "Mikhail Koviazin";
    userEmail = "github@mkmk.aleeas.com";
    signing.key = "84B8858C6A88D77C";
    extraConfig = {
      commit.gpgSign = true;
      core.pager = "less -FRX";
      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
      tag.gpgSign = true;
    };
    aliases.root = "rev-parse --show-toplevel";
  };
}
