{
  description = "going through book Programming in C";
  inputs.nixpkgs.url = "nixpkgs";
  outputs = inputs:
    let pkgs = import inputs.nixpkgs { system = "x86_64-linux"; };
    in {
      devShell.x86_64-linux =
        pkgs.mkShell { buildInputs = with pkgs; [ gcc ccls ]; };
    };
}
