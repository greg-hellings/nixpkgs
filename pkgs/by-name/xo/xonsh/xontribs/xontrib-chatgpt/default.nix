{
  buildPythonPackage,
  lib,
  fetchFromGitHub,
  openai,
  setuptools,
  wheel,
}:
buildPythonPackage rec {
  pname = "xontrib-chatgpt";
  version = "0.2.3";
  src = fetchFromGitHub {
    owner = "drmikecrowe";
    repo = "xontrib-chatgpt";
    rev = "a2f4957504188a415ed0679b1a527c15f630b97c";
    sha256 = "sha256-liuG5m/9YdOxM8bSMv1J8aOI2F5Q4SKN5TGVOLEIXu4=";
  };

  doCheck = false;

  nativeBuildInputs = [
    setuptools
    wheel
    openai
  ];

  propagatedBuildInputs = [
    openai
  ];

  meta = with lib; {
    homepage = "https://github.com/drmikecrowe/xontrib-chatgpt";
    description = "Gives the ability to use ChatGPT directly from the command line in the [xonsh shell](https://xon.sh).";
    license = licenses.mit;
    maintainers = [maintainers.drmikecrowe];
  };
}
