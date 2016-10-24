
These are a group of security tests for:

* Robots.txt
* Standard security headers
* Open ports
* HTTP Methods
* SQL Injection againsty vehicles
* HTTP -> HTTPS redirect

It has tags for *@prod*, *@perf*, and *@quote*.

These tests are meant to monitor environments for changes, not scan for security vulnerabilities.

**Usage** 

env HOSTNAME=*hostname* /opt/gauntlt/bin/gauntlt -t *tag*
