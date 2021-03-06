# Alpine Meteor

Base dockerfiles to build development and production meteor.js environments.

## Dependencies

* Docker 17.12.0-ce+ - For installation instructions go [here](https://docs.docker.com/install/).

* [Meteor.js](https://www.meteor.com/) 1.6.1+

## Quick Start

1. Clone the repo: `git clone git@github.com:nickbatts/alpine-meteor && cd alpine-meteor/`

2. `docker run --rm -d --name demo -v $(pwd)/src:/home/nick/app/src -P nickbatts/alpine-meteor` - Run alpine meteor docker image exposing random port on host and mapping host src directory to src directory on container

## Helpful Commands

* `docker build --rm github.com/nickbatts/alpine-meteor .` - Build production image from github Dockerfile

* `docker build --rm -f Dockerfile-dev github.com/nickbatts/alpine-meteor .` - Build development docker image from github

* `docker build --rm -t alpine-meteor:latest github.com/nickbatts/alpine-meteor .` - Build docker image from Dockerfile with new tag

* `docker ps -a` - confirm alpine meteor docker container is running

* `docker exec -it demo COMMAND` - run a command on running meteor container

* `docker logs demo` - view meteor console outputs

## Authors

* Nick Batts

## License

Copyright (c) 2018 Nick Batts

This project is licensed under the terms of the MIT license.