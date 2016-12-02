FROM moomzni/gauntlt

RUN apt-get update 
RUN pip install datadog
RUN yum install -y git || true 
RUN rm -rf /opt/sqlmap
RUN git clone https://github.com/sqlmapproject/sqlmap /opt/sqlmap
RUN git clone https://github.com/drwetter/testssl.sh.git /opt/testssl
RUN git clone https://github.com/aaa-ncnu-ie/securityTests /opt/securityTests
RUN git clone https://github.com/aaa-ncnu-ie/securityChecks.git /opt/securityChecks

ENV SQLMAP_PATH /usr/local/bin/sqlmap

WORKDIR /opt/securityTests

CMD /opt/securityTests/concourseSecurityTestCases.sh
