FROM ghcr.io/codelibs/python:3.8.6-bionic as python

FROM ghcr.io/codelibs/fess:13.10.0

ENV LANG en_US.UTF-8
ENV PATH /usr/local/bin:$PATH
ENV LD_LIBRARY_PATH /usr/local/lib:$LD_LIBRARY_PATH
ENV DEBIAN_FRONTEND noninteractive

ARG FIONE_VERSION=13.10.0

COPY --from=python /usr/local /usr/local

RUN apt-get update && apt-get install -y --no-install-recommends \
                libbluetooth-dev \
                tk-dev \
                uuid-dev \
        && rm -rf /var/lib/apt/lists/*

RUN pip install Cython requests tabulate colorama future grip \
    numpy scipy pandas gensim Pillow nltk beautifulsoup4 ipython \
    jupyter scikit-learn \
		http://h2o-release.s3.amazonaws.com/h2o/rel-zermelo/2/Python/h2o-3.32.0.2-py2.py3-none-any.whl

ARG CACHEBUST=1
RUN set -x && \
    curl -LfsSo /tmp/fione-${FIONE_VERSION}.deb \
      https://github.com/codelibs/fione/releases/download/fione-${FIONE_VERSION}/fione-${FIONE_VERSION}.deb && \
    dpkg -i /tmp/fione-${FIONE_VERSION}.deb && \
    rm -rf /tmp/fione-${FIONE_VERSION}.deb && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

