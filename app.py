from flask import Flask, render_template
from config import Config
from datetime import date, datetime

app = Flask(__name__)
app.config.from_object(Config)

@app.route('/')
def counter():
    return render_template('index.html')
