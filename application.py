from flask import Flask
app = Flask(__name__)

from flask import redirect, url_for, request, render_template, abort, \
	flash, get_flashed_messages

@app.route('/')
def index():
	return render_template('index.html')

# set the secret key.  keep this really secret:
app.secret_key = 'asd768%&dasduz76s90changeme87//'

if __name__ == '__main__':
	app.run()
