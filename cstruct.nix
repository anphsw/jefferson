{ lib
, buildPythonPackage
, fetchPypi
}:
buildPythonPackage rec {
  pname = "cstruct";
  version = "1.8";

  src = fetchPypi {
    inherit pname version;
    sha256 = "e11684fd5e8b9a44834f96dc88293cd7cf5cb393bddee4a9f83ef3f9824bb7af";
  };

  meta = with lib; {
    description = "C-style structs for Python";
    homepage = http://github.com/andreax79/python-cstruct;
    license = licenses.mit;
    # maintainers = [ maintainers. ];
  };
}