from bottle import route, run, view
from datetime import datetime as dt
from random import random
from horoscope import generate_prophecies

@route("/")
@view("template")
def index():
	now = dt.now()
	return {
	"date" : f"{now.year}-{now.month}-{now.day}",
	# "predictions" : generate_prophecies(5,3),
	}


# @route("/api/forecasts")
# def api_forecast():
# 	return {"prophecies" : generate_prophecies(6,2)}

run(
	host="localhost",
	port=8000,
	debug=True,
	autoreload=True
	)
