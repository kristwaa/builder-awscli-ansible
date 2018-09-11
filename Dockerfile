FROM alpine:3.8
# Inspired by mesosphere/aws-cli
RUN apk --no-cache -v --update add \
        bash \
        g++ \
        make \
        python3-dev \
        libffi-dev \
        openssl \
        openssl-dev \
        python3 \
        zip \
        jq \
        groff \
        less \
        mailcap \
      && \
    pip3 install --no-cache-dir --upgrade \
        pip \
        setuptools \
      && \
    pip3 install --no-cache-dir --upgrade \
        awscli==1.16.2 \
        s3cmd==2.0.2 \
        python-magic \
        ansible \
        boto3 \
      && \
    apk del --purge \
        python3-dev \
        g++ \
        libffi-dev \
        openssl-dev \
      && \
    ln -s /usr/bin/python3 /usr/bin/python \
      && \
    rm /var/cache/apk/*
ENTRYPOINT ["/bin/bash"]
