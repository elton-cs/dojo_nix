{ stdenv, lib, fetchurl }:

stdenv.mkDerivation rec {
  pname = "dojoengine-tools";
  version = "1.0.9";

  src = fetchurl {
    url = "https://github.com/dojoengine/dojo/releases/download/${version}/dojo_v${version}_linux_amd64.tar.gz";
    sha256 = "sha256-iNlpWA5J8g2RXpFKi4RQxGR4FqGq+Xa0EpwetLcxoMg=";
  };

  dontBuild = true;

  unpackPhase = ''
    tar xvf $src
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp sozo $out/bin/sozo
    cp katana $out/bin/katana
    cp torii $out/bin/torii
    cp dojo-language-server $out/bin/dojo-language-server
  '';
  
  meta = with lib; {
    
  };
}
