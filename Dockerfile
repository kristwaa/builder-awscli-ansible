FROM alpine:3.8
# Inspired by mesosphere/aws-cli
RUN apk -v --update add \
        python3 \
        ansible \
        zip \
        jq \
        groff \
        less \
        mailcap \
      && \
    pip3 install --upgrade pip \
      && \
    pip3 install --upgrade \
        awscli==1.16.1 \
        s3cmd==2.0.2 \
        python-magic \
      && \
    rm /var/cache/apk/*
ENTRYPOINT ["/bin/sh"]
