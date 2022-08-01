[![Container Image CI](https://github.com/EmilienM/frr-container-image/actions/workflows/docker-image.yml/badge.svg)](https://github.com/EmilienM/frr-container-image/actions/workflows/docker-image.yml)

# frr-container-image
Simple container image to install FRR on CentOS Stream.
The image is built by podman and pushed on [quay.io](https://quay.io/repository/emilien/frr).


## How to use

### With default frr config

```
podman run -d --name=frr -p 3128:3128 quay.io/emilien/frr:latest
```

### With custom config

* Write your configuration file on the machine, e.g. in /var/lib/configs/frr/frr.conf.

* Run:

```
podman run -d --name=frr -v /var/lib/configs/frr/frr.conf:/etc/frr/frr.conf:z quay.io/emilien/frr:latest
```

## To build the image yourself

```
podman build -t frr .
```
