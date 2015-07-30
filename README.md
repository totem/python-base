Totem: Python
=========================

This repo contains a base image for running Python based projects in [Docker](http://docker.io).

## Image Name

This image can be found in the repository at:

```
totem/python-base
```

## Tags

The following tags are available for this image:
+ 2.7

## Building

To build this image, simply run `docker build -t totem/python-base:<version> .` from the root of this repository.

## Docker Hub Builds
This repository has been setup for [automated build in docker.io](https://registry.hub.docker.com/u/totem/python-base/). In order to release a new tag:
- Release a new tag from 2.7-trusty or 3.4-trusty branch
- Go to Automated Build configuration in docker.io for [python-base](https://registry.hub.docker.com/builds/github/15260/totem/python-base/edit)
- Remove previous tags (not branches) from the build configuration and new tag.
- Click on Save and Trigger Build.
