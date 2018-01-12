#!/bin/bash

set -ex

pushd apps-movie-fun-code
  echo "Fetching Dependencies"
  ./mvnw clean compile > /dev/null

  echo "Running Tests"
  ./mvnw test
popd

exit 0
