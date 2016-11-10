FROM moomzni/gauntlt

RUN yum install -y git || true 
RUN rm -rf /opt/sqlmap
RUN git clone https://github.com/sqlmapproject/sqlmap /opt/sqlmap

ENV SQLMAP_PATH /usr/local/bin/sqlmap
