{ config
, fetchgitPrivate
, pkgconfig
, stdenv
, boost
, cmake
, highfive
, vmmlib
, brayns
}:

stdenv.mkDerivation rec {
    name = "topology-viewer-${version}";
    version = "0.1.0-201806";

    buildInputs = [ stdenv pkgconfig cmake boost highfive vmmlib brayns ];

    src = fetchgitPrivate {
        url = config.bbp_git_ssh + "/viz/Brayns-UC-TopologyViewer";
        rev = "5d5b6871315e3c8e48f85820950ff739e00edec6";
        sha256 = "0qhky2f85w4l7n2gzv10iy6yq4qscl0x3b7ppsjlx19w9vzz2289";
    };

    enableParallelBuilding = true;
}
