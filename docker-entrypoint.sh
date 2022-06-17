#!/bin/sh
gunicorn -w 4 -k uvicorn.workers.UvicornWorker --bind 0.0.0.0:8000:8000 server:app