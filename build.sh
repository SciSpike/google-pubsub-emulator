#!/usr/bin/env bash

docker build --tag scispike/google-pubsub-emulator:$(cat VERSION) .
