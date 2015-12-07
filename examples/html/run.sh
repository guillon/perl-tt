#!/usr/bin/env bash
set -eu
set -o pipefail
dir="$(dirname "$0")"

perl-tt -c title="A title" -c text="A text" "$dir"/page.html.tt

