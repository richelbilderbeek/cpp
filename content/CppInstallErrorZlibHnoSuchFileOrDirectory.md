[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

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

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
