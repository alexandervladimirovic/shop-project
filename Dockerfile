FROM python:3.11

WORKDIR /app
COPY . /app/

RUN pip install -r requirements.txt

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "main.wsgi:application"]