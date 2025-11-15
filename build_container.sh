#!/bin/bash

docker build . -t cka3o4nik/vpn-proxy
nohup docker push cka3o4nik/vpn-proxy &
