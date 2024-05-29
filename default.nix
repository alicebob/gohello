let
  sources = import ./npins/default.nix;
  pkgs = import sources.nixpkgs { };
in
{
  gohello = pkgs.buildGoModule {
    name = "gohello";
    # buildInputs = [ gocache ];
    src = pkgs.lib.sourceByRegex ./. [
      "go.(mod|sum)"
      ".*\.go"
    ];
    vendorHash = null; # uses ./vendor/
    doCheck = false;
  };

  shell = pkgs.mkShellNoCC {
    packages = [
      pkgs.nixfmt-rfc-style
      pkgs.npins
    ];
  };
}
