{ pkgs, rustPlatform }:
rustPlatform.buildRustPackage rec {
  name = "le-dns";
  version = "0.2.1";

  src = builtins.fetchGit {
    url = "https://github.com/nightmared/le_dns_online.git";
    ref = "refs/tags/${version}";
  };

  nativeBuildInputs = with pkgs; [ perl pkgconfig ];
  buildInputs = with pkgs; [ openssl ];

  cargoSha256 = "1hl5x70pg1bzdfx0v0dr34w5g8jm0gy1n17ixxqg2rlr4sb8bk40";
}
