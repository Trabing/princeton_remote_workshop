#!/usr/bin/env bash


# Questions, comments, concerns:
#
# - What is keypoolsize?
#


####################################################################
#
# Local machine (e.g., your laptop)
#
####################################################################

git clone https://github.com/Trabing/princeton_remote_workshop.git

cd princeton_remote_workshop

curl -X POST "https://api.digitalocean.com/v2/droplets" -d '{"region": "nyc1", "ssh_keys": ["16049362"], "tags": ["testnet"], "monitoring": "true", "names":["remote-machine-1","remote-machine-2"], "image": "ubuntu-16-04-x64", "size": "1gb"}' -H "Authorization: Bearer 9d047dc57ab31836d69947390cfe51489694e93fa3ff31ec1c5bc9398d281608" -H "Content-Type: application/json"

# The previous command returned the following response:
#
# {"droplets":[{"id":91877865,"name":"remote-machine-1","memory":1024,"vcpus":1,"disk":30,"locked":true,"status":"new","kernel":null,"created_at":"2018-05-01T23:30:35Z","features":["monitoring"],"backup_ids":[],"next_backup_window":null,"snapshot_ids":[],"image":{"id":33932429,"name":"16.04.4 x64","distribution":"Ubuntu","slug":"ubuntu-16-04-x64","public":true,"regions":["nyc1","sfo1","nyc2","ams2","sgp1","lon1","nyc3","ams3","fra1","tor1","sfo2","blr1"],"created_at":"2018-05-01T01:32:49Z","min_disk_size":20,"type":"snapshot","size_gigabytes":0.31},"volume_ids":[],"size":{"slug":"1gb","memory":1024,"vcpus":1,"disk":30,"transfer":2.0,"price_monthly":10.0,"price_hourly":0.01488,"regions":["ams2","ams3","blr1","fra1","lon1","nyc1","nyc2","nyc3","sfo1","sfo2","sgp1","tor1"],"available":true},"size_slug":"1gb","networks":{"v4":[],"v6":[]},"region":{"name":"New York 1","slug":"nyc1","sizes":["512mb","8gb","16gb","1gb","2gb","4gb","c-16","s-1vcpu-3gb","c-2","c-4","c-8","m-1vcpu-8gb","m-16gb","m-32gb","m-64gb","m-128gb","m-224gb","s-1vcpu-1gb","s-3vcpu-1gb","s-1vcpu-2gb","s-2vcpu-2gb","s-2vcpu-4gb","s-4vcpu-8gb","s-6vcpu-16gb","s-8vcpu-32gb","s-12vcpu-48gb","s-16vcpu-64gb","s-20vcpu-96gb","32gb","48gb","64gb","c-1vcpu-2gb","c-32"],"features":["private_networking","backups","ipv6","metadata","install_agent","storage"],"available":true},"tags":["testnet"]},{"id":91877866,"name":"remote-machine-2","memory":1024,"vcpus":1,"disk":30,"locked":true,"status":"new","kernel":null,"created_at":"2018-05-01T23:30:35Z","features":["monitoring"],"backup_ids":[],"next_backup_window":null,"snapshot_ids":[],"image":{"id":33932429,"name":"16.04.4 x64","distribution":"Ubuntu","slug":"ubuntu-16-04-x64","public":true,"regions":["nyc1","sfo1","nyc2","ams2","sgp1","lon1","nyc3","ams3","fra1","tor1","sfo2","blr1"],"created_at":"2018-05-01T01:32:49Z","min_disk_size":20,"type":"snapshot","size_gigabytes":0.31},"volume_ids":[],"size":{"slug":"1gb","memory":1024,"vcpus":1,"disk":30,"transfer":2.0,"price_monthly":10.0,"price_hourly":0.01488,"regions":["ams2","ams3","blr1","fra1","lon1","nyc1","nyc2","nyc3","sfo1","sfo2","sgp1","tor1"],"available":true},"size_slug":"1gb","networks":{"v4":[],"v6":[]},"region":{"name":"New York 1","slug":"nyc1","sizes":["512mb","8gb","16gb","1gb","2gb","4gb","c-16","s-1vcpu-3gb","c-2","c-4","c-8","m-1vcpu-8gb","m-16gb","m-32gb","m-64gb","m-128gb","m-224gb","s-1vcpu-1gb","s-3vcpu-1gb","s-1vcpu-2gb","s-2vcpu-2gb","s-2vcpu-4gb","s-4vcpu-8gb","s-6vcpu-16gb","s-8vcpu-32gb","s-12vcpu-48gb","s-16vcpu-64gb","s-20vcpu-96gb","32gb","48gb","64gb","c-1vcpu-2gb","c-32"],"features":["private_networking","backups","ipv6","metadata","install_agent","storage"],"available":true},"tags":["testnet"]}],"links":{"actions":[{"id":426380082,"rel":"batch","href":"https://api.digitalocean.com/v2/actions/426380082"}]}}

