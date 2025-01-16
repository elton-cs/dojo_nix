final: prev: {
  dojo = prev.callPackage ./package.nix {};
	scarb = pkgs.callPackage ./scarb/package.nix {};
}
