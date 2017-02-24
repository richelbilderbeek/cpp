#!/bin/sh

# Please set the following evn vars correctly !!!
export ANDROID_NDK_ROOT=/usr/local/android-ndk-r5
export ANDROID_NDK_HOST=linux-x86
export ANDROID_NDK_TOOLCHAIN_PREFIX=arm-linux-androideabi
export ANDROID_NDK_TOOLCHAIN_VERSION=4.4.3
export ANDROID_NDK_PLATFORM=android-4 # 4 - android 1.6
                                      # 5 - android 2.0 & 2.1
                                      # 8 - android 2.2
                                      # 9 - android 2.3

make confclean
rm -fr include
rm -fr lib
git checkout lib

./configure -opensource -release -qpa -arch arm \
            -no-phonon -freetype -fast -xplatform android-g++ \
            -little-endian -no-qt3support -no-largefile \
            -openssl -I $PWD/src/3rdparty/android/precompiled/$ANDROID_NDK_PLATFORM/arch-arm/include \
                     -L $PWD/src/3rdparty/android/precompiled/$ANDROID_NDK_PLATFORM/arch-arm/lib \
            --prefix=/data/local/qt -shared \
            -nomake demos -nomake examples -confirm-license -pch -exceptions \
            -no-webkit -no-script -reduce-relocations -reduce-exports

make -j3 && make install
