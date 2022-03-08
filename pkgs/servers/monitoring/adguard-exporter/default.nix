{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
    pname = "adguard-exporter";
    version = "1.14";

    src = fetchFromGitHub {
        owner = "ebrianne";
        repo = "adguard-exporter";
        rev = "v${version}";
        sha256 = "sha256:1ld5kwasa90rmczsmh5zdssar5jryvs9iifhxmbdd67j0qav4bl0";
    };

    vendorSha256 = "sha256:15bkw31lna648ynq3h0wvd4w60jaci33kr0mp4919rk42ybyb8pw";

    meta = with lib; {
        description = "Adguard exporter based on eko/pihole-exporter ";
        homepage = "https://github.com/ebrianne/adguard-exporter";
        license = licenses.mit;
        maintainers = with maintainers; [ jdheyburn ];
    };
}
