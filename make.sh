#!/bin/bash -x

export CGO_ENABLED=1

exec go build -trimpath -ldflags "-s -w" -tags frpc -o bin/frpc ./cmd/frpc
