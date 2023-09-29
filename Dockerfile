FROM python:3.8-slim

COPY ./app /app

RUN pip install -r /app/requirements.txt

CMD ["python", "main.py"]
