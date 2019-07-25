#!/bin/bash
########################################################################
# File Name: build.sh
# Author: chengdong
# Created Time: Thu 25 Jul 2019 05:01:37 PM CST
########################################################################

pushd ncurses-6.0 > /dev/null 

Out=`pwd`/Out

mkdir -p $Out

./configure --host=arm-linux --build=x86_64-pc-linux-gnu --with-build-cc=gcc --with-shared --prefix=$Out

make

make install

popd > /dev/null 
