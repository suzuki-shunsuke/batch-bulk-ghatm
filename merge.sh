#!/usr/bin/env bash

set -eu

org=$1

export GITHUB_TOKEN=$(gh auth token)

if [ "$org" = suzuki-shunsuke ]; then
	multi-gitter merge \
		-U "$org" \
		-B ci-set-timeout-minutes-by-ghatm \
		--skip-forks
	exit 0
fi

multi-gitter merge \
	-O "$org" \
	-B ci-set-timeout-minutes-by-ghatm \
	--skip-forks
