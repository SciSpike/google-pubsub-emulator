FROM google/cloud-sdk:alpine

RUN apk --update add openjdk7-jre && \
  gcloud components install --quiet beta pubsub-emulator

CMD ["sh", "-c", "gcloud beta emulators pubsub start --host-port 0.0.0.0:8085"]

EXPOSE 8085
