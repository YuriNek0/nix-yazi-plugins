{
  options =
    { mkKeyOption, ... }:
    _: {
      keys = {
        show = mkKeyOption {
          on = [
            "g"
            "c"
          ];
          run = "plugin vcs-files";
          desc = "Show Git file changes";
        };
      };
    };

  config = { cfg, setKeys, ... }: _: (setKeys cfg.keys);
}
