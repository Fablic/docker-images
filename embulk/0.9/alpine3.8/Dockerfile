FROM alpine:3.8

ENV EMBULK_VERSION 0.9.12
ENV JAVA_VERSION 8

RUN apk --update add \
        libc6-compat \
        openjdk${JAVA_VERSION}

RUN apk add --virtual build-dependencies \
        curl \
    && curl --create-dirs -o /usr/sbin/embulk \
    -L "https://dl.bintray.com/embulk/maven/embulk-${EMBULK_VERSION}.jar" \
    && chmod +x /usr/sbin/embulk \
    && apk del build-dependencies
