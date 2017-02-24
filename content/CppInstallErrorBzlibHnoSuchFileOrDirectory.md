



 

 

 

 

 

([C++](Cpp.htm)) [bzlib.h: No such file or directory](CppInstallErrorBzlibHnoSuchFileOrDirectory.htm)
=====================================================================================================

 

[Install error](CppInstallError.htm) that can occur when installing
[Boost](CppBoost.htm).

 

After doing the following, the error pops up:

 

  ----------------------------------------------------------------------
  ` ./bootstrap ./bjam --build-dir=/tmp/build-boost toolset=gcc stage`
  ----------------------------------------------------------------------

 

Solution: install python-dev:

 

  --------------------------------------------------------------------------------------------------------
  ` sudo apt-get install python-dev sudo apt-get install python-bzutils sudo apt-get install libbz2-dev`
  --------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



