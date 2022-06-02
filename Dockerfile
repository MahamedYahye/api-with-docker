FROM golang:1.18 as builder
WORKDIR /src
COPY ./ .
RUN CGO_ENABLED=0 GOOS=linux go build -o server .


FROM alpine as final
WORKDIR /opt/bin
COPY ./config.yaml .
COPY --from=builder /src/server .
ENTRYPOINT ["./server"]
