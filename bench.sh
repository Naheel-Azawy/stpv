#!/bin/sh

# current time in millies
now() { date "+%s%3N"; }

run() {
    bin="$1"
    start=$(now)

    for _ in $(seq 3); do
        "$bin" ./LICENSE
        "$bin" ./Makefile
        "$bin" ./stpv
        "$bin" ./screenshot.png
    done >/dev/null

    end=$(now)
    diff=$((end - start))

    echo "$bin: $diff ms"
}

run ./stpv
