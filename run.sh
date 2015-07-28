#!/bin/bash
# The order of the hosts takes precedence.
# The zookeeper znode information is derived from the first host.
# When the first host is down viewer will try the second, and so forth.
CLUSTERS=$1
: ${CLUSTERS:='127.0.0.1:2181'}
export ZK_HOSTS="$CLUSTERS"
python -mwebbrowser 'http://127.0.0.1'
python viewer.py '0.0.0.0' 80
