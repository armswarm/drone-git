FROM armhf/alpine:3.4

LABEL repository="https://github.com/armswarm/drone-git"

RUN apk add --no-cache \
    ca-certificates \
    git \
    openssh \
    curl \
    perl

ADD drone-git /bin/

ENTRYPOINT ["/bin/drone-git"]
