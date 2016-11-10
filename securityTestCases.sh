docker pull moomzni/gauntlt
#docker run -e "HOSTNAME=e0.pncie.com" -v ~/securityTests/:/data moomzni/gauntlt /bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @perf"'
docker run -e "HOSTNAME=e1.pncie.com" -v ~/securityTests/:/data moomzni/gauntlt /bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @perf"'
docker run -e "HOSTNAME=e2.pncie.com" -v ~/securityTests/:/data moomzni/gauntlt /bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @perf"'
docker run -e "HOSTNAME=e3.pncie.com" -v ~/securityTests/:/data moomzni/gauntlt /bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @perf"'
#docker run -e "HOSTNAME=e4.pncie.com" -v ~/securityTests/:/data moomzni/gauntlt /bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @perf"'
docker run -e "HOSTNAME=csaa-insurance.aaa.com" -v ~/securityTests/:/data moomzni/gauntlt /bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @prod"'
docker run -e "HOSTNAME=quote.ds-csaa.io" -e "SQLMAP_PATH=/usr/local/bin/sqlmap" -v ~/securityTests/:/data moomzni/gauntlt /bin/bash -c '/usr/bin/scl enable ruby193 python27 "gauntlt -f progress -t @quote"'
