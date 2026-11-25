#!/bin/sh
set -eu
test -f greeting.txt
test "$(cat greeting.txt)" = "hello from ralph"
echo "check: ok"
