{ pkgs, rustPlatform }:
rustPlatform.buildRustPackage rec {
  name = "s3s";
  version = "0.1.7";

  src = builtins.fetchGit {
    url = "https://github.com/nightmared/s3s.git";
    ref = "refs/tags/${version}";
  };

  cargoSha256 = "0qga3wnbr2q5l9v6w3iqgn3dh6zzr9nnc3k3cjw1wj7i9lkpqcsq";
}
