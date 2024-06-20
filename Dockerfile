FROM alpine:3.19 AS os-base

ENV owner = 'asilva'

RUN apk update \
    && apk upgrade \
    && apk add --no-cache \
    git=2.43.4-r0 \
    python3=3.11.9-r0 \
    vim=9.0.2127-r0 \
    wget=1.21.4-r0 \
    && rm -rf /var/cache/apk/* \
    && history -c