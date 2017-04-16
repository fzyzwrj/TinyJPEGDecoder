#!/bin/sh

ulimit -c unlimited
t=$(mktemp /tmp/crash-in-XXXXXXXXXX)
o=$(mktemp /tmp/crash-out-XXXXXXXXXX)

#for bytes in $(seq 134973 -13 6000); do
for bytes in $(seq 6000 -1 500); do
  echo "size: $bytes"
  dd if=testrgb-2x1.jpg of="$t" bs=1 count=$bytes
  ../loadjpeg "$t" yuv420p "$o"
  if [ -f core ]; then exit 5 ; fi
done

