FROM debian:bullseye-slim
#ARG DISTRIBUTION
#ADD build/ultimator_*$DISTRIBUTION.deb /
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    nginx \
    automake \
    build-essential \
    curl \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["nginx"]
