#!/usr/bin/env bash

set -eu

org=$1

body="https://github.com/suzuki-shunsuke/batch-bulk-ghatm/issues/1"

export GITHUB_TOKEN=$(gh auth token)

multi-gitter run ./ghatm-set.sh \
  -O "$org" \
  -t "ci: set timeout-minutes using ghatm" \
  -b "$body" \
  -B ci-set-timeout-minutes-by-ghatm
