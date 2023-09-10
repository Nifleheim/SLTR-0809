#!/bin/bash
sudo apt-get update -y
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh --dry-run
sudo apt-get update -y
sudo apt install docker.io -y
sudo pip install fastapi
sudo pip install uvicorn
docker pull ikanpaus/simplepapptest:1.0.0
docker run -p 8000:5000 ikanpaus/simplepapptest:1.0.0
