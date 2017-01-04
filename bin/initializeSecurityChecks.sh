#!/bin/bash
clear
OPTIND=1         # Reset in case getopts has been used previously in the shell.
WRKDIR=/opt/securityChecks
PYPATH=/usr/local/bin
DATA=/data

output_file=""
verbose=0

echo "----variables"
echo $SERVER
echo $URLS
echo $UNENCRYPT
echo $ACCESS
echo "----End"

while getopts "h?vf:" opt; do
    case "$opt" in
    \?)
        echo "Usage: securityChecks.sh -v -h <SERVER>"
        exit 0
        ;;
    h)  SERVER=$OPTARG
        ;;
    esac
done

shift $((OPTIND-1))

[ "$1" = "--" ] && shift

echo "verbose=$verbose, server='$SERVER', Leftovers: $@"


echo "Initializing baseline for access over port 80..."
$PYPATH/python $WRKDIR/checkhttps.py $SERVER > $UNENCRYPT
echo "Initializing baseline for unauthenticated access..."
$PYPATH/python $WRKDIR/checkaccess.py $SERVER > $ACCESS
