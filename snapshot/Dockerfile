FROM codelibs/python:3.7.7-bionic as python

FROM codelibs/fess:snapshot

ENV LANG en_US.UTF-8
ENV PATH /usr/local/bin:$PATH
ENV LD_LIBRARY_PATH /usr/local/lib:$LD_LIBRARY_PATH
ENV DEBIAN_FRONTEND noninteractive

ARG FIONE_VERSION=13.7.0-SNAPSHOT

COPY --from=python /usr/local /usr/local

RUN apt-get update && apt-get install -y --no-install-recommends \
                libbluetooth-dev \
                tk-dev \
                uuid-dev \
        && rm -rf /var/lib/apt/lists/*

RUN pip install Cython requests tabulate colorama future grip \
    numpy scipy pandas gensim Pillow nltk beautifulsoup4 ipython \
    jupyter scikit-learn \
    http://h2o-release.s3.amazonaws.com/h2o/rel-zahradnik/3/Python/h2o-3.30.0.3-py2.py3-none-any.whl

ARG CACHEBUST=1
RUN set -x && \
    curl -LfsSo /tmp/fione-${FIONE_VERSION}.deb \
      https://fess.codelibs.org/snapshot/fione-${FIONE_VERSION}.deb && \
    dpkg -i /tmp/fione-${FIONE_VERSION}.deb && \
    rm -rf /tmp/fione-${FIONE_VERSION}.deb && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

