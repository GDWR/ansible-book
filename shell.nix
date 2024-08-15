{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  packages = with pkgs; [
    ansible
    sshpass
    vagrant
  ];
}
