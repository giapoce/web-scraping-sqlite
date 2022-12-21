FROM alpine:latest

RUN apk update && \
    apk add --update --no-cache gcc g++ musl-dev python3 py3-pip libpq-dev libpq-dev python3-dev

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN mkdir app

COPY main.py /app

COPY data-source /app/data-source

RUN mkdir /app/csv-output

WORKDIR /app

CMD ["tail -f /dev/null"]
