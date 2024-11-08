{ config, pkgs, ... }:
let
  dots-dir = builtins.path {
    path = ./home-dots/dots;
  };
in
{
  home.username = "lighttigerxiv";
  home.homeDirectory = "/home/lighttigerxiv";
  home.stateVersion = "24.05";
  home.packages = [ ];
  home.file = {
    ".bashrc".source = "${dots-dir}/bash/.bashrc";
    ".cargo".source = "${dots-dir}/cargo";
    ".config/fish/".source = "${dots-dir}/fish/";
    ".config/hypr/".source = "${dots-dir}/hyprland/";
    ".config/mako/".source = "${dots-dir}/mako/";
    ".config/starship/".source = "${dots-dir}/starship/";
    ".config/waybar/".source = "${dots-dir}/waybar/";
    ".config/zed/".source = "${dots-dir}/zed/";
  };

  home.sessionVariables = { };

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName = "lighttigerxiv";
    userEmail = "lighttigerxiv@gmail.com";
  };
}
