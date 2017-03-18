FROM python:2.7.13-alpine

COPY testapp /usr/local/opt/testapp

RUN cd /usr/local/opt/testapp && pip install --editable .

ENV FLASK_APP=testapp \
    FLASK_DEBUG=true

EXPOSE 80

CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]
