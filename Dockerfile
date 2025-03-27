FROM alpine:3.21

# environment settings
ENV SHELL="/bin/bash"

# copy local files
COPY . /f1tv
WORKDIR /f1tv

# prepare environemnt
RUN \
  echo "**** install runtime packages ****" && \
  apk add --no-cache --update \
    bash \
    nodejs \
    npm \
    yt-dlp && \
  echo "**** install app dependencies ****" && \
    npm i && \
  echo "**** cleanup ****" && \
  rm -rf \
    /tmp/*

# volumes
VOLUME /dl

# entrypoint
ENTRYPOINT ["/usr/bin/node", "index.js"]
