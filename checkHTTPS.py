"""Check for access to pages over port 80"""
import httplib
import sys
import os

SERVER = sys.argv[1]
NAME = os.getenv("URLS")
PATH = os.getenv("PWD")
FILENAME = PATH + "/data/" + NAME

with open(FILENAME) as data_file:
    for line_terminated in data_file:
        line = line_terminated.rstrip('\n')
        for x in range(0, 1):
            conn = httplib.HTTPConnection(SERVER)
            conn.request("HEAD", line)
            r1 = conn.getresponse()
            if r1.status == 200:
                print line
                break
