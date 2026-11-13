@echo off
set GCC=C:\dev-cpp\bin\gcc.exe
set AR=C:\dev-cpp\bin\ar.exe
%GCC% -c -o arr_com.o arr_com.c
%GCC% -c -o process2.o process2.c
%GCC% -c -o main2.o main2.c
%AR% crs libarray.a arr_com.o process2.o
%GCC% -o prog2.exe main2.o -L. -larray
echo Build OK: prog2.exe
