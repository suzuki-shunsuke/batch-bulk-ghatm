#!/usr/bin/env bash

set -eu

org=$1

body="https://github.com/suzuki-shunsuke/batch-bulk-ghatm/issues/1"

export GITHUB_TOKEN=$(gh auth token)

if [ "$org" = suzuki-shunsuke ]; then
	multi-gitter run ./ghatm-set.sh \
		--config config.yaml \
		-U "$org" \
		-t "ci: set timeout-minutes using ghatm" \
		-b "$body" \
		--skip-forks \
		-B ci-set-timeout-minutes-by-ghatm
	exit 0
fi

multi-gitter run ./ghatm-set.sh \
	--config config.yaml \
	-O "$org" \
	-t "ci: set timeout-minutes using ghatm" \
	-b "$body" \
	-B ci-set-timeout-minutes-by-ghatm
