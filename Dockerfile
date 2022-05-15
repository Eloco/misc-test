FROM ubuntu:latest

ADD ./app /app
WORKDIR /app

ENV PORT=8080
EXPOSE ${PORT}

RUN chmod +x ./test

CMD ./test --port ${PORT} --auth 'user:admin'
