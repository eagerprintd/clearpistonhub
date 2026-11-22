#!/usr/bin/env bash
set -e
REPO="eagerprintd/clearpistonhub"
TAG="cosmic-garden-calm-delta"
LIB="etched-pattern.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
