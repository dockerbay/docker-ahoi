from flask import Flask, render_template

app = Flask(__name__)


@app.route("/")
def start_page():
    return render_template("start-page.html")


@app.route("/next-page")
def next_page():
    return render_template("next-page.html")
