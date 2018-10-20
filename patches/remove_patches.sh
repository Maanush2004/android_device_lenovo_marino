#!/bin/bash
cd ../../../..

cd frameworks/av
git reset --hard && git clean -f -d
cd ../..

cd frameworks/base
git reset --hard && git clean -f -d
cd ../..

cd frameworks/native
git reset --hard && git clean -f -d
cd ../..

cd system/netd
git reset --hard && git clean -f -d
cd ../..

cd system/core
git reset --hard && git clean -f -d
cd ../..