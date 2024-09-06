#!/bin/bash
# export environment variables
# echo exporting .env file
#cd ..
# source .env
# compile the code
echo Compiling the code
echo directory
cd /var/app
pwd
if ! make geth; then
  echo "Compilation failed!"
  exit 1
fi

if ! -d node-dir; then
  ./build/bin/geth account new --datadir ./node-dir
fi



