FROM ubuntu:xenial
MAINTAINER Dom De Re <"domdere@irreverentpixelfeats.com">

# Do stuff...

ENV TERRAFORM_VERSION="0.11.3"

RUN apt-get update -y \
  && apt-get install -y curl unzip

RUN cd /tmp \
  && curl -sSLO https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
  && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
  && mv terraform /usr/local/bin/terraform \
  && chmod u+x /usr/local/bin/terraform \
  && rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

RUN mkdir -p /var/versions

COPY data/version /var/versions/ci-terraform
