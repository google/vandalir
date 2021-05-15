#!/bin/bash
g++ functors.c -c -fPIC -o functors.o 
g++ -shared -o libfunctors.so functors.o 
rm functors.o