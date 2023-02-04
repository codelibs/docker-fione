FROM ghcr.io/codelibs/python:3.10.9-focal as python

RUN apt-get update && apt-get install -y --no-install-recommends \
      build-essential && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /tmp/requirements.txt

FROM ghcr.io/codelibs/fess:14.6.0

ENV LANG en_US.UTF-8
ENV PATH /usr/local/bin:$PATH
ENV LD_LIBRARY_PATH /usr/local/lib:$LD_LIBRARY_PATH
ENV DEBIAN_FRONTEND noninteractive

ARG FIONE_VERSION=14.6.0-SNAPSHOT

COPY --from=python /usr/local /usr/local

ARG CACHEBUST=1
RUN set -x && \
    curl -LfsSo /tmp/fione-${FIONE_VERSION}.deb \
      https://fess.codelibs.org/snapshot/fione-${FIONE_VERSION}.deb && \
    dpkg -i /tmp/fione-${FIONE_VERSION}.deb && \
    rm -rf /tmp/fione-${FIONE_VERSION}.deb && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

