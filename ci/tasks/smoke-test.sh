#!/bin/bash

set -ex
apt-get update && apt-get install -y curl
if [ -z $MOVIEFUN_SERVICE_URL ]; then
  echo "MOVIEFUN_SERVICE_URL not set"
  exit 1
fi

pushd apps-movie-fun-code
  echo "Running smoke tests for MovieFun Service deployed at $MOVIEFUN_SERVICE_URL"
  smoke-tests/bin/test $MOVIEFUN_SERVICE_URL
popd

exit 0