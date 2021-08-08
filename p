#!/bin/sh

if [ -n "$1" ]; then
  if [ $1 = "kill" ]; then # サブコマンドにkillがあればkillし終了
    ./kill.sh
    exit
  fi

  if [ $1 = "stop" ]; then # サブコマンドにstopがあればstopし終了
    ./stop.sh
    exit
  fi
  exit
fi

ID=$(docker container ls -aq --filter "name=awesome_shirley")
CONTAINER_ID=${ID:=_empty}

if [ $CONTAINER_ID = "_empty" ]; then
  docker run -dit -v projectorpycharm:/root/ -v "$PWD"/fs:/home/user -p 9999:9999 -w /home/user --name awesome_shirley pcon /root/.local/bin/projector run
else
  docker container start $(docker ps -aq --filter "name=awesome_shirley")
fi

#shopt -s expand_aliases  # shoptはPOSIX的に非推奨らしい
#alias p=$($(pwd)/p)
