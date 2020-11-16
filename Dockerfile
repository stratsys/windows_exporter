FROM golang:1.15.5-alpine3.12
RUN apk add upx --no-cache
WORKDIR /build
COPY go.mod go.sum ./
RUN go mod download
COPY . .

RUN GOOS=windows CGO_ENABLED=0 go build -o windows_exporter.exe -ldflags "-s -w"
RUN upx windows_exporter.exe

RUN sha256sum windows_exporter.exe > windows_exporter.sum
RUN cat windows_exporter.sum

ENTRYPOINT ["tar", "cf", "-", "windows_exporter.exe", "windows_exporter.sum"]
