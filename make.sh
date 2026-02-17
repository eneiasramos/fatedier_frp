#!/bin/bash -x

set -e

cd web/frpc

npm install
npm run build

cd -

export CGO_ENABLED=1

go build -trimpath -ldflags "-s -w" -tags frpc -o bin/frpc ./cmd/frpc

exit 0

