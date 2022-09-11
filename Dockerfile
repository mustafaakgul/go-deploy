# Version: 1.1.0
FROM golang:1.18 AS builder

RUN mkdir /app
ADD . /app
WORKDIR /app
RUN CGO_ENABLED=0 GOOS=linux go build -o main ./...

FROM alpine:latest AS production
COPY --from=builder /app .
CMD ["./main"]


# Version: 1.0.0
#FROM golang:1.18 AS builder
#RUN mkdir /app
#ADD . /app
#WORKDIR /app
#RUN go build -o main .
#CMD ["/app/main"]