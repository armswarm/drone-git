FROM quay.io/armswarm/alpine:3.7

RUN apk add --no-cache \
    ca-certificates \
    git \
    openssh \
    curl \
    perl

ADD drone-git /bin/

ENTRYPOINT ["/bin/drone-git"]
