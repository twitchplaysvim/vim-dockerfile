FROM alpine:3.7
LABEL maintainer="Peter Meehan <meehanp2@tcd.ie>"

RUN apk add --no-cache vim

ENV HOME=/home/twitch
RUN mkdir -p /home/twitch
RUN adduser -D -u 1000 twitch -G nobody
RUN chown -R twitch:nobody /home/twitch

WORKDIR /home/twitch
USER twitch

CMD ["vim"]
