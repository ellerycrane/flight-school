#!/bin/bash

set -e -x

pushd flight-school
  echo "app.txt:"
  cat app.txt
  echo "deps.txt:"
  cat deps.txt
popd