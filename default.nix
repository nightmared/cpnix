self: super:
let
  pkgs = import <nixpkgs> {
    #crossSystem = (import <nixpkgs/lib>).systems.examples.musl64 // {
    #  rustc.config = "x86_64-unknown-linux-musl";
    #};
    overlays = [ (import (builtins.fetchTarball https://github.com/mozilla/nixpkgs-mozilla/archive/master.tar.gz)) ];
  };
  rustPlatform = pkgs.makeRustPlatform {
    cargo = pkgs.latest.rustChannels.stable.rust;
    rustc = pkgs.latest.rustChannels.stable.rust;
  };
in
{
  s3s = import ./s3s.nix { inherit pkgs rustPlatform; };
  availcheck = import ./availcheck.nix { inherit pkgs rustPlatform; };
  le-dns = import ./le-dns.nix { inherit pkgs rustPlatform; };
}
