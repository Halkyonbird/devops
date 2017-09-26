# Teamcity server on VM (virtualbox), controlled by Vagrant
```
For using Teamcity server VM, first install Virtualbox and Vagrant.

To launch TC server run "vagrant up" from working directory (where Vagrantfile is located).



Relocation VM on new server:
If box is not last version, and VM has changed, you need

1. Register VM in VirtualBox
VBoxManage registervm       <filename>

2. Check VM id
VBoxManage list vms

3. Paste VM id in file .vagrant\machines\default\virtualbox\id



"For Vagrant 1.2.x there should be a file in ".vagrant\machines\default\virtualbox\id"
with the VM id inside. The available VMs (of VirtualBox) should be in "C:\Users\$USER\VirtualBox VMs<VM-Name>".
There you can find a file called .vbox which holds the VM configuration using XML.
The "Machine" node holds the machine id which you can copy and paste into the id file. "
https://github.com/mitchellh/vagrant/issues/1755
```

# Teamcity agent

## Docker TeamCity Agent
### Starting the container
```
https://hub.docker.com/r/alonsodomin/teamcity-agent/


Starting the container
Before starting the agent, ensure that you have a TeamCity build server instance reachable in your network.
Otherwise the agent won't be much useful. If you don't know how to start, this
TeamCity Docker container could be a good
starting point.

Connecting the agent to a build server running in another container
The following command will start a TeamCity build agent instance:

docker run -d --name some_teamcity-agent --link some_teamcity:teamcity alonsodomin/teamcity-agent
Connecting the agent to a build server running anywhere else
By defining the same environment variables that the agent container looks for when starting we can tell it how
to find the build server:

docker run -d --name some_teamcity-agent -e TEAMCITY_PORT_8111_TCP_ADDR=<teamcity_address> -e TEAMCITY_PORT_8111_TCP_PORT=<teamcity_port> alonsodomin/teamcity-agent
Custom configuration
We can also provide the agent with our custom-made configuration file in which we can configure the URL that will
be used to connect with the build server, among other things. An
example
configuration file can be found in the source repository.

We must place a file like the above example in a folder inside our machine, then mount that folder as a volume
in the Docker container:

docker run -d --name some_teamcity-agent -v /path/to/my/conf:/etc/teamcity-agent alonsodomin/teamcity-agent
```
###ruby install
```
     apt-get -y update;
     apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev;
     cd /tmp;
     wget http://ftp.ruby-lang.org/pub/ruby/2.2/ruby-2.2.4.tar.gz;
     tar -xvzf ruby-2.2.4.tar.gz;
     cd ruby-2.2.4/ && ./configure --prefix=/usr/local && make && make install
```   
### bundle install
````
export TERM=xterm

apt-get update
apt-get install -y nano
# create Gemfile (see content in current dir)
bundle install
```