#!/bin/sh

podman run --rm -it $(podman build -q .)
