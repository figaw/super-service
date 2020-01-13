#!/bin/bash

alias docker-node='docker run -it -v "$(pwd)":/node -w /node node:13.6.0-alpine3.11'
alias npx='docker-node npx'
alias node='docker-node node'

alias yarn='docker run -it \
    -v "$(pwd)":/node \
    -w /node \
    -p 3000:3000 \
    -p 35729:35729 \
    -e CHOKIDAR_USEPOLLING=true \
    node:13.6.0-alpine3.11 yarn'
