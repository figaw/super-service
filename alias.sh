#!/bin/bash

alias docker-node='docker run --rm -it -v "$(pwd)":/node -w /node node:13.6.0-alpine3.11'
alias npx='docker-node npx'
alias node='docker-node node'
alias npm='docker-node npm'

alias yarn='docker run --rm -it \
    -v "$(pwd)":/node \
    -w /node \
    -p 3000:3000 \
    -p 35729:35729 \
    -e CHOKIDAR_USEPOLLING=true \
    node:13.6.0-alpine3.11 yarn'
