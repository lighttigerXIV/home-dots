{ config, pkgs, ... }:
let
  home = "https://github.com/lighttigerXIV/nix-home";
  config = "https://github.com/lighttigerXIV/nix-home/.config";
in
{
  home.username = "lighttigerxiv";
  home.homeDirectory = "/home/lighttigerxiv";
  home.stateVersion = "24.05";
  home.packages = [ ];
  home.file = {
    ".config/waybar".source = "${config}/waybar";
    ".config/hyprland".source = "${config}/hyprland";
  };
  home.sessionVariables = { };
  programs.home-manager.enable = true;
}
