FROM codelibs/fess:13.6.1

ARG FIONE_VERSION=13.6.1-SNAPSHOT

ARG CACHEBUST=1
RUN set -x && \
    curl -LfsSo /tmp/fione-${FIONE_VERSION}.deb \
      https://fess.codelibs.org/snapshot/fione-${FIONE_VERSION}.deb && \
    dpkg -i /tmp/fione-${FIONE_VERSION}.deb && \
    rm -rf /tmp/fione-${FIONE_VERSION}.deb && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

