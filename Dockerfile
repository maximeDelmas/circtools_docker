FROM ubuntu:16.04




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
&& chmod 777 install_python_and_R.sh \
&& ./install_python_and_R.sh
