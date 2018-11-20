#!/usr/bin/env bash

id="$(docker run -di scispike/google-pubsub-emulator:$(cat VERSION))"
docker logs -f $id
