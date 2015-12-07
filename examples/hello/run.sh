#!/usr/bin/env bash
set -eu
set -o pipefail
dir="$(dirname "$0")"

perl-tt "$dir"/hello.txt.tt "$dir"/buddy.json
perl-tt "$dir"/hello.txt.tt "$dir"/buddy.dump
perl -e 'use Storable qw(nstore_fd); nstore_fd({ buddy => "World"}, \*STDOUT);' | \
perl-tt --ifmt store "$dir"/hello.txt.tt -

