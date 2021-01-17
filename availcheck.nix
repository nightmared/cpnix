{ pkgs, rustPlatform }:
rustPlatform.buildRustPackage rec {
  name = "availcheck";
  version = "0.2.1";

  src = builtins.fetchGit {
    url = "https://github.com/nightmared/availcheck.git";
    rev = "d0ad275ad1da0c8aa2dd5d5d26f3bc8bbbe09088";
  };

  cargoSha256 = "0i1zvl87jhqj9z0pf9wcs13ypjbkzqlimwyb975hpwimzcz9c1zq";
}
