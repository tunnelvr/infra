{
  networking.interfaces.ens3.ipv6.addresses = [ {
    address = "2a01:4f9:c010:d3a1::1";
    prefixLength = 64;
  } ];

  networking.defaultGateway6 = { address = "fe80::1"; interface = "ens3"; };
}
