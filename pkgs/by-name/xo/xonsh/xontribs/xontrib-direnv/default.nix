{
  buildPythonPackage,
  fetchFromGitHub,
  lib,
  direnv,
}:
buildPythonPackage {
  pname = "xontrib-xonsh-direnv";
  version = "1.6.1";

  src = fetchFromGitHub {
    owner = "74th";
    repo = "xonsh-direnv";
    rev = "3bea5847b9459c5799c64966ec85e624d0be69b9";
    sha256 = "sha256-h56Gx/MMCW4L6nGwLAhBkiR7bX+qfFk80LEsJMiDtjQ=";
  };

  propagatedBuildInputs = [direnv];

  meta = with lib; {
    homepage = "https://github.com/74th/xonsh-direnv";
    license = licenses.mit;
    maintainers = [maintainers.drmikecrowe];
    description = "xonsh direnv";
  };
}
