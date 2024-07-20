{python3}: let
  callPackage = python3.pkgs.callPackage;
in {
  xonsh-direnv = callPackage ./xonsh-direnv {};

  xontrib-abbrevs = callPackage ./xontrib-abbrevs {};

  xontrib-bashisms = callPackage ./xontrib-bashisms {};

  xontrib-broot = callPackage ./xontrib-broot {};

  xontrib-chatgpt = callPackage ./xontrib-chatgpt {};

  xontrib-clp = callPackage ./xontrib-clp {};

  xontrib-debug-tools = callPackage ./xontrib-debug-tools {};

  xontrib-distributed = callPackage ./xontrib-distributed {};

  xontrib-dot-dot = callPackage ./xontrib-dot-dot {};

  xontrib-fish-completer = callPackage ./xontrib-fish-completer {};

  xontrib-gitinfo = callPackage ./xontrib-gitinfo {};

  xontrib-jedi = callPackage ./xontrib-jedi {};

  xontrib-jupyter = callPackage ./xontrib-jupyter {};

  xontrib-prompt-starship = callPackage ./xontrib-prompt-starship {};

  xontrib-readable-traceback = callPackage ./xontrib-readable-traceback {};

  xontrib-sh = callPackage ./xontrib-sh {};

  xontrib-term-integrations = callPackage ./xontrib-term-integrations {};

  xontrib-vox = callPackage ./xontrib-vox {};

  xontrib-whole-word-jumping = callPackage ./xontrib-whole-word-jumping {};

  xontrib-zoxide = callPackage ./xontrib-zoxide {};
}
