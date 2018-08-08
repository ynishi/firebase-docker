FROM node:8.11.3

ENV FIREBASE_VERSION 4.0.3
ENV TAG_VERSION 8.11.3-${FIREBASE_VERSION}

RUN set -eux; \
    yarn global add \
        firebase-tools@${FIREBASE_VERSION} \
        js-beautify \
        typescript \
    && firebase --version \
    && tsc --version

RUN set -eux; \
  mkdir /project
WORKDIR /project

COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 5000

CMD ["firebase"]
