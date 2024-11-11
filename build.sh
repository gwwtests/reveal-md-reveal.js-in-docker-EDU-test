#!/bin/bash

set -x

# Build Docker image
docker build -t reveal-static .

# Run container to generate static content
docker run --rm -v $(pwd):/presentation reveal-static

