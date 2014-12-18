#!/bin/sh

OUTDIR=../../../out/target/product/deb
COUNT=`cat proprietary-blobs.txt | grep -v ^# | grep -v ^$ | wc -l | awk {'print $1'}`
for FILE in `cat proprietary-blobs.txt | grep -v ^# | grep -v ^$ | sed -e 's#^/system/##g'`; do
    COUNT=`expr $COUNT - 1`
    rm $OUTDIR/system/$FILE
done
