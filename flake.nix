{
  description = "Geant4 development shell";

  outputs = { self }: {
    templates = {
      default = {
        path = ./dev-shell;
        description = "Nix development shell with Geant4 and ROOT";
        welcomeText = ''
          Run `nix develop` to enter the development environment.
        '';
      };
      dev-shell = self.templates.default;
    };
  };
}
