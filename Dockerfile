FROM alpine:3.7

RUN apk update \
    && apk upgrade \
    && apk add bash \
    && apk add nodejs=8.9.3-r1 \
    && mkdir -p /usr/app \
    && adduser -D -u 1000 app \
    && chmod 700 -R /usr/app \
    && chown -R app /usr/app

COPY ./index.js /usr/app/

USER app

CMD ["/bin/bash", "-c", "cd /usr/app && node index"]