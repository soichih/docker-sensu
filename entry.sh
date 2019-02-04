#!/bin/bash
export PATH=/opt/sensu/embedded/bin:$PATH
/opt/sensu/bin/sensu-server -vc /etc/sensu/config.json -d /etc/sensu/conf.d &
/opt/sensu/bin/sensu-api -vc /etc/sensu/config.json -d /etc/sensu/conf.d 

