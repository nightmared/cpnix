{ pkgs, rustPlatform }:
rustPlatform.buildRustPackage rec {
  name = "le-dns";
  version = "0.2.1";

  src = builtins.fetchGit {
    url = "https://github.com/nightmared/le_dns_online.git";
    rev = "c9c7c2475c3eaf0a9555ec2a797de347396eb676";
  };

  nativeBuildInputs = with pkgs; [ perl pkgconfig ];
  buildInputs = with pkgs; [ openssl ];

  cargoSha256 = "1mrk1pahkkkns1x1rv2wrfyi5s5kzs3dj9qgpdlmq77y95m94k68";
}
