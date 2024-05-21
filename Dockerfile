FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3-pip python3-dev build-essential

WORKDIR /app
COPY requirements.txt /app/

COPY . /app

ENTRYPOINT ["honcho"]
CMD ["start"]

EXPOSE 5000
