from flask import Flask
import settings

app = Flask('example')
app.config.from_object('example.settings')

# bootstrap your views
import views
import api
