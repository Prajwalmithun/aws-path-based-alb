from flask import Flask

app = Flask(__name__)

@app.route('/women')
def women_section():
    return 'This is Women Section'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
