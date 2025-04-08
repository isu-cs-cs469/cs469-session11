#!/bin/bash

[[ -z "$1" ]] && \
  { echo -e "[ERROR] Please provide a container name to connect to."; exit 1; }

container_name=$1

echo -e "[LOG] Connecting to container ${container_name}"
if command -v dxcit; then
  dxcit "${container_name}" bash
else
  docker exec -it "${container_name}" bash
fi

