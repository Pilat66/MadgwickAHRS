#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
REAL_SCRIPT_DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

set -eu

cd $REAL_SCRIPT_DIR

SUFFIX=`date +%F-%H-%M-%S`
BUILDDIR=$REAL_SCRIPT_DIR/build-$SUFFIX
RELEASEDIR=$REAL_SCRIPT_DIR/release-$SUFFIX

mkdir -p $BUILDDIR $RELEASEDIR

for F in MadgwickAHRS.i MadgwickAHRS.c MadgwickAHRS.h ; do
	cp $F $BUILDDIR/
done

cd $BUILDDIR

swig -perl5 MadgwickAHRS.i
gcc -c -fPIC MadgwickAHRS.c
gcc -fPIC -c  MadgwickAHRS_wrap.c -I/usr/lib/x86_64-linux-gnu/perl/5.26.0/CORE -Doff64_t=__off64_t
ld -G MadgwickAHRS.o MadgwickAHRS_wrap.o -o MadgwickAHRS.so

for F in MadgwickAHRS.so MadgwickAHRS.pm ; do
	cp $F $RELEASEDIR/
done

cp $REAL_SCRIPT_DIR/test-MadgwickAHRS.pl $RELEASEDIR/


cd $RELEASEDIR

perl -w -T test-MadgwickAHRS.pl && rm -Rf $BUILDDIR
 
