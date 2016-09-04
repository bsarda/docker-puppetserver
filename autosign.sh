#!/bin/bash
> /etc/puppetlabs/puppet/autosign.conf
for conf in $(echo $AUTOSIGN | sed "s/,/ /g"); do
	echo "  will add \"$conf\" to the autosign.conf file"
	echo $conf >> /etc/puppetlabs/puppet/autosign.conf
done

