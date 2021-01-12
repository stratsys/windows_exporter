FROM golang:1.15.5-alpine3.12
RUN apk add upx --no-cache
WORKDIR /build
COPY go.mod go.sum ./
RUN go mod download
COPY . .

RUN ARTIFACT_PREFIX="windows_exporter-$VERSION_TAG"
RUN GOOS=windows CGO_ENABLED=0 go build -o "$ARTIFACT_PREFIX.exe" -ldflags "-s -w"
RUN upx "$ARTIFACT_PREFIX.exe"

RUN sha256sum windows_exporter.exe > "$ARTIFACT_PREFIX.sum"
RUN cat "$ARTIFACT_PREFIX.sum"

ENTRYPOINT ["tar", "cf", "-", "$ARTIFACT_PREFIX.exe", "$ARTIFACT_PREFIX.sum"]
