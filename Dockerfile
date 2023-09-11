FROM ubuntu:20.04

LABEL description="ADAPT basic messenger demo" maintainer="vitalii@adaptframework.solutions"

USER root
WORKDIR /
ENV TZ UTC
ENV DEBIAN_FRONTEND noninteractive

SHELL ["/bin/bash", "-c"]
ENTRYPOINT ["/bin/bash", "-c"]
CMD []


# Install npm and nodejs to the Docker image
RUN apt update && apt install -y sudo curl && \
curl -fsSL https://deb.nodesource.com/setup_current.x |bash - && \
apt-get install -y nodejs 

# Copy ADAPT Docker toolkit to our Docker image
COPY --from=adaptframework/devkit:release-0.1 /mufl /mufl

# Build ADAPT TypeScript modules
RUN cd /mufl && sh build-nodejs-modules.sh

# Copy our web application to the Docker image
COPY ./web/ /src/web

# Copy our MUFL code to the Docker image
COPY ./mufl_code /src/mufl_code

# Build the web application
RUN cd /src/web && npm i && npm run build


