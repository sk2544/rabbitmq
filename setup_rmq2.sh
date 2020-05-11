#installs  RMQ

sudo apt-get install
sudo apt install rabbitmq-server
sudo systemctl rabbitmq.service
sudo systemctl status rabbitmq-server.service

#add users and give permissions

sudo rabbitmqctl add_user app app
sudo rabbitmqctl add_user db db
sudo rabbitmqctl add_user api api

#set full admin permissions

sudo rabbitmqctl set_permissions -p / app ".*" ".*" ".*"
sudo rabbitmqctl set_permissions -p / db ".*" ".*" ".*"
sudo rabbitmqctl set_permissions -p / api ".*" ".*" ".*"

#this will show the users you have

sudo rabbitmqctl list_users

