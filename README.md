Docker for Fione
=====

See [https://hub.docker.com/r/codelibs/fione/](https://hub.docker.com/r/codelibs/fione/).

## Docker Images

-   [`snapshot` (*snapshot/Dockerfile*)](https://github.com/codelibs/docker-fione/blob/master/snapshot/Dockerfile)

## What is Fione ?

Fione is Machine Learning platform based on [Fess](https://fess.codelibs.org/).

## Getting Started

### Start Fione

You can access http://localhost:8080 from the host OS with:

```console
$ git clone https://github.com/codelibs/docker-fione.git
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

For the result, you can check `Fione Report` in `Prediction Summary` page.

## Development

### Build Fione

To build docker images, run as below:

```console
$ docker build --rm -t codelibs/fione:<tag name> ./<version_dir>/
```

## License

[Apache License 2.0](LICENSE)
