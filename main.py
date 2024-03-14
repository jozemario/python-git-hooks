from flask import Flask

# Create a Flask app
app = Flask(__name__)


# Define a route for the root URL
@app.route('/')
def hello_world():
    return 'Hello, World!'


@app.route('/test')
def hello_test():
    return 'Hello, Test!'


# Run the Flask app
if __name__ == '__main__':
    app.run()
