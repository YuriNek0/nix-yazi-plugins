{
  config =
    _:
    { pkgs, ... }:
    {
      programs.yazi = {
        yaziPlugins = {
          require.git = { };
          runtimeDeps = [ pkgs.git ];
        };
        settings.plugin = {
          prepend_fetchers = [
            {
              group = "git";
              url = "*";
              run = "git";
            }
            {
              group = "git";
              url = "*/";
              run = "git";
            }
          ];
        };
      };
    };
}
