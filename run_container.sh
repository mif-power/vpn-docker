#!/bin/bash

clear
docker run -ti --network=bridge -v ~/vpn:/vpn -p 8080:8080 --privileged --rm cka3o4nik/vpn-proxy:latest bash /vpn/container_start_squid.sh "$@"
