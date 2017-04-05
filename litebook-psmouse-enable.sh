#!/bin/bash -

#   Name    :   litebook-psmouse-enable.sh
#   Author  :   Richard Buchanan II for Alpha Universal, LLC
#   Brief   :   A script to activate the psmouse module with 
#               proto=imps on startup for the Litebook v1.  
#               Used in conjunction with the systemd unit file
#               /etc/systemd/system/default.target.wants/litebook-psmouse-enable.service
#

set -o errexit      # exits if non-true exit status is returned
set -o nounset      # exits if unset vars are present

PATH=/sbin:/usr/sbin:/bin:/usr/bin

/sbin/rmmod psmouse && /sbin/modprobe psmouse proto=imps

exit 0
