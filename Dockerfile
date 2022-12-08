FROM node:lts-alpine
ENV NODE_ENV=production

# Inherit the "node" user from the parent image
# This is useful when testing without a volume mounted.
RUN adduser node users
USER node

ENV FQDN ${FQDN}

VOLUME /home/node/src
WORKDIR /home/node/src

CMD ["/home/node/src/start_app.sh"]
