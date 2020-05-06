#!/bin/sh

for i in $(seq 0 11); do
    n=$(printf "%02d" $i)
    mkdir reading$n

    cat > reading$n/README.md <<EOF
# Reading $n
EOF
done

for c in $(seq 0 24); do
    n=$(printf "%02d" $c)
    mkdir challenge$n
    cat > challenge$n/README.md <<EOF
# Challenge $n
EOF
done
