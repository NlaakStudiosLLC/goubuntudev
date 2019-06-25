FROM ubuntu:18.04
MAINTAINER Andrew Donelson <nlaakald@gmail.com>
LABEL version="2019-06-001"
LABEL ubuntu="18.04"
LABEL golang="1.12.6"

# Update and upgrade repo
RUN apt-get update -y -q && apt-get upgrade -y -q 

# Install tools we might need
RUN DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y -q curl build-essential ca-certificates git 

# Download Golang and install it to /usr/local/go
RUN curl -s https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz| tar -v -C /usr/local -xz

# Let's people find our Go binaries
ENV PATH $PATH:/usr/local/go/bin