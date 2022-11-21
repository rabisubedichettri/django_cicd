FROM python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

RUN mkdir /app

WORKDIR /app

COPY . /code/

RUN pip install --upgrade pip

RUN pip install -r requirements.txt


EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]