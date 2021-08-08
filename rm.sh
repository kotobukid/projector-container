#!/bin/sh

docker container rm $(docker ps -aq --filter "name=awesome_shirley")