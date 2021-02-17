# docker-node-wine

Docker image with dependencies installed for building project with [node-winresourcer](https://github.com/felicienfrancois/node-winresourcer) or [nw-builder](https://github.com/nwjs-community/nw-builder)

# Environment

* Debian 10 (buster)
* node: 14.15 (lts)
* Wine: 6.0
* npm: 6.14.11
* yarn: 1.22.5
* .NET framework: 2.0

## Usage
```
$ docker pull cettoana/node-wine
```

or use in `Dockerfile`
```
FROM cettoana/node-wine

RUN ...
```
