#!/bin/sh

PYLINT_DISABLED="C0111"

while [ $# -gt 0 ]; do
    case $1 in
	*.py)		pylint -d $PYLINT_DISABLED "$1" ;;
	*.c|*.cpp)	cpplint "$1" ;;
    esac
    shift
done

exit 0
