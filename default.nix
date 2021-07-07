self: super:
let
pkgs = import <nixpkgs> {};
rustPlatform = pkgs.makeRustPlatform {
    cargo = pkgs.rust.packages.stable.cargo;
    rustc = pkgs.rust.packages.stable.rustc;
};
in
{
    s3s = import ./s3s.nix { inherit pkgs rustPlatform; };
    availcheck = import ./availcheck.nix { inherit pkgs rustPlatform; };
    le-dns = import ./le-dns.nix { inherit pkgs rustPlatform; };
}
