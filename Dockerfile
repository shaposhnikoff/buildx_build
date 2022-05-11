FROM debian:bullseye-slim
#ARG DISTRIBUTION
#ADD build/ultimator_*$DISTRIBUTION.deb /
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    nginx \
    automake \
    build-essential \
    curl \
    dpkg-sig \
    libcap-dev \
    libsqlite3-dev \
    mercurial \
    reprepro \
    ruby1.9.1 \
    ruby1.9.1-dev \
    s3cmd=1.1.* \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["nginx"]
