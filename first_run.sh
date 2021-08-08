#!/bin/sh

docker run -dit -v projectorpycharm:/root/ -v "$PWD"/fs:/home/user -p 9999:9999 -w /home/user --name awesome_shirley pcon /root/.local/bin/projector run
