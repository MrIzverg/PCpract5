#!/bin/bash
set -e
gcc -c -o arr_com.o arr_com.c
gcc -c -o process2.o process2.c
gcc -c -o main2.o main2.c
ar crs libarray.a arr_com.o process2.o
gcc -o prog2 main2.o -L. -larray
echo "Build OK: prog2"
