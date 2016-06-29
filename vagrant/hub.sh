#!/usr/bin/env bash

if [ ! -e /etc/vagrant/hub ]
then

	echo ">>> setting up hub"

    # install hub cli, from GitHub
	mkdir -p /opt/hub && \
	curl -sSL https://github.com/github/hub/releases/download/v2.2.3/hub-linux-amd64-2.2.3.tgz | tar -xz -C /opt/hub --strip-components 1 && \
	/opt/hub/install && \
	rm -rf /opt/hub/* && \
	alias git=hub

	# only run once
	touch /etc/vagrant/hub

else

	echo ">>> hub is already setup"

fi