curl -X GET "https://api.digitalocean.com/v2/droplets/91877865," -H "Content-Type: application/json" -H "Authorization: Bearer 9d047dc57ab31836d69947390cfe51489694e93fa3ff31ec1c5bc9398d281608"

# The previous command returned the following response:
#
# {"droplet":{"id":91877865,"name":"remote-machine-1","memory":1024,"vcpus":1,"disk":30,"locked":false,"status":"active","kernel":null,"created_at":"2018-05-01T23:30:35Z","features":["monitoring"],"backup_ids":[],"next_backup_window":null,"snapshot_ids":[],"image":{"id":33932429,"name":"16.04.4 x64","distribution":"Ubuntu","slug":"ubuntu-16-04-x64","public":true,"regions":["nyc1","sfo1","nyc2","ams2","sgp1","lon1","nyc3","ams3","fra1","tor1","sfo2","blr1"],"created_at":"2018-05-01T01:32:49Z","min_disk_size":20,"type":"snapshot","size_gigabytes":0.31},"volume_ids":[],"size":{"slug":"1gb","memory":1024,"vcpus":1,"disk":30,"transfer":2.0,"price_monthly":10.0,"price_hourly":0.01488,"regions":["ams2","ams3","blr1","fra1","lon1","nyc1","nyc2","nyc3","sfo1","sfo2","sgp1","tor1"],"available":true},"size_slug":"1gb","networks":{"v4":[{"ip_address":"167.99.150.63","netmask":"255.255.240.0","gateway":"167.99.144.1","type":"public"}],"v6":[]},"region":{"name":"New York 1","slug":"nyc1","sizes":["512mb","8gb","16gb","1gb","2gb","4gb","c-16","s-1vcpu-3gb","c-2","c-4","c-8","m-1vcpu-8gb","m-16gb","m-32gb","m-64gb","m-128gb","m-224gb","s-1vcpu-1gb","s-3vcpu-1gb","s-1vcpu-2gb","s-2vcpu-2gb","s-2vcpu-4gb","s-4vcpu-8gb","s-6vcpu-16gb","s-8vcpu-32gb","s-12vcpu-48gb","s-16vcpu-64gb","s-20vcpu-96gb","32gb","48gb","64gb","c-1vcpu-2gb","c-32"],"features":["private_networking","backups","ipv6","metadata","install_agent","storage"],"available":true},"tags":["testnet"]}}

curl -X GET "https://api.digitalocean.com/v2/droplets/91877866," -H "Content-Type: application/json" -H "Authorization: Bearer 9d047dc57ab31836d69947390cfe51489694e93fa3ff31ec1c5bc9398d281608"

# The previous command returned the following response:
#
# {"droplet":{"id":91877866,"name":"remote-machine-2","memory":1024,"vcpus":1,"disk":30,"locked":false,"status":"active","kernel":null,"created_at":"2018-05-01T23:30:35Z","features":["monitoring"],"backup_ids":[],"next_backup_window":null,"snapshot_ids":[],"image":{"id":33932429,"name":"16.04.4 x64","distribution":"Ubuntu","slug":"ubuntu-16-04-x64","public":true,"regions":["nyc1","sfo1","nyc2","ams2","sgp1","lon1","nyc3","ams3","fra1","tor1","sfo2","blr1"],"created_at":"2018-05-01T01:32:49Z","min_disk_size":20,"type":"snapshot","size_gigabytes":0.31},"volume_ids":[],"size":{"slug":"1gb","memory":1024,"vcpus":1,"disk":30,"transfer":2.0,"price_monthly":10.0,"price_hourly":0.01488,"regions":["ams2","ams3","blr1","fra1","lon1","nyc1","nyc2","nyc3","sfo1","sfo2","sgp1","tor1"],"available":true},"size_slug":"1gb","networks":{"v4":[{"ip_address":"206.189.177.52","netmask":"255.255.240.0","gateway":"206.189.176.1","type":"public"}],"v6":[]},"region":{"name":"New York 1","slug":"nyc1","sizes":["512mb","8gb","16gb","1gb","2gb","4gb","c-16","s-1vcpu-3gb","c-2","c-4","c-8","m-1vcpu-8gb","m-16gb","m-32gb","m-64gb","m-128gb","m-224gb","s-1vcpu-1gb","s-3vcpu-1gb","s-1vcpu-2gb","s-2vcpu-2gb","s-2vcpu-4gb","s-4vcpu-8gb","s-6vcpu-16gb","s-8vcpu-32gb","s-12vcpu-48gb","s-16vcpu-64gb","s-20vcpu-96gb","32gb","48gb","64gb","c-1vcpu-2gb","c-32"],"features":["private_networking","backups","ipv6","metadata","install_agent","storage"],"available":true},"tags":["testnet"]}}%


########################################################################
#                                                                      #
# All remote machines (e.g., a virtual private server on DigitalOcean) #
#                                                                      #
########################################################################

wget https://www.multichain.com/download/multichain-1.0.4.tar.gz -O /tmp/multichain-1.0.4.tar.gz

tar -xvzf /tmp/multichain-1.0.4.tar.gz

mv multichain-1.0.4/multichain-cli multichain-1.0.4/multichaind multichain-1.0.4/multichain-util /usr/local/bin


#####################################################################
#                                                                   #
# Remote machine 1 (e.g., a virtual private server on DigitalOcean) #
#                                                                   #
#####################################################################

multichain-util create blockchain2

multichaind blockchain2 -daemon

# The previous command returned the following response:
#
# MultiChain 1.0.4 Daemon (latest protocol 10010)
#
# Starting up node...
#
# Looking for genesis block...
# Genesis block found
#
# Other nodes can connect to this node using:
# multichaind blockchain2@167.99.150.63:2897
#
# This host has multiple IP addresses, so from some networks:
# multichaind blockchain2@10.10.0.9:2897
#
# Listening for API requests on port 2896 (local only - see rpcallowip setting)
#
# Node ready.


###########################################################################
#                                                                         #
# Remote machine 2 (e.g., another virtual private server on DigitalOcean) #
#                                                                         #
###########################################################################

multichaind blockchain2@167.99.150.63:2897

# The previous command returned the following response:
#
# Retrieving blockchain parameters from the seed node 167.99.150.63:2897 ...
# Blockchain successfully initialized.
#
# Please ask blockchain admin or user having activate permission to let you connect and/or transact:
# multichain-cli blockchain2 grant 1BUAV5WZZrwDA9nanG5rzVgMwgup5HCJi4CsEe connect
# multichain-cli blockchain2 grant 1BUAV5WZZrwDA9nanG5rzVgMwgup5HCJi4CsEe connect,send,receive


#####################################################################
#                                                                   #
# Remote machine 1 (e.g., a virtual private server on DigitalOcean) #
#                                                                   #
#####################################################################

