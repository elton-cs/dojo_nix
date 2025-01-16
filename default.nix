{ pkgs ? import <nixpkgs> {} }:

{
	dojo = pkgs.callPackage ./dojo/package.nix {};
	scarb = pkgs.callPackage ./scarb/package.nix {};
}
