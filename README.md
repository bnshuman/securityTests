
The files in this project include attack files to be run within the Gauntlt framework (on a guntlt docker image). 

The attack files include checks for:

* Robots.txt
* Standard security headers
* Open ports
* HTTP Methods
* HTTP -> HTTPS redirect
* SSL vulnerabilities
* SSL certificate expiration
* HTTP methods

Additionally, checks against pages over port 80 and unauthenticated are ran

```
  fly sp -t <target> -c pipeline.yml -p <pipelineName>
```
