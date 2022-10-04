with import <unstable> { };
stdenv.mkDerivation {
  name = "shell";
  buildInputs = with pkgs;
    [
      gcc
      ccls

    ];
  shellHook = ''
    set -o vi
    alias v='vim'
  '';
}
