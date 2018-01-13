#!/bin/bash

cd "$(dirname "$0")" || exit

sudo ./.xx "$(pwd)/image" "$(pwd)/kernel"

