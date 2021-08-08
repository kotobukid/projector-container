#!/bin/sh

docker container start $(docker ps -aq --filter "name=awesome_shirley")
