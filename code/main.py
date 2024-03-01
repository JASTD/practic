from flask import Flask, render_template, send_from_directory


app = Flask(__name__, template_folder   ='templates', static_folder='static')

@app.route('/static/&lt;path:path&gt;')
def send_static(path):
    return send_from_directory('static', path)

@app.route("/")
def index():
    return render_template('index.html', title = 'Про flaskович')

@app.route("/main")
def main():
    return render_template('main.html')


if __name__ == '__main__':
    app.run(debug=True)