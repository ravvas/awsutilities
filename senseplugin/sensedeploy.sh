#!/bin/bash -ex
#update the actual elasticsearch end point without http://
#example search-xxx-xxxx.us-east-1.es.amazonaws.com:80
ESENDPOINT='<ELASTICSEARCH END POINT>'
cd /home/ec2-user
#download kibana and extract it 
wget https://download.elastic.co/kibana/kibana/kibana-4.5.0-linux-x64.tar.gz
sudo tar -xzvf kibana-4.5.0-linux-x64.tar.gz
cd kibana-4.5.0-linux-x64/config/
#get private IP address of the instance
IPADDRESS=`wget -qO- http://instance-data/latest/meta-data/local-ipv4`
#Edit the kibana configuration file
#uncomment server.port
sudo sed -i -e "s/# server.port: 5601/server.port: 5601/g" kibana.yml  
#change server host to private Ip address
sudo sed -i -e "s/# server.host: \"0.0.0.0\"/server.host: \"$IPADDRESS\"/g" kibana.yml  
sudo sed -i -e "s/# elasticsearch.url/elasticsearch.url/g" kibana.yml
#update with elasticsearch end point
sudo sed -i -e "s/localhost:9200/$ESENDPOINT/g" kibana.yml
cd /home/ec2-user/kibana-4.5.0-linux-x64
#install sense plugin
sudo ./bin/kibana plugin --install elastic/sense
#start kibana in background
sudo ./bin/kibana &