FROM moomzni/gauntlt

RUN yum install -y git || true 
RUN rm -rf /opt/sqlmap
RUN git clone https://github.com/sqlmapproject/sqlmap /opt/sqlmap
Run git clone https://github.com/aaa-ncnu-ie/securityTests /opt/securityTests

ENV SQLMAP_PATH /usr/local/bin/sqlmap
