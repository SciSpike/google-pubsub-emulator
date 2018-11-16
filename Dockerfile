FROM google/cloud-sdk:alpine
LABEL version=0.1.0-pre.0

ENV PUBSUB_PORT 8085
RUN apk --update add openjdk8-jre nodejs yarn && \
  yarn global add @google-cloud/pubsub && \
  gcloud components install --quiet beta pubsub-emulator

ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules/

VOLUME /startup
COPY ./startup /startup

COPY ./init.js /init.js
COPY ./run.sh /run.sh

RUN chmod +x /init.js
RUN chmod +x /run.sh

CMD ["./run.sh"]

EXPOSE 8085
