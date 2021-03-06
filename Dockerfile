FROM python:3.10

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ADD . .

RUN pip install fastapi "uvicorn[standard]==0.17.6" gunicorn==20.1.0 Jinja2==3.1.2

CMD gunicorn -w 4 -k uvicorn.workers.UvicornWorker --bind 0.0.0.0:8000:8000 server:app