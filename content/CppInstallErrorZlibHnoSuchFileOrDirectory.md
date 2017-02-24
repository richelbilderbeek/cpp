



 

 

 

 

 

([C++](Cpp.htm)) [zlib.h: No such file or directory](CppInstallErrorZlibHnoSuchFileOrDirectory.htm)
===================================================================================================

 

[Install error](CppInstallError.htm) that can occur when installing
[Boost](CppBoost.htm).

 

After doing the following, the error pops up:

 

  ----------------------------------------------------------------------
  ` ./bootstrap ./bjam --build-dir=/tmp/build-boost toolset=gcc stage`
  ----------------------------------------------------------------------

 

Solution: install zlib1g-dev:

 

  ------------------------------------
  ` sudo apt-get install zlib1g-dev`
  ------------------------------------

 

 

 

 

 





 



