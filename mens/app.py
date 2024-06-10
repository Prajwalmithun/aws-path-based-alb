from flask import Flask

app = Flask(__name__)

@app.route('/mens')
def mens_section():
    return 'This is Mens Section'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
