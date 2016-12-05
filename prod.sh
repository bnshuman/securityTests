#! /bin/bash
cd /opt/securityTests
export HOSTNAME="csaa-insurance.aaa.com"
/bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @prod"'
