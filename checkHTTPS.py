import httplib
import urllib2
import sys
import os

server = sys.argv[1] 
name = os.getenv("URLS")
path = os.getenv("PWD")
fileName = path + "/data/" + name

with open(fileName) as data_file:
     for line_terminated in data_file:
       line = line_terminated.rstrip('\n')
       for x in range(0,1):
         conn = httplib.HTTPConnection(server)
         conn.request("HEAD", line)
         r1 = conn.getresponse()
         if r1.status == 200:
          print line
          break
