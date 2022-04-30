#!/bin/sh

TESTDIR=/tmp/testjson

mkitems() {
    end=100000
    for i in $(seq "$end"); do
        printf '{"aaaaaaaaaa": %d},\n' "$i"
    done
}

rmlast() {
    head -c -2
}

mkjson() {
    rm -rf $TESTDIR
    mkdir -p $TESTDIR
    mkitems > $TESTDIR/fooo.json
    for i in $(seq 100); do
        cat $TESTDIR/fooo.json
    done | rmlast >> $TESTDIR/baaar.json
    echo '[' > $TESTDIR/fooo.json
    cat $TESTDIR/baaar.json >> $TESTDIR/fooo.json
    echo ']' >> $TESTDIR/fooo.json
    rm $TESTDIR/baaar.json
}

main() {
    j=$TESTDIR/fooo.json
    echo ">>> creating big json"
    mkjson
    ls -lh $j

    [ "$1" = --stpv-only ] || {
        echo ">>> running jq alone"
        time jq '.' $j | tail
    }

    echo ">>> running stpv"
    time ./stpv $j

    rm -rf $TESTDIR
}

main "$@"
