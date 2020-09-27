function vpn -d "Connect/disconnect Cisco VPN"
  set -l vpn /opt/cisco/anyconnect/bin/vpn
  set -l option $argv[1]

  switch $option
    case connect
      read -s -p "echo 'Passward: '" password
      printf $VPN_USER\n$password\ny | $vpn -s connect $VPN_HOST
    case disconnect
      $vpn disconnect
    case status
      $vpn state
    case "*"
      echo "Usage: vpn [connect|disconnect|status]"
  end
end
