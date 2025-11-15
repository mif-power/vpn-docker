#!/bin/bash

service squid start
openvpn --config "$@"
