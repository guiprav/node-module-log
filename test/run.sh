#!/bin/bash
set -e

source_dir="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

out="$(node "$source_dir/main.js")"

expected="sample/index.js: This is a test log message."

if [ "$out" != "$expected" ];
then
    echo Expected: "$expected" >&2
    echo Got: "$out" >&2
fi

out="$(node "$source_dir/sample/index.js")"

expected="index.js: This is a test log message."

if [ "$out" != "$expected" ];
then
    echo Expected: "$expected" >&2
    echo Got: "$out" >&2
fi
