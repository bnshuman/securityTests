
The files in this project include attack files to be run within the Gauntlt framework. 

The attack files include checks for:

* Robots.txt
* Standard security headers
* Open ports
* HTTP Methods
* SQL Injection againsty vehicles
* HTTP -> HTTPS redirect

These tests are meant to monitor environments for changes, not scan for security vulnerabilities.

**Usage** 

The attack files include tags for *@prod*, *@perf*, and *@quote*.

For example, run from the command line:
env HOSTNAME=*hostname* /opt/gauntlt/bin/gauntlt -t *tag*
