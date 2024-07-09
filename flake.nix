{
  description = "My development shells";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
	let
		system = "x86_64-linux";
		pkgs = nixpkgs.legacyPackages.${system};
	in
	{
		devShells.${system} = {
			cpp = import ./cpp.nix { inherit pkgs; };
		};
  };
}
