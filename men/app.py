from flask import Flask

app = Flask(__name__)

@app.route('/men')
def men_section():
    return 'This is Men Section'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
