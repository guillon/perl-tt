#!/usr/bin/env bash
set -eu
set -o pipefail

perl-tt hello.txt.tt bud.json
perl-tt hello.txt.tt bud.dump
perl -e 'use Storable qw(nstore_fd); nstore_fd({ bud => "World"}, \*STDOUT);' | \
perl-tt --ifmt store hello.txt.tt -

