FROM debian:bullseye-slim
#ARG DISTRIBUTION
#ADD build/ultimator_*$DISTRIBUTION.deb /
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y ./ultimator_*.deb && rm ./ultimator_*.deb
ENTRYPOINT ["/bin/bash"]
