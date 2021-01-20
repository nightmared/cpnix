{ pkgs, rustPlatform }:
rustPlatform.buildRustPackage rec {
  name = "availcheck";
  version = "0.2.1";

  src = builtins.fetchGit {
    url = "https://github.com/nightmared/availcheck.git";
    ref = "refs/tags/${version}";
  };

  cargoSha256 = "0i1zvl87jhqj9z0pf9wcs13ypjbkzqlimwyb975hpwimzcz9c1zq";
}
