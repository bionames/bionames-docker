FROM python:3.9

RUN python -m pip install --upgrade pip
RUN python -m pip install gunicorn "biolookup>=0.1.0"
ENTRYPOINT biolookup web --port 8765 --host "0.0.0.0" --sql --with-gunicorn --workers 4
