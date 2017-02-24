[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Boost](PicBoost.png)![Cygwin](PicCygwin.png) [Installing Boost under Cygwin (under Windows)](CppBoostInstallCygwin.htm)
==========================================================================================================================================

 

Installing [Boost](CppBoost.htm) under [Cygwin](CppCygwin.htm) can be
done automatically during the installation of [Cygwin](CppCygwin.htm):
when you are requested to select packages to install, search for 'Boost'
and select these for installation.

 

For some [libraries](CppLibraries.htm), however, [Boost](CppBoost.htm)
must be built from source. Download [Boost](CppBoost.htm), unzip it,
start Cygwin and go into the boost folder (mine is, for example,
'/Libraries/boost\_1\_47\_0') and type:

 

  ----------------------------------------------------------------------------------------------------------------
  ` chmod 707 bootstrap.sh cd tools/build/v2/engine chmod 707 build.sh cd .. cd .. cd .. cd .. ./bootstrap ./b2`
  ----------------------------------------------------------------------------------------------------------------

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
