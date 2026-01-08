{
# networking.wg-quick.interfaces = {
#   wg0 = {
#     address = [ "10.0.0.1/24" ];         # your virtual IP
#     privateKeyFile = "/home/youruser/wg-private";
#     peers = [
#       {
#         publicKey = "<windows‑public‑key>";
#         allowedIPs = [ "10.0.0.2/32" ];
#         endpoint = "<windows‑public‑ip>:51820";
#         persistentKeepalive = 25;         # helpful if behind NAT
#       }
#     ];
#   };
# };
# networking.firewall.allowedUDPPorts = [ 51820 ];
}
