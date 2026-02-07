from flask import Flask
import redis


app = Flask(__name__)
r = redis.Redis(host='redis', port=6379)

@app.route('/')
def welcome():
    return 'Welcome to the CoderCo Challange'

@app.route('/count')
def visit_count():
    visit_count = r.incr('visits')
    return f'This page page has been visited {visit_count} times'

if  __name__ == '__main__':
    app.run(host='0.0.0.0', port=5005)