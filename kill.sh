#!/bin/sh

docker container kill $(docker ps -aq --filter "name=awesome_shirley")
