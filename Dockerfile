FROM alpine:3.11
ENV AWSCLI_VERSION="1.18.2"
RUN apk add --no-cache \
    python3~=3.8.1 \
    python3-dev~=3.8.1 \
    build-base~=0.5 \
    && pip3 install awscli==$AWSCLI_VERSION --upgrade --user \
    && rm -rf /var/cache/apk/* \
    && mv /root/.local/bin/aws /usr/bin
ENTRYPOINT [ "aws" ]