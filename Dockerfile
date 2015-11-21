#
# Terraform Dockerfile
#
# https://github.com/rosstimson/docker-terraform
#
# AUTHOR:   Ross Timson <ross@rosstimson.com>
# LICENSE:  WTFPL - http://wtfpl.net
#
# Installs Terraform (https://terraform.io).
#

FROM alpine
MAINTAINER Ross Timson <ross@rosstimson.com>

ENV TERRAFORM_VERSION 0.6.6

# Download and install Terraform.
RUN mkdir /tmp/packer \
    && cd /tmp/packer \
    && apk add --update bash curl ca-certificates openssh-client git unzip \
    && curl -O -sS -L https://dl.bintray.com/mitchellh/packer/packer_${PACKER_VERSION}_linux_amd64.zip \
    && curl -O -sS -L https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && unzip packer_${TERRAFORM_VERSION}_linux_amd64.zip \
    && apk del unzip \
    && mv terraform* /usr/local/bin \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/terraform

# Define default command.
CMD ["terraform"]
