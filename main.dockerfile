FROM alpine:latest

WORKDIR /app

COPY buri.s .

RUN apk update && apk add --no-cache binutils

RUN as -o buri.o buri.s && ld -o buri buri.o

CMD ["./buri"]
