#!/bin/sh
sudo service docker start
sleep 5
sudo docker swarm init --listen-addr 192.168.56.0:2377 --advertise-addr 192.168.56.0:2377
sudo docker swarm join-token --quiet worker > /vagrant/worker_token