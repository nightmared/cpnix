{ pkgs, rustPlatform }:
rustPlatform.buildRustPackage rec {
  name = "s3s";
  version = "0.1.7";

  src = builtins.fetchGit {
    url = "https://github.com/nightmared/s3s.git";
    ref = "refs/tags/${version}";
  };

  cargoSha256 = "12nnphj55lpw0v7855k7c01v38f366gi5y5xx33dlr9jkz17ijxn";
}
