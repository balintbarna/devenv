{ self }:
{ projectRoot }:
{
  pkgs,
  inputs,
  modules,
}:
self.lib.mkShell {
  inputs = {
    self = projectRoot;
  } // inputs;
  inherit pkgs modules;
}
