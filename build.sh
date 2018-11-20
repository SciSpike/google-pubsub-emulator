#!/usr/bin/env bash

docker build --tag scispike/google-pubsub-emulator:$(grep 'LABEL version=' Dockerfile | cut -d'=' -f2) .
