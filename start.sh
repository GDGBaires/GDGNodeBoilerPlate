#!/bin/bash
sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
echo "Levantando la instancia de nodejs con nohup"
nohup nodejs server.js --fe_ip 104.154.87.184 &
echo "La instancia se levanto correctamente"
