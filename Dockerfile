FROM moomzni/gauntlt

#RUN yum update 
RUN yum install git -y 
RUN rm -rf /opt/sqlmap
RUN git clone https://github.com/sqlmapproject/sqlmap /opt/sqlmap

ENV SQLMAP_PATH /usr/local/bin/sqlmap
