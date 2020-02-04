FROM python:alpine

WORKDIR /app
COPY ./requirements.txt /app/

RUN pip install -r requirements.txt

COPY ./ /app/

ENV FLASK_APP /app/main.py
CMD [ "flask", "run", "--host=0.0.0.0", "--port=8080" ]