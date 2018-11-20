#!/usr/bin/env bash

docker build --tag google-pubsub-emulator:$(cat VERSION) .
