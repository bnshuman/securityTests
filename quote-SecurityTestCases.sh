#! /bin/bash
cd /opt/securityTests
#export HOSTNAME="e0.pncie.com" 
#/bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @perf"'
export HOSTNAME="quote.ds-csaa.io"
/bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @quote"'
