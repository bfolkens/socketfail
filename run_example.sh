#!/bin/bash

docker build --rm -t socketfail . && \
  docker run --rm -it socketfail
