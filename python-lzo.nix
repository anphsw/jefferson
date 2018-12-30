{ lib
, buildPythonPackage
, fetchPypi
, lzo
, nose
}:
buildPythonPackage rec {
  pname = "python-lzo";
  version = "1.12";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0iakqgd51n1cd7r3lpdylm2rgbmd16y74cra9kcapwg84mlf9a4p";
  };

  buildInputs = [ lzo ];
  checkInputs = [ nose ];

  meta = with lib; {
    description = "Python bindings for the LZO data compression library";
    homepage = https://github.com/jd-boyd/python-lzo;
    license = licenses.gpl;
    # maintainers = [ maintainers. ];
  };
}
