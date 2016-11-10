FROM moomzni/gauntlt

rpm --rebuilddb
#RUN yum update 
RUN yum -y install git 
RUN rm -rf /opt/sqlmap
RUN git clone https://github.com/sqlmapproject/sqlmap /opt/sqlmap

ENV SQLMAP_PATH /usr/local/bin/sqlmap
