#!/bin/bash

function ctrl_c(){
  echo -e "\n\n [!] Exit...\n"
  exit 1
}
#Ctrl+C
trap ctrl_c INT

for port in $(seq 1 65535); do
  (echo '' > /dev/tcp/localhost/$port) 2>/dev/null && echo "[+] Port: $port Open" &

done; wait
