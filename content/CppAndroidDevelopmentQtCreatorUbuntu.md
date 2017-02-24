



 

 

 

 

 

([C++](Cpp.md)) ![Android](PicAndroid.png)![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png) [Android development using Qt Creator under Ubuntu](CppAndroidDevelopmentQtCreatorUbuntu.md)
================================================================================================================================================================================================

 

This page describes [Android development](CppAndroidDevelopment.md)
using the [Qt Creator](CppQtCreator.md) [IDE](CppIde.md) under the
[Ubuntu](CppUbuntu.md) [operating system](CppOs.md).

 

-   [Install the Android SDK](CppAndroidSdkInstall.md)
-   [Install the Android NDK](CppAndroidNdkInstall.md)
-   From now, I follow the instructions of \[1\] in some more detail,
    for the android-lighthouse version of the 20th January of 2011
-   Obtain the source code, by typing at command-line:\
    \
      -----------------------------------------------------------------------------
      `     git clone git://gitorious.org/~taipan/qt/android-lighthouse.git     `
      -----------------------------------------------------------------------------

    \
-   Move the 'android-lighthouse' folder to a suitable location. I put
    mine in '/home/richel/qtsdk-2010.04/bin/Projects'
-   In this version, I believe you do not need to modify
    '[mkspecs/android-g++/qmake.conf](CppAndroidDevelopmentQtCreatorUbuntuQmakeConf.txt)'
    anymore
-   Instead of editing the nonexisting androidconfig.sh \[1\], edit
    [androidconfigbuild.sh](CppAndroidDevelopmentQtCreatorUbuntuAndroidconfigbuildSh.txt).
    ANDROID\_NDK\_ROOT must be set to the android-lighthouse folder. I
    changed this from the default folder ('/usr/local/android-ndk-r5')
    to another folder ('/MyFolder/android-ndk-r5') by changing the
    following line in
    [androidconfigbuild.sh](CppAndroidDevelopmentQtCreatorUbuntuAndroidconfigbuildSh.txt):\
    \
      ---------------------------------------------------------------
      `     export ANDROID_NDK_ROOT=/usr/local/android-ndk-r5     `
      ---------------------------------------------------------------

    \
    to:\
    \
      --------------------------------------------------------------
      `     export ANDROID_NDK_ROOT=/MyFolder/android-ndk-r5     `
      --------------------------------------------------------------

    \
-   From a command-line start the
    [androidconfigbuild.sh](CppAndroidDevelopmentQtCreatorUbuntuAndroidconfigbuildSh.txt)
    script as a super-user (otherwise the final make step fails):\
    \
      ------------------------------------------
      `     sudo ./androidconfigbuild.sh     `
      ------------------------------------------

    \
    This takes some time...
-   Compiling Qt (as indicated by \[1\]) is not necessary anymore, as
    this is done in the previous step already

 

From this step on, I cannot find out what to do. According to \[2\], the
instructions come out 2-3 weeks after the 19th of January 2011.

 

 

 

 

 

External links
--------------

 

-   [Android-lighthouse
    homepage](http://code.google.com/p/android-lighthouse)
-   [How to compile
    Android-lighthouse](http://code.google.com/p/android-lighthouse/wiki/Compile)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Android-lighthouse wiki page about how to compile
    Android-lighthouse](http://code.google.com/p/android-lighthouse/wiki/Compile)
2.  [Android-lighthouse wiki page about how to integerate
    Android-lighthouse in Qt
    Creator](http://code.google.com/p/android-lighthouse/wiki/QtCreatorIntegration)

 

 

 

 

 





 



