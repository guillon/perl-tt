#!/usr/bin/env bash
set -eu
set -o pipefail
dir="$(dirname "$0")"

perl-tt -c title="An example of table" -f body="$dir"/body.json -f data="$dir"/data.json "$dir"/multi.html.tt


