import httplib
import urllib2
import sys
import os

name = os.getenv("URLS")
server = sys.argv[1] 

with open(./data/name) as data_file:
     for line_terminated in data_file:
       line = line_terminated.rstrip('\n')
       for x in range(0,1):
         conn = httplib.HTTPConnection(server)
         conn.request("HEAD", line)
         r1 = conn.getresponse()
         if r1.status == 200:
          print line
          break
