from	ubuntu:14.04

# Configure apt
run	apt-get -y install python-software-properties
run	apt-get -y update

# Install Sysbench
run	apt-get -y install sysbench

# Install Bencher Dependencies
run	apt-get -y install git g++ gcc make libmysqlclient-dev

# Build / Install Bencher 
add 	./bencher/bencher /usr/local/bin/bencher
add 	./bencher/bencher.o /usr/local/bin/bencher.o


############################33
cmd	["/bin/bash"]

# vim:ts=8:noet:
