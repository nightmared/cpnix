{ pkgs, rustPlatform }:
rustPlatform.buildRustPackage rec {
  name = "availcheck";
  version = "0.2.1";

  src = builtins.fetchGit {
    url = "https://github.com/nightmared/availcheck.git";
    ref = "refs/tags/${version}";
  };

  cargoSha256 = "04jgqvyiw939jz95bnvy66l9si1iqhkaygvhrsjg0zh24qdinkfs";
}
