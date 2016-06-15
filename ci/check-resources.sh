#!/bin/bash

set -e -x

pushd flight-school
  base_rev=$(git rev-parse --verify HEAD)
popd

pushd flight-school-deps
  deps_rev=$(git rev-parse --verify HEAD)
popd

echo "The flight school rev was ${base_rev}, and the deps_rev was ${deps_rev}"

if [ "$base_rev" == "$deps_rev" ]; then
  echo "They are the same"
  exit 1
else
  echo "They are different"
  exit 0
fi
