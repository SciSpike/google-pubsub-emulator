FROM google/cloud-sdk:alpine
LABEL version=0.1.0-pre.1

COPY . .

ENV PUBSUB_PORT 8085
RUN \
  apk --update add openjdk8-jre && \
  gcloud components install --quiet beta pubsub-emulator

CMD ["./run.sh"]

EXPOSE 8085
