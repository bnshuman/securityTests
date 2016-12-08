import time, sys, os
from datadog import initialize, api

apiKey = os.getenv('DATADOG_APIKEY')
appKey = os.getenv('DATADOG_APPKEY')

options = {
    'api_key': apiKey,
    'app_key': appKey 
}

TIME = time.time()

def sendMetric(count, tag, app):
        initialize(**options)
        tag = "[status:" + tag + ", app:" + app + "]"
        api.Metric.send(metric='security.monitor.checks', points=(TIME,(float(count))),tags=tag)
                        
def sendEvent(tag, checkNumber,app):
        tag = "[status:" + tag + ", app:" + app + "]"
        api.Event.create(title='Security Monitor', text=eventText(checkNumber), tags=tag, alert_type='warning')

def eventText(x):
 	return {
		'0': 'Null result.',
		'1': 'Authenticated access to URL(s) has changed. Please review the Jenkins console output for "Security Checks."',
		'2': 'Access to URL(s) over port 80 has changed. Please review the Jenkins console output for "Security Checks."',
		'3': 'SSL Security has changed. Run testSSL against csaa-insurance.aaa.com to review the SSL Security posture.',
		'4': 'SSL Certificate will expire within 30 days.'
	}.get(x,0)

def main():

  count = sys.argv[1]
  tag = sys.argv[2]
  checkNumber = sys.argv[3]
  app = sys.argv[4]

  sendMetric(count, tag, app)
  if checkNumber != '0':
	sendEvent(tag, checkNumber, app) 

if __name__ == "__main__":
    main()
