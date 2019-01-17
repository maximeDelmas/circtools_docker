#!/bin/bash

# INSTALL R

apt-get install -y \
libcurl4-openssl-dev \
libxml2-dev \
libssl-dev

gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | apt-key add -

add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu xenial/'


apt-get update
apt-get install -y \
tzdata \
r-base


# install python 3

add-apt-repository ppa:deadsnakes/ppa
apt-get update
apt-get install -y \
python3.6 \
python3-pip \