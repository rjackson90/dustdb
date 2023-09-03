{pkgs, ...}: {
  # https://devenv.sh/basics/
  #env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = with pkgs; [
    git
    openjdk20_headless
  ];

  # https://devenv.sh/scripts/
  #scripts.hello.exec = "echo hello from $GREET";

  enterShell = ''
  '';

  # https://devenv.sh/languages/
  languages.nix.enable = true;
  languages.rust.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks = {
    # Shell
    shfmt.enable = true;
    shellcheck.enable = true;

    # Nix
    alejandra.enable = true;

    # Rust
    cargo-check.enable = true;
    clippy.enable = true;
    rustfmt.enable = true;

    # Git commits
    commitizen.enable = true;

    # Editor config
    editorconfig-checker.enable = true;
  };

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
}
