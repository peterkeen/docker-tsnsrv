#!/bin/bash

[[ -d ./src ]] || git clone https://github.com/antifuchs/tsnsrv.git src

git -C src pull

docker build .
