"""Sends data to datadog"""
import time
import sys
import os
from datadog import initialize, api

APIKEY = os.getenv('DATADOG_APIKEY')
APPKEY = os.getenv('DATADOG_APPKEY')

OPTIONS = {
    'api_key': APIKEY,
    'app_key': APPKEY
}

TIME = time.time()


def sendmetric(count, tag, app):
    """Sends the metrics to data dog"""
    initialize(**OPTIONS)
    tag = "[status:" + tag + ", app:" + app + "]"
    api.Metric.send(metric='security.monitor.checks', points=(TIME, (float(count))), tags=tag)


def sendevent(tag, checknumber, app):
    """Sends event to data dog"""
    tag = "[status:" + tag + ", app:" + app + "]"
    api.Event.create(title='Security Monitor', text=eventtext(checknumber), tags=tag, alert_type='warning')


def eventtext(eventnumber):
    """Gets text based on event number"""
    return {
        '0': 'Null result.',
        '1': 'Authenticated access to URL(s) has changed. Please review the Jenkins console output for "Security Checks."',
        '2': 'Access to URL(s) over port 80 has changed. Please review the Jenkins console output for "Security Checks."',
        '3': 'SSL Security has changed. Run testSSL against csaa-insurance.aaa.com to review the SSL Security posture.',
        '4': 'SSL Certificate will expire within 30 days.'
    }.get(eventnumber, 0)


def main():
    """Run the main program"""
    count = sys.argv[1]
    tag = sys.argv[2]
    checknumber = sys.argv[3]
    app = sys.argv[4]
    sendmetric(count, tag, app)
    if checknumber != '0':
        sendevent(tag, checknumber, app)


if __name__ == "__main__":
    main()
