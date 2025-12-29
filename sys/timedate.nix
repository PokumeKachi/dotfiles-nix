{
  time.timeZone = "Asia/Ho_Chi_Minh";

  services.timesyncd.enable = true;
  networking.timeServers = [
    "0.asia.pool.ntp.org"
    "1.asia.pool.ntp.org"
    "2.asia.pool.ntp.org"
    "3.asia.pool.ntp.org"
  ];
}
