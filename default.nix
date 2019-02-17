with import <nixpkgs> {};
with pkgs.lib;
with pkgs.python3Packages;

let
  # pytest-datadir = buildPythonPackage rec {
  #   name = "pytest-datadir-1.0.1";
  #   src = pkgs.fetchurl {
  #     url = "https://pypi.python.org/packages/17/8e/a5ec251d7e4e2b68f9f8ea79d556383d72b42fa9ca0a373777dec9e5b570/pytest-datadir-1.0.1.tar.gz";
  #     sha256 = "3e5d1892c68d0dfb6863e87d6a1f683e67be60802fee798a3ccae5dbda1ab378";
  #   };
  #   doCheck = true;
  #   propagatedBuildInputs = [
  #     pytest
  #   ];
  #   meta = with pkgs.stdenv.lib; {
  #     homepage = "http://github.com/gabrielcnr/pytest-datadir";
  #     license = licenses.mit;
  #     description = "pytest plugin for test data directories and files";
  #   };
  # };
in

buildPythonPackage rec {
  name = "crawl-cpo-archiver";
  src = ./.;
  buildInputs = [
    requests
    beautifulsoup4
  ];

  checkInputs = [
    pytest pytestrunner pytest-mock
    # pytest-datadir
  ];
}
