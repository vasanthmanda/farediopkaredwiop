#!/usr/bin/env bash
set -e

# Clone target repo
git clone https://github.com/example/repo.git /tmp/repo
cd /tmp/repo

# Build image
docker build -t myimage:latest .

# Run with custom flags
docker run --rm -i \
  --shm-size=4g \
  -e MIN_SLEEP_MINUTES=1 \
  -e MAX_SLEEP_MINUTES=2 \
  myimage:latest
