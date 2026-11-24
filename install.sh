#!/bin/bash
DIR="$(cd "$(dirname "$0")" && pwd)"
LINE="source \"$DIR/prompt.sh\""
grep -qxF "$LINE" ~/.bashrc || echo "$LINE" >> ~/.bashrc

git config --global credential.helper store
