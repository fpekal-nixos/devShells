{ pkgs, ... }:

pkgs.mkShell {
	name = "cpp";

	nativeBuildInputs = [
		pkgs.cmake
		pkgs.gnumake
	];
}
