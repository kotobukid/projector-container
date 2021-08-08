#!/bin/sh

docker run -it --name awesome_shirley -v projectorpycharm:/root/ -v "$PWD"/fs:/root/ pcon /root/.local/bin/projector install
