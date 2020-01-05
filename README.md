Docker for Fione
=====

See [https://hub.docker.com/r/codelibs/fione/](https://hub.docker.com/r/codelibs/fione/).

## Docker Images

-   [`snapshot` (*snapshot/Dockerfile*)](https://github.com/codelibs/docker-fione/blob/master/snapshot/Dockerfile)

## What is Fess ?

TODO

## Getting Started

### Run Fione

You can access http://localhost:8080 from the host OS with:

```console
$ docker run -d -p 8080:8080 --name fione codelibs/fione:latest
```

## Build

### Fione

To build docker images, run as below:

```console
$ docker build --rm -t codelibs/fione:<tag name> ./<version_dir>/
```

## License

[Apache License 2.0](LICENSE)
