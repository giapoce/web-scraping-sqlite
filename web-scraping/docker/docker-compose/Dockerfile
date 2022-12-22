FROM alpine:latest

RUN apk update && \
    apk add --update --no-cache gcc g++ musl-dev python3 py3-pip libpq-dev python3-dev

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN mkdir app

COPY main.py /app

COPY data-source /app/data-source

COPY run-script.sh /app

RUN chmod +x /app/run-script.sh

RUN mkdir /app/csv-output

WORKDIR /app

ENTRYPOINT ["/app/run-script.sh"]
