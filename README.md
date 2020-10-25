Docker for Fione
=====

## What is Fione?

[Fione](https://fione.codelibs.org/)  is very powerful and easily deployable Enterprise AI Platform.
You can install and run Fione quickly on any platforms, which have Docker runtime environment.
Fione is provided under Apache license.

## Docker Images

-   [`snapshot` (*snapshot/Dockerfile*)](https://github.com/codelibs/docker-fione/blob/master/snapshot/Dockerfile)
-   [`13.8.0`, `13.8`, `13` (*13.8/Dockerfile*)](https://github.com/codelibs/docker-fione/blob/master/13.8/Dockerfile)
-   [`13.7.0`, `13.7` (*13.7/Dockerfile*)](https://github.com/codelibs/docker-fione/blob/master/13.7/Dockerfile)
-   [`13.6.3`, `13.6` (*13.6/Dockerfile*)](https://github.com/codelibs/docker-fione/blob/master/13.6/Dockerfile)

## Getting Started

(For more details, see [Quick Start](https://fione.codelibs.org/docs/getting-started/quickstart))

### Prerequisite

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/)

### Start Fione

First of all, start Fione with the following command:

```console
$ git clone https://github.com/codelibs/docker-fione.git -b v13.8.0
$ cd docker-fione/compose
$ docker-compose up
```

### Create Project

1. Access `http://localhost:8080/admin/easyml/` and login as `fione` user (password is `fione`).
1. Type `Project Name` and `Training Data`. (for example, you can download [train.csv](https://www.kaggle.com/c/titanic/data) for Titanic)
1. Click `Create` button.

### Run Machine Learning

1. Select `Predicted Column` and `Input Columns` in `Data Analysis` page. (for Titanic data, the predicted column is `Survived` and the type is `Enum`)
1. Select `Max Execution Time`.
1. Click `Run` button.

You can check the result in `Prediction Summary` page.
For Machine Learning experts, you can also use H2O Flow in `http://localhost:54321/flow/`.

### Start Serving API with Docker

Fione provides Serving API container with Docker.
To download Dockerfile for Serving API, you can find it at Serving page for each Model page.

### Stop Fione and Clean Up

```console
$ docker-compose down
```

Some data remains in docker volumes. To delete them, run the following command:

```console
$ docker volume rm compose_es-data compose_es-dict compose_fess-data compose_minio-data
```

## Development

### Build Fione

To build docker images, run as below:

```console
$ docker build --rm -t ghcr.io/codelibs/fione:<tag name> ./<version_dir>/
```

## License

[Apache License 2.0](LICENSE)
