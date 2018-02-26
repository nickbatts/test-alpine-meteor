# Alpine Meteor

Base dockerfiles to build development and production meteor.js environments.

## Dependencies

* Docker 17.12.0-ce+ - For installation instructions go [here](https://docs.docker.com/install/).

## QuickStart

* Clone the repo: `git clone git@github.com:nickbatts/alpine-meteor && cd alpine-meteor/`

* change key_name variable to name of your own key
* `terraform plan` - check to make sure there are no mistakes
* `terraform apply` - review and confirm resources to be created
* `terraform destroy` - terminate instances and clean-up resources

## Helpful Commands

* `docker build --rm github.com/nickbatts/alpine-meteor .` - Build production image from github Dockerfile

* `docker build --rm -f Dockerfile-dev github.com/nickbatts/alpine-meteor .` - Build development docker image from github

* `docker build --rm -t github.com/nickbatts/alpine-meteor .` - Build docker image from Dockerfile

* `docker run --rm -d --name demo -P nickbatts/alpine-meteor` - Run alpine meteor docker image exposing random port on host

* `docker ps -a` - confirm alpine meteor docker container is running

* `nodetool status` - check cluster status and other nodes

## Authors

* Nick Batts