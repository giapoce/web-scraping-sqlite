FROM postgres:15-alpine
RUN apk add --update --no-cache gcc g++ musl-dev python3 py3-pip python3-dev
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY create_db.sql /docker-entrypoint-initdb.d/
COPY main.py /
COPY data-source /
RUN mkdir /csv-output
WORKDIR /
ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB postgres
CMD ["tail -f /dev/null"]
