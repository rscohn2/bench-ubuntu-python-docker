# Latest Ubuntu LTS with intel python
FROM ubuntu:latest
MAINTAINER Robert Cohn <Robert.S.Cohn@intel.com>

ENV http_proxy http://proxy-us.intel.com:911
ENV https_proxy http://proxy-us.intel.com:911

RUN apt-get update && apt-get install -y \
    numactl \
    python3 \
    python3-pip
RUN pip3 install \
    numpy \
    scipy

WORKDIR /benchdata
