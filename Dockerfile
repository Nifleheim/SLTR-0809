FROM python:3.12.0rc2-slim-bullseye

WORKDIR /solitaire

COPY docker.txt .

RUN pip install -r docker.txt

COPY ./app ./app

CMD ["python3", "./app/test.py"]
