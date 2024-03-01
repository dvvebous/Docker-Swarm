sudo service docker start
sleep 5
sudo docker swarm join --token $(cat /vagrant/worker_token) 192.168.56.0:2377