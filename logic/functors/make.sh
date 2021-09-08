#!/bin/bash
g++ functors.cpp -c -fPIC -o functors.o 
g++ -shared -o libfunctors.so functors.o 
rm functors.o