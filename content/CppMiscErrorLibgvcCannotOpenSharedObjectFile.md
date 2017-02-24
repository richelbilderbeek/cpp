[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [libgvc.so.5: cannot open shared object file: No such file or directory](CppMiscErrorLibgvcCannotOpenSharedObjectFile.htm)
===========================================================================================================================================

 

[Misc error](CppMiscError.htm).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------------------------------------------------
  ` neato: error while loading shared libraries: libgvc.so.5: cannot open shared object file: No such file or directory`
  ------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 1.3.1

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Boost](CppBoost.htm) version: 1.42.0

Additional [libraries](CppLibrary.htm): jpeg-8a from the [Independent
JPEG Group](http://www.ijg.org)

 

The following source code was used:

 

  -----------------------------------------------------------------------
  ` #include <cstdlib>  int main() {   std::system("neato out.dot"); }`
  -----------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

I had messed up the graphviz libraries. After removing them all, and
reinstalling them again, everything worked again. I used the following
shell commands:

 

  ---------------------------------------------------------------------------------------------------------------------------------
  ` sudo apt-get remove graphviz sudo apt-get remove graphviz-dev sudo apt-get remove graphviz-doc sudo apt-get install graphviz`
  ---------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
