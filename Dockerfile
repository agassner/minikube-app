FROM python:alpine

RUN pip install flask
WORKDIR /app

COPY ./main.py /app/

ENV FLASK_APP /app/main.py
CMD [ "flask", "run", "--host=0.0.0.0", "--port=8080" ]