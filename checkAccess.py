"""Checks for unauthenticated access to web pages"""
import httplib
import sys
import os

SERVER = sys.argv[1]
NAME = os.getenv("URLS")
PATH = os.getenv("PWD")
FILENAME = PATH + "/data/" + NAME
NUMBEROFTRIES = 1

with open(FILENAME) as data_file:
    for line_terminated in data_file:
        line = line_terminated.rstrip('\n')
        for x in range(0, NUMBEROFTRIES):
            conn = httplib.HTTPSConnection(SERVER, 443)
            conn.putrequest('GET', line)
            conn.endheaders()
            r2 = conn.getresponse()
            if r2.status == 200:
                print line
