with import <nixpkgs> { }; mkShell { buildInputs = with pkgs; [ gcc ccls ]; }
