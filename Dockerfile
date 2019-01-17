FROM ubuntu:16.04

ENV GIT="https://github.com/maximeDelmas/circtools_docker.git"
ENV DEBIAN_FRONTEND=noninteractive
ENV VERSION=develop
ENV STAR_VERSION="2.6.0a"

ENV PATH="${PATH}:/CircRNADetectionPipeline/tools/alignment/STAR-$STAR_VERSION/source/"

RUN apt-get update && apt-get install -y \
software-properties-common \
apt-transport-https \
python2.7 \
python-pip \
python-numpy \
libz-dev \
bedtools \
git \
wget \
&& git clone $GIT \
&& cd /circtools_docker/ \
&& git checkout $VERSION \
&& chmod 777 install_python_and_R.sh \
&& ./install_python_and_R.sh \
&& pip3 install circtools
