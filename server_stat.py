import os
from bottle import route, run, view, static_file
from datetime import datetime as dt
from horoscope import generate_prophecies

@route("/")
@view("template")
def index():
	now = dt.now()
	return {
	"date" : f"{now.year}-{now.month}-{now.day}",
		}

@route('/css/<filename>')
def send_css(filename):
	return static_file(filename, root='/static/css')
# comment for testing of GIT

@route('/js/<filename>')
def send_js(filename):
	return static_file(filename, root='/static/js')

@route("/api/forecasts")
def api_forecast():
	return {"prophecies" : generate_prophecies(6,2)}

if os.environ.get('APP_LOCATION') == 'heroku':
	run(host='0.0.0.0', port = int(os.environ.get("PORT",5000)))
else:
	run(
		host="localhost",
		port=8080,
		debug=True,
		autoreload=True
		)
