final: prev: {
  dojo = prev.callPackage ./dojo/package.nix {};
	scarb = pkgs.callPackage ./scarb/package.nix {};
}
