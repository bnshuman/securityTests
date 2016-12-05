#! /bin/bash
cd /opt/securityTests
export HOSTNAME="quote.digital.pncie.com"
/bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @quote"'
