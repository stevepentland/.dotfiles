{ config, pkgs, ... }:

{
	imports = [
		./git.nix
		./fish.nix
	];

	programs.htop.enable = true;
}
