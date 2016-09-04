#!/bin/bash
/bin/sh -c "/opt/config/memtest.sh"
/bin/sh -c "/opt/config/autosign.sh"
echo "  starting puppetserver in foreground mode..."
/opt/puppetlabs/bin/puppetserver foreground

