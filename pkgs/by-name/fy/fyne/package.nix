{
  lib,
  buildGoModule,
  fetchFromGitHub,

  libGL,
  libX11,
  libXcursor,
  libXinerama,
  libXi,
  libXrandr,
  libXxf86vm,
  pkg-config,
}:

buildGoModule rec {
  pname = "fyne";
  version = "2.6.1";

  src = fetchFromGitHub {
    owner = "fyne-io";
    repo = "tools";
    rev = "59fc876";
    hash = "sha256-G9wkw4529YLtDorQ/kCGotK+dKZCVOtsNTaPUP3xJsA=";
  };

  vendorHash = "sha256-7B0PCKMfLULmqzIlNFeXhOUThnWSe9+gRhpswbiwLP4=";

  nativeBuildInputs = [ pkg-config ];

  buildInputs = [
    libGL
    libX11
    libXcursor
    libXinerama
    libXi
    libXrandr
    libXxf86vm
  ];

  doCheck = false;

  meta = with lib; {
    homepage = "https://fyne.io";
    description = "Cross platform GUI toolkit in Go";
    license = licenses.bsd3;
    maintainers = with maintainers; [ greg ];
    mainProgram = "fyne";
  };
}
