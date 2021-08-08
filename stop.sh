#!/bin/sh

docker container stop $(docker ps -aq --filter "name=awesome_shirley")