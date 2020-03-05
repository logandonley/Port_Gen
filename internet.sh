if ping -q -c 1 -W 1 google.com >/dev/null; then
  echo "The network is up" 
  exit 0
else
  echo "The network is down"
  exit 1
fi
