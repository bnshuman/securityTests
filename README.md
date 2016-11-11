
The files in this project include attack files to be run within the Gauntlt framework (on a guntlt docker image). 

The attack files include checks for:

* Robots.txt
* Standard security headers
* Open ports
* HTTP Methods
* SQL Injection againsty vehicles (quote)
* HTTP -> HTTPS redirect
* SSL protocols and certificates

These tests are meant to monitor environments for changes, not scan for security vulnerabilities.

**Docker**
To build the docker file, run docker build -t latest .

To run via docker, run ./securityTestCases.sh

**Usage** 

The attack files include tags for *@prod*, *@perf*, *@quote*, *@logserver*, and *@newserver*.

For example, run from the command line:
env HOSTNAME=*hostname* /opt/gauntlt/bin/gauntlt -t *tag*

**Concourse**
For the pipeline.yaml:

resources:
  - name: src
    type: git
    source:
      uri: https://github.com/aaa-ncnu-ie/securityTests.git
      branch: master

jobs:
- name: test
  plan:
  - get: src
    trigger: true
  - task: test
    file: src/securitytest.yml
    
To start the pipeline:

  fly sp -t <target> -c pipeline.yml -p <pipelineName>
