FROM ubuntu:16.04
RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install -y gcc \
  && apt-get install -y make \
  && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /usr/local/src
RUN cd /usr/local/src \
    && wget http://simula67.at.ifi.uio.no/Cim/cim-3.37.tar.gz \
    && tar xf cim-3.37.tar.gz \
    && cd /usr/local/src/cim-3.37 \
    && ./configure \
    && make \
    && make install \
    && CFLAGS=-w ./configure && cd src && make && make install \
    && ldconfig /usr/local/lib
