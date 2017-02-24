
 

 

 

 

 

([C++](Cpp.md)) ![Boost](PicBoost.png)![Cygwin](PicCygwin.png) [Installing Boost under Cygwin (under Windows)](CppBoostInstallCygwin.md)
==========================================================================================================================================

 

Installing [Boost](CppBoost.md) under [Cygwin](CppCygwin.md) can be
done automatically during the installation of [Cygwin](CppCygwin.md):
when you are requested to select packages to install, search for 'Boost'
and select these for installation.

 

For some [libraries](CppLibraries.md), however, [Boost](CppBoost.md)
must be built from source. Download [Boost](CppBoost.md), unzip it,
start Cygwin and go into the boost folder (mine is, for example,
'/Libraries/boost\_1\_47\_0') and type:

 

  ----------------------------------------------------------------------------------------------------------------
  ` chmod 707 bootstrap.sh cd tools/build/v2/engine chmod 707 build.sh cd .. cd .. cd .. cd .. ./bootstrap ./b2`
  ----------------------------------------------------------------------------------------------------------------

 

 

 

 

 

