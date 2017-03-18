# Use python:2.7.13-alpine

# testapp folder has to be at /usr/local/opt/testapp

# Go to /usr/local/opt/testapp and run pip install --editable .

# We need to set 2 environment variables: FLASK_APP=testapp, FLASK_DEBUG=true

# Expose port 5000

# Run command on startup: flask run --host=0.0.0.0 --port=5000
