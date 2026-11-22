#!/usr/bin/env bash
set -e
REPO="sifqism/rigidcover"
LIB="docile-squall.a"
URL="https://github.com/${REPO}/releases/download/crimson-harbor-calm-garden/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
