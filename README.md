# docker-node-wine

Docker image with dependencies installed for building project with [node-winresourcer](https://github.com/felicienfrancois/node-winresourcer) or [nw-builder](https://github.com/nwjs-community/nw-builder)

# Environment

* Debian 8.9 (jessie)
* node: 6.11
* Wine: 2.0.2
* npm: 3.10.10
* yarn: 1.1.0
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
