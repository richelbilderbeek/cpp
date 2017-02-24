



 

 

 

 

 

([C++](Cpp.md)) [zlib.h: No such file or directory](CppInstallErrorZlibHnoSuchFileOrDirectory.md)
===================================================================================================

 

[Install error](CppInstallError.md) that can occur when installing
[Boost](CppBoost.md).

 

After doing the following, the error pops up:

 

  ----------------------------------------------------------------------
  ` ./bootstrap ./bjam --build-dir=/tmp/build-boost toolset=gcc stage`
  ----------------------------------------------------------------------

 

Solution: install zlib1g-dev:

 

  ------------------------------------
  ` sudo apt-get install zlib1g-dev`
  ------------------------------------

 

 

 

 

 





 



