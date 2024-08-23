{ lib
, fetchFromGitHub
, fetchYarnDeps
, stdenv
, stdenvNoCC
, yarnConfigHook
, yarnBuildHook
, npmHooks
, nodejs
, yarn-lock-converter
, fixup-yarn-lock
}:

stdenv.mkDerivation (finalAttrs: {
  name = "homarr";
  version = "0.15.3";

  src = fetchFromGitHub {
    owner = "ajnart";
    repo = "homarr";
    rev = "refs/tags/v${finalAttrs.version}";
    hash = "sha256-5tTT4oonPNX7/oMMRpVrYIZZiKM5XgL+QyfsVY2cnto=";
  };

  offlineCache = fetchYarnDeps {
    yarnLock = finalAttrs.src + "/yarn.lock";
    hash = "sha256-oZgyP0hTU9bxszOVg3Bmiu6yos2d2Inc1Do8To4z8GQ=";

    # The file from upstream is for later versions of yarn, but we don't support that
    preConfigure = ''
      tmpfile="$(mktemp)"
      ${lib.getExe yarn-lock-converter} -i ${finalAttrs.offlineCache.yarnLock} -o "$tmpfile"
      ${lib.getExe fixup-yarn-lock} "$tmpfile"
      yarnLock="$tmpfile"
    '';
  };

  nativeBuildInputs = [
    yarnConfigHook
    yarnBuildHook
    nodejs
    npmHooks.npmInstallHook
  ];

  meta = {
    homepage = "https://homarr.dev/";
    description = "Simple, yet powerful dashboard for your server";
    licenses = with lib.licenses; [ mit ];
    maintainers = with lib.maintainers; [ greg ];
  };
})
