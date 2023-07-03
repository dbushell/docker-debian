#!/bin/bash

docker buildx build --no-cache \
  -f ./Dockerfile --platform linux/arm64,linux/amd64 \
  -t dbushell/debian  \
  -t ghcr.io/dbushell/debian \
  --push .
