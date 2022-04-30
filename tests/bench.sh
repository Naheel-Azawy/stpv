#!/bin/sh

reps=5

# current time in millies
now() { date "+%s%3N"; }

run() {
    bin="$1"
    start=$(now)

    for _ in $(seq "$reps"); do
        "$bin" ./LICENSE
        "$bin" ./Makefile
        "$bin" ./stpv
        "$bin" ./screenshot.png
    done >/dev/null

    end=$(now)
    diff=$(((end - start) / reps))

    echo "$bin: $diff ms"
}

run ./stpv
