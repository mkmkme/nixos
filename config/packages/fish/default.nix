{pkgs, ...} : {
  programs.fish = {
    enable = true;
    plugins = [
      { name = "bass"; src = pkgs.fishPlugins.bass.src; }
      { name = "fzf"; src = pkgs.fishPlugins.fzf.src; }
      { name = "plugin-git"; src = pkgs.fishPlugins.plugin-git.src; }
      { name = "tide"; src = pkgs.fishPlugins.tide.src; }
      { name = "z"; src = pkgs.fishPlugins.z.src; }
    ];
  };

  home.file.".config/fish/conf.d/bang.fish".source = ./bang.fish;
  home.file.".config/fish/conf.d/keychain.fish".source = ./keychain.fish;
}
