{ stdenv, lib, fetchurl }:

stdenv.mkDerivation rec {
  pname = "scarb";
  version = "2.8.4";

  src = fetchurl {
    url = "https://github.com/software-mansion/scarb/releases/download/v${version}/scarb-v${version}-x86_64-unknown-linux-gnu.tar.gz";
    sha256 = "sha256-GbbnC+hWV7rl5OAxOvCtBuh9Tv4pTZ1Nr9RI4Dg4lqg=";
  };

  dontBuild = true;

  installPhase = ''
    tar xvf $src
    mkdir -p $out/bin
    cp -r ./bin/* $out/bin
  '';
  
  meta = with lib; {
    
  };
}
