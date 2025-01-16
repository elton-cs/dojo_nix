{ pkgs }:
{
	dojo = pkgs.callPackage ./package.nix {};
	scarb = pkgs.callPackage ./scarb/package.nix {};
}
