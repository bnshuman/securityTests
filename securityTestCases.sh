#! /bin/bash
#export HOSTNAME="e0.pncie.com" 
#/bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @perf"'
export HOSTNAME="e1.pncie.com" 
/bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @perf"'
export HOSTNAME="e2.pncie.com"
/bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @perf"'
export HOSTNAME="e3.pncie.com"
/bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @perf"'
#export HOSTNAME="e4.pncie.com"
#/bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @perf"'
export HOSTNAME="csaa-insurance.aaa.com"
/bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @prod"'
export HOSTNAME="quote.ds-csaa.io"
/bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @quote"'
