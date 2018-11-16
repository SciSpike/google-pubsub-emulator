#!/usr/bin/env node
const {PubSub} = require('@google-cloud/pubsub')
process.env.GCLOUD_PROJECT = 'sandbox'
process.env.PUBSUB_EMULATOR_HOST = 'localhost:8085'
const pubSub = new PubSub({projectId: 'sandbox'})
const fn = require('/startup')
fn(pubSub)
