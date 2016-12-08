import httplib
import urllib2
import sys
import os

server = sys.argv[1] 
numberOfTries = 1

name = os.getenv("URLS")
path = os.getenv("PWD")
fileName = path + "/data/" + name

with open(fileName) as data_file:
     for line_terminated in data_file:
       line = line_terminated.rstrip('\n')
       for x in range(0,numberOfTries):
	conn = httplib.HTTPSConnection(server, 443)
	conn.putrequest('GET', line) 
	conn.endheaders()
	r2 = conn.getresponse()
        if r2.status == 200:	
         print line
