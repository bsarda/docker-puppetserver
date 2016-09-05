#!/bin/bash
if [ ! -f /etc/puppetlabs/initialized ]; then
	echo "This is the first launch - will init..."
	/bin/sh -c "/opt/config/memtest.sh"
	/bin/sh -c "/opt/config/autosign.sh"
else
	echo "PuppetServer already initialized, no need to reinit - just start."
fi

echo "  starting puppetserver in foreground mode..."
/opt/puppetlabs/bin/puppetserver foreground

