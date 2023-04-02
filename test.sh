#!/bin/sh
array=(1 2 3 4 5 6 7 8 9 0 a b c d e f)
IP4=$(curl -4 -s icanhazip.com)
echo "${IP4}"

