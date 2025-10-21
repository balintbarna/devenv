self: projectRoot:
{
  pkgs,
  inputs ? { nixpkgs = pkgs; },
  modules,
}:
self.lib.mkShell {
  inputs = {
    self = projectRoot;
  } // inputs;
  inherit pkgs modules;
}
