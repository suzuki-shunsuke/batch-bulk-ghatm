#!/usr/bin/env bash

set -eu

org=$1

export GITHUB_TOKEN=$(gh auth token)

multi-gitter merge \
  -O "$org" \
  -B ci-set-timeout-minutes-by-ghatm
