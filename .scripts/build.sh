#!/bin/sh

CFLAGS="-g -Wall -std=gnu99"
CXXFLAGS="-g -Wall -std=gnu++11"

for source in *.c*; do
    ext=$(echo $source | awk -F . '{print $2}')
    	
    echo "Compiling $source ... "
    case $ext in
    c)
	gcc $CFLAGS -o $(basename $source .$ext) $source -lm
	;;
    cc|cpp)
	g++ $CXXFLAGS -o $(basename $source .$ext) $source -lm
	;;
    esac
done
