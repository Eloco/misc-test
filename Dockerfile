FROM ubuntu:latest

ADD ./app /app
WORKDIR /app

ENV PORT=8080
EXPOSE ${PORT}

CMD ./test --port ${PORT} --auth 'user:admin'
