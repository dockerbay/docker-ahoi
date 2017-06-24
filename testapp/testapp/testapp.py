from flask import Flask, render_template

app = Flask(__name__)


@app.route("/")
@app.route("/start-page")
def start_page():
    return render_template("start-page.html")


@app.route("/next-page")
def next_page():
    return render_template("next-page.html")

@app.route("/system/info")
def liveness_probe():
    return "I am living"

@app.route("/system/health")
def readiness_probe():
    return "I am ready"
