touch output.txt

if ping -q -c 1 -W 1 google.com >/dev/null; then
  echo "The network is up" >> output.txt
else
  echo "The network is down" >> output.txt
fi
