{ pkgs, ... }: let
  username = "ecko";
in {
  imports = [
    ./packages
  ];

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    stateVersion = "23.11";

    packages = with pkgs; [
      git
      gnupg
      nerdfonts
      nixpkgs-fmt
      tree
      vscode.fhs
    ];

  };
}