multichain-cli blockchain2 grant 1BUAV5WZZrwDA9nanG5rzVgMwgup5HCJi4CsEe connect

# The previous command returned the following response:
#
# {"method":"grant","params":["1BUAV5WZZrwDA9nanG5rzVgMwgup5HCJi4CsEe","connect"],"id":1,"chain_name":"blockchain2"}
#
# f8d38dd2c429745f1435cfe887f15c079581489e880bc76a529bc8251007033d


###########################################################################
#                                                                         #
# Remote machine 2 (e.g., another virtual private server on DigitalOcean) #
#                                                                         #
###########################################################################

multichaind blockchain2@167.99.150.63:2897 -daemon &

# The previous command wrote the following output to nohup.out:
#
# Chain blockchain2 already exists, adding 167.99.150.63:2897 to list of peers
#
# Other nodes can connect to this node using:
# multichaind blockchain2@206.189.177.52:2897
#
# This host has multiple IP addresses, so from some networks:
# multichaind blockchain2@10.10.0.10:2897
#
# Listening for API requests on port 2896 (local only - see rpcallowip setting)
#
# Node ready.


#####################################################################
#                                                                   #
# Remote machine 1 (e.g., a virtual private server on DigitalOcean) #
#                                                                   #
#####################################################################

multichain-cli blockchain2 issue 1badM5xJczACckmkP2BprtVFz5nbtqWFXbLXe5 asset2 1000 .01 # Issue an asset to Remote machine 1

# The previous command returned the following response:
#
# {"method":"issue","params":["1badM5xJczACckmkP2BprtVFz5nbtqWFXbLXe5","asset2",1000,0.01000000],"id":1,"chain_name":"blockchain2"}
#
# a043d7857c73a60ba85a745de0bfd134a269b844c973697804342629705f4f25

multichain-cli blockchain2 grant 1BUAV5WZZrwDA9nanG5rzVgMwgup5HCJi4CsEe receive # Grant receive permissions to Remote machine 2

# The previous command returned the following response:
#
# {"method":"grant","params":["1BUAV5WZZrwDA9nanG5rzVgMwgup5HCJi4CsEe","receive"],"id":1,"chain_name":"blockchain2"}
#
# 0a4684fec26c52326e03955b3743345adf777f0a328aeac73be40b9c00233fdd

multichain-cli blockchain2 sendasset 1BUAV5WZZrwDA9nanG5rzVgMwgup5HCJi4CsEe asset2 5

# The previous command returned the following response:
#
# {"method":"sendasset","params":["1BUAV5WZZrwDA9nanG5rzVgMwgup5HCJi4CsEe","asset2",5],"id":1,"chain_name":"blockchain2"}
#
# c3855125e0c831a9e7508acac2c5e02af6465d151d42dd50bbfc96c9e33620bb


###########################################################################
#                                                                         #
# Remote machine 2 (e.g., another virtual private server on DigitalOcean) #
#                                                                         #
###########################################################################

multichain-cli blockchain2 gettotalbalances 0

# The previous command returned the following response:
#
# {"method":"gettotalbalances","params":[0],"id":1,"chain_name":"blockchain2"}
#
# [
#     {
#         "name" : "asset2",
#         "assetref" : "60-265-17312",
#         "qty" : 5.00000000
#     }
# ]


#####################################################################
#                                                                   #
# Remote machine 1 (e.g., a virtual private server on DigitalOcean) #
#                                                                   #
#####################################################################

multichain-cli blockchain2 grant 1BUAV5WZZrwDA9nanG5rzVgMwgup5HCJi4CsEe mine

# The previous command returned the following response:
#
# {"method":"grant","params":["1BUAV5WZZrwDA9nanG5rzVgMwgup5HCJi4CsEe","mine"],"id":1,"chain_name":"blockchain2"}
#
# ef0acc6cb810aa4a1923317c8f6c266dcdd01a320cac98700ecafc907a4bbdb9
