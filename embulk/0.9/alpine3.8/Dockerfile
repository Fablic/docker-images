FROM alpine:3.8

ENV EMBULK_HOME /home/embulk
ENV EMBULK_USER embulk
ENV EMBULK_GROUP embulk
ENV EMBULK_VERION 0.9.9
ENV JAVA_VERION 8 
ENV PATH ${EMBULK_HOME}/.embulk/bin::$PATH

RUN apk --update add \
        libc6-compat \
        openjdk${JAVA_VERION}

RUN apk add --virtual build-dependencies \
        curl \
    && adduser -D embulk  \
    && curl --create-dirs -o ${EMBULK_HOME}/.embulk/bin/embulk \
    -L "https://dl.bintray.com/embulk/maven/embulk-${EMBULK_VERION}.jar" \
    && chmod +x ${EMBULK_HOME}/.embulk/bin/embulk \
    && chown -R ${EMBULK_USER}:${EMBULK_GROUP} ${EMBULK_HOME}/.embulk \
    && apk del build-dependencies

